//
//  IMI-CQuestion17fDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion17fDataViewController.h"

@interface IMI_CQuestion17fDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question17fL;
@property (weak, nonatomic) IBOutlet UILabel *ParkedcarsL;
@property (weak, nonatomic) IBOutlet UIPickerView *ParkedcarsA;
@property (weak, nonatomic) IBOutlet UILabel *LandscapingL;
@property (weak, nonatomic) IBOutlet UIPickerView *LandscapingA;
@property (weak, nonatomic) IBOutlet UILabel *BollardsL;
@property (weak, nonatomic) IBOutlet UIPickerView *BollardsA;
@property (weak, nonatomic) IBOutlet UILabel *StreettreesL;
@property (weak, nonatomic) IBOutlet UIPickerView *StreettreesA;
@property (weak, nonatomic) IBOutlet UILabel *FenceorguardrailL;
@property (weak, nonatomic) IBOutlet UIPickerView *FenceorguardrailA;
@property (weak, nonatomic) IBOutlet UILabel *question17fOtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17fOtherA;
@property (nonatomic, retain) NSArray *question17fAArray;
@end

@implementation IMI_CQuestion17fDataViewController

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
    self.question17fL.text=NSLocalizedString(@"question17fL", nil);
    self.ParkedcarsL.text=NSLocalizedString(@"ParkedcarsL", nil);
    self.LandscapingL.text=NSLocalizedString(@"LandscapingL", nil);
    self.BollardsL.text=NSLocalizedString(@"BollardsL", nil);
    self.StreettreesL.text=NSLocalizedString(@"StreettreesL", nil);
    self.FenceorguardrailL.text=NSLocalizedString(@"FenceorguardrailL", nil);
    self.question17fOtherL.text=NSLocalizedString(@"question17fOtherL", nil);
    self.question17fAArray = [NSArray arrayWithObjects: NSLocalizedString(@"yesnoNA8", nil),NSLocalizedString(@"yesnoNA0", nil),NSLocalizedString(@"yesnoNA1", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question17fAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question17fAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self getPickerValue:self.ParkedcarsA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.LandscapingA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.BollardsA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.StreettreesA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.FenceorguardrailA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.question17fOtherA]], nil];
}
-(NSInteger)getPickerValue:(UIPickerView *)pickerView{
    NSInteger row=[pickerView selectedRowInComponent:0];
    if (!row) {
        return 8;
    } else {
        return row-1;
    }
}
@end
