//
//  IMI_CModelController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/18/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI_CModelController.h"

#import "IMI_CDataViewController.h"
#import "CHCSVWriter.h"
#import "NetworkManager.h"
/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */

@interface IMI_CModelController()
@property (readonly, strong, nonatomic) NSArray *pageData;
@end

@implementation IMI_CModelController

- (id)init
{
    self = [super init];
    if (self) {
        // Create the data model.
        _pageData = [NSArray arrayWithObjects:@"Setting",@"Question1_9",@"StreetCrossing",@"Question2c",@"Question4a",@"Question4c",@"Question5b",@"Q5d",@"Q6a",@"Q8",@"Question10_12",@"Q11",@"Residentialbyheight",@"Residentialbytype",@"School",@"Commercial",@"Office",@"Question13b",@"Question13d",@"Question13e",@"Question14a",@"Questioin14b",@"Question15",@"Question16",@"Conveniencestore",@"Community",@"Sidewalks",@"Question17c",@"Question17e",@"Question17f",@"Question17g",@"Electricalpoles",@"Question17gOther",@"Bicycles",@"Questioin21c",@"Question20",@"MidBlockCrossing",@"Steepness",@"Question26",@"StreetTrees",@"Buildings",@"Streetscape",@"Windows",@"Qustion36",@"Question38b",@"Parking",@"Question39a",@"Maintenance",@"Question43",@"Freeways",@"Question49",@"Question50a",@"Architecture",@"Question53",@"Question55",@"Question58",@"Question1_9",@"StreetCrossing",@"Question2c",@"Question4a",@"Question4c",@"Question5b",@"Q5d",@"Q6a",@"Q8",@"Comments",@"Submit", nil ];
        self.pageDataViewController=[NSMutableArray arrayWithCapacity:[_pageData count]];
        self.gloableData=[NSMutableDictionary dictionary];
    }
    return self;
}

