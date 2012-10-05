//
//  IMI-CQuestion15DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion15DataViewController.h"

@interface IMI_CQuestion15DataViewController ()
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
@property (nonatomic, retain) NSArray *otherLandUsesAArray;

@end

@implementation IMI_CQuestion15DataViewController

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
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.BarsnightclubsA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.AdultusesA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.CheckcashingstoresA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.question15OtherA selectedRowInComponent:0]], nil];
}

@end
