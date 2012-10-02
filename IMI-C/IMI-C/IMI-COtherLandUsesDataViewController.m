//
//  IMI-COtherLandUsesDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-COtherLandUsesDataViewController.h"

@interface IMI_COtherLandUsesDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *OtherLandUsesL;
@property (weak, nonatomic) IBOutlet UILabel *question15L;
@property (weak, nonatomic) IBOutlet UILabel *BarsnightclubsL;
@property (weak, nonatomic) IBOutlet UIPickerView *BarsnightclubsA;
@property (weak, nonatomic) IBOutlet UILabel *AdultusesL;
@property (weak, nonatomic) IBOutlet UIPickerView *AdultusesA;
@property (weak, nonatomic) IBOutlet UILabel *CheckcashingstoresL;
@property (weak, nonatomic) IBOutlet UIPickerView *CheckcashingstoresA;
@property (weak, nonatomic) IBOutlet UILabel *question15OtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *question15OtherA;
@property (weak, nonatomic) IBOutlet UILabel *question16L;
@property (weak, nonatomic) IBOutlet UILabel *question16RestaurantsL;
@property (weak, nonatomic) IBOutlet UIPickerView *question16RestaurantsA;
@property (weak, nonatomic) IBOutlet UILabel *CoffeeshopsL;
@property (weak, nonatomic) IBOutlet UIPickerView *CoffeeshopsA;
@property (weak, nonatomic) IBOutlet UILabel *TeahousesL;
@property (weak, nonatomic) IBOutlet UIPickerView *TeahousesA;
@property (weak, nonatomic) IBOutlet UILabel *LibrariesbookstoresL;
@property (weak, nonatomic) IBOutlet UIPickerView *LibrariesbookstoresA;
@property (nonatomic, retain) NSArray *otherLandUsesAArray;
@end

@implementation IMI_COtherLandUsesDataViewController

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
    self.OtherLandUsesL.text=NSLocalizedString(@"OtherLandUsesL", nil);
    self.question15L.text=NSLocalizedString(@"question15L", nil);
    self.BarsnightclubsL.text=NSLocalizedString(@"BarsnightclubsL", nil);
    self.AdultusesL.text=NSLocalizedString(@"AdultusesL", nil);
    self.CheckcashingstoresL.text=NSLocalizedString(@"CheckcashingstoresL", nil);
    self.question15OtherL.text=NSLocalizedString(@"question15OtherL", nil);
    self.question16L.text=NSLocalizedString(@"question16L", nil);
    self.question16RestaurantsL.text=NSLocalizedString(@"question16RestaurantsL", nil);
    self.CoffeeshopsL.text=NSLocalizedString(@"CoffeeshopsL", nil);
    self.TeahousesL.text=NSLocalizedString(@"TeahousesL", nil);
    self.LibrariesbookstoresL.text=NSLocalizedString(@"LibrariesbookstoresL", nil);
    self.otherLandUsesAArray = [NSArray arrayWithObjects: NSLocalizedString(@"otherLandUsesA0", nil),NSLocalizedString(@"otherLandUsesA1", nil),NSLocalizedString(@"otherLandUsesA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.otherLandUsesAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.otherLandUsesAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.BarsnightclubsA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.AdultusesA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.CheckcashingstoresA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.question15OtherA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.question16RestaurantsA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.CoffeeshopsA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.TeahousesA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.LibrariesbookstoresA selectedRowInComponent:0]], nil];
}
@end