- (IMI_CDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard
{   
    // Return the data view controller for the given index.
    IMI_CDataViewController *dataViewController;
    if (([self.pageDataViewController count] == 0) || (index >= [self.pageDataViewController count])) {
        // Create a new view controller and pass suitable data.
        NSString * imc_cPageData = [self.pageData objectAtIndex:index];
        dataViewController = [storyboard instantiateViewControllerWithIdentifier:[[@"IMI_C" stringByAppendingString:imc_cPageData] stringByAppendingString:@"DataViewController"]];
        dataViewController.dataObject = imc_cPageData;
        dataViewController.imi_cModelController = self;
        dataViewController.index=index;
        [self.pageDataViewController setObject:dataViewController atIndexedSubscript:index];
        return dataViewController;
    }
    dataViewController=[self.pageDataViewController objectAtIndex:index];
    [dataViewController viewDidLoad];
    return dataViewController;
}

- (NSUInteger)indexOfViewController:(IMI_CDataViewController *)viewController
{   
     // Return the index of the given data view controller.
     // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
    return viewController.index;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(IMI_CDataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(IMI_CDataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageData count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

-(void)submitResults {
    NSMutableArray *controllers = self.pageDataViewController;
    NSMutableArray *results = [NSMutableArray arrayWithCapacity:[controllers count]];
    for (IMI_CDataViewController *controller in controllers) {
        [results addObjectsFromArray:controller.dataArray];
    }
    
    [[[CHCSVWriter alloc] initWithCSVFile:[[NetworkManager sharedInstance] resultsFilePath] atomic:NO] writeLineWithFields:results];
}
+(void)initResultsFile{
    /*
    [[NSFileManager defaultManager] removeItemAtPath:[[[NetworkManager sharedInstance] resultsDir] path] error:nil];
    return;
     */
    NetworkManager * manager=[NetworkManager sharedInstance];
    if ([manager isResultsDirExisted]) {
        return;
    }
    int capacity=230;
    NSMutableArray * questionNumbers=[NSMutableArray arrayWithCapacity:capacity];
    for (int i = 1; i < capacity; i++) {
        [questionNumbers addObject:[NSString stringWithFormat:@"%u", i]];
    }
    NSMutableArray * titleRow=(NSMutableArray *)[NSMutableArray arrayWithObjects:@"Date", @"Time",@"ID",@"Setting",@"Observer",@"SgmntID",@"Block1",@"Intersc1",@"Monument",@"Crosswalk",@"WhitLine",@"ColrLine",@"ZebraStp",@"DiffRdSf", @"CmOther",@"CmOtherTxt",@"CrssCnvt",@"MarkSfCn",@"Curbcuts",@"CurbCLoc",@"CurbCond",@"TraffSig", @"StopSign",@"YieldSgn",@"PedActSgn",@"PedAuto",@"PedCntDwn",@"PedSound",@"PedCrsSgn",@"PdUnOvPs", @"TrfPdSfConv",@"PdPassConv",@"PdPassMaint",@"CrssTime",@"CarsLeft",@"question6",@"Safecros",@"Convcros",@"PedIsle", @"Banners",@"Streetdir",@"Pedstreet",@"Alley",@"Narrow",@"Stairs",@"VehLanes",@"RghtLane", @"LeftLane",@"LowRise",@"MidRise",@"MHghRise",@"HghR1318",@"HghR1924",@"HghR25-40",@"SuperHR", @"SFHdtach",@"SFHatach",@"Townhome",@"CondoApt",@"Vernacular",@"DormUni",@"InfSet",@"ResOther", @"ResOtherTxt",@"Kinder",@"PrimSchl",@"ScndSchl",@"HighSchl",@"College",@"SchOther",@"SchOtherTxt", @"GymFitns",@"MovieTh",@"RecOher",@"RecOherTxt",@"ComCtLib",@"MusTheat",@"PubCivic",@"CivOther", @"CivOtherTxt",@"Religion",@"Medicine",@"InsOther",@"InsOtherTxt",@"SoftGood",@"HardGood",@"OtherretailstoresA",@"Restaurant", @"FastFood",@"SmlGrcer",@"MLGrcer",@"Financl",@"HotelHos",@"Cardeal",@"GasServ",@"BikeRetl", @"CommOthr",@"CommOthrTxt",@"Offices",@"Service",@"OfSerOth",@"OfSerOthTxt",@"LghtInd",@"MdHvInd", @"IndsOthr",@"IndsOthrTxt",@"HarMarin",@"UndevLnd",@"AgricLnd",@"Nature",@"UndrCnstr",@"Other", @"OtherTxt",@"VerMixUs",@"MURetail",@"MUGOff",@"MUGRest",@"MUGServ",@"MUGOther",@"MUGOtherTxt", @"MUURetail",@"MUUOff",@"MUUComm",@"MUUService",@"MUURes",@"MUUOther",@"MUUOtherTxt",@"PredomLU",@"BigBox",@"ShopMall", @"StrpMall",@"Row of shops",@"DrivThru",@"VacntComm",@"ParkPlay",@"Exercise",@"PlaySprt",@"PlazaSq",@"PubGardn", @"Beach",@"PbSpOthr",@"PbSpOthrTxt",@"AccessPb",@"PubSSze",@"BarsClub",@"AdultUse",@"ChckCash", @"Liquor stores",@"Restarnt",@"CoffShop",@"TeaHse",@"LibBkStr",@"CornerSt",@"ArtGllry", @"WineBar",@"FarnerMk",@"InfSell", @"Gated",@"GateEntr",@"GateAccs",@"Sidewalk",@"SdWkComp",@"question18c",@"SdWkCndt",@"SdWkPave",@"Arcades", @"Awnings",@"SWPtcOth",@"SWPtcOthTxt",@"BuffPkCr",@"BuffLndScp",@"BuffBoll",@"BuffStTr",@"BuffFence", @"BuffOthr",@"BuffOthrTxt",@"BarrPkCr",@"BarrBike",@"BarrStVnd",@"BarrTree",@"ElectricalpolesA",@"OutdoordiningA",@"BarrOthr",@"BarrOthrTxt", @"RaisedMk",@"question19A",@"OthrSdWk",@"BikeLane",@"BkLnType",@"BBrrPkCr",@"BBrrBike",@"BBrrBus",@"BBrrVeh", @"BBrrPeds",@"BBrrOthr",@"BBrrOthrTxt",@"BikePkd",@"BikeRack",@"BkPrkC",@"BkPrkUC",@"BkPrkOthr", @"BkPrkOthrTxt",@"Bikeshre",@"Midblock",@"MbWtLn",@"MbClLn",@"MbZebra",@"MbDfRdSf",@"MbOther", @"MbOtherTxt",@"MbConv",@"FlatSlpe",@"ModrSlpe",@"StpSlpe",@"Dining",@"Benches",@"BusStops", @"Ledges",@"HeatLamp",@"PubRestr",@"StrtTree",@"TreeSize",@"SdWkShde",@"NoBuildings",@"BldgStry1",@"BldgStry23", @"BldgStry48",@"BldgStry812",@"BldgStry1339",@"BldgStry40",@"PrmntBldgH",@"AbndBldg",@"StreetScpe",@"AvgStbck",@"WindBars",@"BlnkWall",@"Transp",@"Podium",@"Question38b",@"Question38c",@"SurfPkng",@"SizePark",@"PrctPkng", @"ParkStrc",@"Prdusprk",@"Driveway",@"MntBuild",@"MntLndScp",@"Grafitti",@"Litter",@"Dumpster", @"Lighting",@"LghtAdeq",@"LghtAttr",@"Freeway",@"SpLmtPst",@"SpeedLim",@"SpdBump",@"RumbleSp", @"CurbBulb",@"TrafCrcl",@"Median",@"TrCmPark",@"TCOthr",@"TCOthrTxt",@"CulDeSac",@"PedAcsPt", @"Attrtve",@"Intrstng",@"StVendor",@"PubArt",@"BillBrd",@"Safepple",@"NumPPl", @"Dogs",@"DmntSmll",@"Pollution",@"Block2",@"Intersc2",@"Monumnt2",@"Crosswalk2",@"WhitLine2",@"ColrLine2",@"ZebraStp2",@"DiffRdSf2", @"CmOther2",@"CmOtherTxt2",@"CrssCnvt2",@"MarkSfCn2",@"Curbcuts2",@"CurbCLoc2",@"CurbCond2",@"TraffSig2", @"StopSign2",@"YieldSgn2",@"PedActSgn2",@"PedAuto2",@"PedCntDwn2",@"PedSound2",@"PedCrsSgn2",@"PdUnOvPs2", @"TrfPdSfConv2",@"PdPassConv2",@"PdPassMaint2",@"CrssTime2",@"CarsLeft2",@"question6",@"Safecros2",@"Convcros2",@"PedIsle2",@"Comments", nil];
    [[[CHCSVWriter alloc] initWithCSVFile:[manager resultsFilePath] atomic:NO] writeLineWithFields:titleRow];
}

@end
