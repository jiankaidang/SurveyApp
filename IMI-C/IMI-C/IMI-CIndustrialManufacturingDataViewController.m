//
//  IMI-CIndustrialManufacturingDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CIndustrialManufacturingDataViewController.h"

@interface IMI_CIndustrialManufacturingDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *IndustrialManufacturingL;
@property (weak, nonatomic) IBOutlet UILabel *LightindustrialL;
@property (weak, nonatomic) IBOutlet UISwitch *LightindustrialA;
@property (weak, nonatomic) IBOutlet UILabel *MediumorheavyindustrialL;
@property (weak, nonatomic) IBOutlet UISwitch *MediumorheavyindustrialA;
@property (weak, nonatomic) IBOutlet UILabel *IndustrialotherL;
@property (weak, nonatomic) IBOutlet UISwitch *IndustrialotherA;
@property (weak, nonatomic) IBOutlet UILabel *Question13aOtherL;
@property (weak, nonatomic) IBOutlet UILabel *HarbormarinaL;
@property (weak, nonatomic) IBOutlet UISwitch *HarbormarinaA;
@property (weak, nonatomic) IBOutlet UILabel *UndevelopedlandL;
@property (weak, nonatomic) IBOutlet UISwitch *UndevelopedlandA;
@property (weak, nonatomic) IBOutlet UILabel *AgriculturallandranchfarmingL;
@property (weak, nonatomic) IBOutlet UISwitch *AgriculturallandranchfarmingA;
@property (weak, nonatomic) IBOutlet UILabel *NaturefeatureL;
@property (weak, nonatomic) IBOutlet UISwitch *NaturefeatureA;
@property (weak, nonatomic) IBOutlet UILabel *SiteunderconstructionL;
@property (weak, nonatomic) IBOutlet UISwitch *SiteunderconstructionA;
@property (weak, nonatomic) IBOutlet UILabel *Question13aOtherOtherL;
@property (weak, nonatomic) IBOutlet UISwitch *Question13aOtherOtherA;
@property (weak, nonatomic) IBOutlet UILabel *questioin13bL;
@property (weak, nonatomic) IBOutlet UIPickerView *questioin13bA;
@property (nonatomic, retain) NSArray *questioin13bAArray;
@property (weak, nonatomic) IBOutlet UILabel *question13cL;
@property (weak, nonatomic) IBOutlet UILabel *question13cRetailL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cRetailA;
@property (weak, nonatomic) IBOutlet UILabel *question13cOfficeL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cOfficeA;
@property (weak, nonatomic) IBOutlet UILabel *question13cRestaurantsLL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cRestaurantsLA;
@property (weak, nonatomic) IBOutlet UILabel *question13cOtherL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cOtherA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dL;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dOfficeL;
@property (weak, nonatomic) IBOutlet UISwitch *quetion13dOfficeA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dCommercialL;
@property (weak, nonatomic) IBOutlet UISwitch *quetion13dCommercialA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dResidentialL;
@property (weak, nonatomic) IBOutlet UISwitch *quetion13dResidentialA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dOtherL;
@property (weak, nonatomic) IBOutlet UISwitch *quetion13dOtherA;

@end

