//
//  IMI-CQuestion13eDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion13eDataViewController.h"

@interface IMI_CQuestion13eDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question13eL;
@property (weak, nonatomic) IBOutlet UIPickerView *question13eA;
@property (nonatomic, retain) NSArray *question13eAArray;
@property (weak, nonatomic) IBOutlet UILabel *question13fL;
@property (weak, nonatomic) IBOutlet UILabel *BigboxshopsL;
@property (weak, nonatomic) IBOutlet UISwitch *BigboxshopsA;
@property (weak, nonatomic) IBOutlet UILabel *ShoppingmallL;
@property (weak, nonatomic) IBOutlet UISwitch *ShoppingmallA;
@property (weak, nonatomic) IBOutlet UILabel *StripmallrowofshopsL;
@property (weak, nonatomic) IBOutlet UISwitch *StripmallrowofshopsA;
@property (weak, nonatomic) IBOutlet UILabel *DrivethruL;
@property (weak, nonatomic) IBOutlet UISwitch *DrivethruA;
@property (weak, nonatomic) IBOutlet UILabel *question13gL;
@property (weak, nonatomic) IBOutlet UIPickerView *question13gA;
@property (nonatomic, retain) NSArray *question13gAArray;
@end

@implementation IMI_CQuestion13eDataViewController

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
    self.question13eL.text=NSLocalizedString(@"question13eL", nil);
    self.question13eAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question13eA1", nil),NSLocalizedString(@"question13eA2", nil),NSLocalizedString(@"question13eA3", nil),NSLocalizedString(@"question13eA4", nil),NSLocalizedString(@"question13eA8", nil),nil];
    self.question13fL.text=NSLocalizedString(@"question13fL", nil);
    self.BigboxshopsL.text=NSLocalizedString(@"BigboxshopsL", nil);
    self.ShoppingmallL.text=NSLocalizedString(@"ShoppingmallL", nil);
    self.StripmallrowofshopsL.text=NSLocalizedString(@"StripmallrowofshopsL", nil);
    self.DrivethruL.text=NSLocalizedString(@"DrivethruL", nil);
    self.question13gL.text=NSLocalizedString(@"question13gL", nil);
    self.question13gAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question13gA0", nil),NSLocalizedString(@"question13gA1", nil),NSLocalizedString(@"question13gA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question13eA) {
        return [self.question13eAArray objectAtIndex:row];
    }
    return [self.question13gAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question13eA) {
        return [self.question13eAArray count];
    }
	return [self.question13gAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question13eAValue;
    NSInteger selectedRow=[self.question13eA selectedRowInComponent:0];
    if (selectedRow==4) {
        question13eAValue=8;
    } else {
        question13eAValue=selectedRow+1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question13eAValue],[NSString stringWithFormat:@"%d",[self.BigboxshopsA isOn]],[NSString stringWithFormat:@"%d",[self.ShoppingmallA isOn]],[NSString stringWithFormat:@"%d",[self.StripmallrowofshopsA isOn]],[NSString stringWithFormat:@"%d",[self.DrivethruA isOn]],[NSString stringWithFormat:@"%d",[self.question13gA selectedRowInComponent:0]], nil];
}

@end