@implementation IMI_CIndustrialManufacturingDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.IndustrialManufacturingL.text=NSLocalizedString(@"IndustrialManufacturingL", nil);
    self.LightindustrialL.text=NSLocalizedString(@"LightindustrialL", nil);
    self.MediumorheavyindustrialL.text=NSLocalizedString(@"MediumorheavyindustrialL", nil);
    self.IndustrialotherL.text=NSLocalizedString(@"IndustrialotherL", nil);
    self.Question13aOtherL.text=NSLocalizedString(@"Question13aOtherL", nil);
    self.HarbormarinaL.text=NSLocalizedString(@"HarbormarinaL", nil);
    self.UndevelopedlandL.text=NSLocalizedString(@"UndevelopedlandL", nil);
    self.AgriculturallandranchfarmingL.text=NSLocalizedString(@"AgriculturallandranchfarmingL", nil);
    self.NaturefeatureL.text=NSLocalizedString(@"NaturefeatureL", nil);
    self.SiteunderconstructionL.text=NSLocalizedString(@"SiteunderconstructionL", nil);
    self.Question13aOtherOtherL.text=NSLocalizedString(@"Question13aOtherOtherL", nil);
    self.questioin13bL.text=NSLocalizedString(@"questioin13bL", nil);
    self.questioin13bAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question13bAnswer8", nil),NSLocalizedString(@"question13bAnswer0", nil),NSLocalizedString(@"question13bAnswer1", nil),nil];
    self.question13cL.text=NSLocalizedString(@"question13cL", nil);
    self.question13cRetailL.text=NSLocalizedString(@"question13cRetailL", nil);
    self.question13cOfficeL.text=NSLocalizedString(@"question13cOfficeL", nil);
    self.question13cRestaurantsLL.text=NSLocalizedString(@"question13cRestaurantsLL", nil);
    self.question13cOtherL.text=NSLocalizedString(@"question13cOtherL", nil);
    self.quetion13dL.text=NSLocalizedString(@"quetion13dL", nil);
    self.quetion13dOfficeL.text=NSLocalizedString(@"quetion13dOfficeL", nil);
    self.quetion13dCommercialL.text=NSLocalizedString(@"quetion13dCommercialL", nil);
    self.quetion13dResidentialL.text=NSLocalizedString(@"quetion13dResidentialL", nil);
    self.quetion13dOtherL.text=NSLocalizedString(@"quetion13dOtherL", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.questioin13bAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.questioin13bAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    BOOL isYes=row==2;
    self.question13cL.hidden=!isYes;
    self.question13cRetailL.hidden=!isYes;
    self.question13cRetailA.hidden=!isYes;
    self.question13cOfficeL.hidden=!isYes;
    self.question13cOfficeA.hidden=!isYes;
    self.question13cRestaurantsLL.hidden=!isYes;
    self.question13cRestaurantsLA.hidden=!isYes;
    self.question13cOtherL.hidden=!isYes;
    self.question13cOtherA.hidden=!isYes;
    self.quetion13dL.hidden=!isYes;
    self.quetion13dOfficeL.hidden=!isYes;
    self.quetion13dOfficeA.hidden=!isYes;
    self.quetion13dCommercialL.hidden=!isYes;
    self.quetion13dCommercialA.hidden=!isYes;
    self.quetion13dResidentialL.hidden=!isYes;
    self.quetion13dResidentialA.hidden=!isYes;
    self.quetion13dOtherL.hidden=!isYes;
    self.quetion13dOtherA.hidden=!isYes;
}
-(void)setImi_cResults{
    NSInteger question13bAnswerValue;
    NSInteger selectedRow=[self.questioin13bA selectedRowInComponent:0];
    if (!selectedRow) {
        question13bAnswerValue=8;
    } else {
        question13bAnswerValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.LightindustrialA isOn]],[NSString stringWithFormat:@"%d",[self.MediumorheavyindustrialA isOn]],[NSString stringWithFormat:@"%d",[self.IndustrialotherA isOn]],[NSString stringWithFormat:@"%d",[self.HarbormarinaA isOn]],[NSString stringWithFormat:@"%d",[self.UndevelopedlandA isOn]],[NSString stringWithFormat:@"%d",[self.AgriculturallandranchfarmingA isOn]],[NSString stringWithFormat:@"%d",[self.NaturefeatureA isOn]],[NSString stringWithFormat:@"%d",[self.SiteunderconstructionA isOn]],[NSString stringWithFormat:@"%d",[self.Question13aOtherOtherA isOn]],[NSString stringWithFormat:@"%d",question13bAnswerValue],[NSString stringWithFormat:@"%d",[self.question13cRetailA isOn]],[NSString stringWithFormat:@"%d",[self.question13cOfficeA isOn]],[NSString stringWithFormat:@"%d",[self.question13cRestaurantsLA isOn]],[NSString stringWithFormat:@"%d",[self.question13cOtherA isOn]],[NSString stringWithFormat:@"%d",[self.quetion13dOfficeA isOn]],[NSString stringWithFormat:@"%d",[self.quetion13dCommercialA isOn]],[NSString stringWithFormat:@"%d",[self.quetion13dResidentialA isOn]],[NSString stringWithFormat:@"%d",[self.quetion13dOtherA isOn]], nil];
}

@end
