//
//  IMI-CQ5dDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQ5dDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQ5dDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q5dT;
@property (weak, nonatomic) IBOutlet UIPickerView *q5dA;
@property (nonatomic, retain) NSArray *q5dAArray;
@property (weak, nonatomic) IBOutlet UILabel *q5eT;
@property (weak, nonatomic) IBOutlet UIPickerView *q5eA;
@property (nonatomic, retain) NSArray *q5eAArray;
@property (weak, nonatomic) IBOutlet UILabel *q5fT;
@property (weak, nonatomic) IBOutlet UISwitch *q5fA;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;

@end

@implementation IMI_CQ5dDataViewController

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
    self.q5dT.text=NSLocalizedString(@"q5dT", nil);
    self.q5dAArray = [NSArray arrayWithObjects: NSLocalizedString(@"q5dA0", nil),NSLocalizedString(@"q5dA1", nil),NSLocalizedString(@"q5dA2", nil),nil];
    self.q5eT.text=NSLocalizedString(@"q5eT", nil);
    self.q5eAArray = [NSArray arrayWithObjects: NSLocalizedString(@"q5dA0", nil),NSLocalizedString(@"q5dA1", nil),NSLocalizedString(@"q5dA2", nil),nil];
    self.q5fT.text=NSLocalizedString(@"q5fT", nil);
    self.SkiptonextpageLabel.text=NSLocalizedString(@"SkiptonextpageLabel", nil);
    self.q5dT.hidden=self.q5dA.hidden=self.q5eT.hidden=self.q5eA.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question5aPedestrianoverpassunderpassbridgeIsOn"] boolValue];
    self.q5fT.hidden=self.q5fA.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question5aPedestriansignalactivatedIsOn"] boolValue];
    self.SkiptonextpageLabel.hidden=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question5aPedestrianoverpassunderpassbridgeIsOn"] boolValue]||[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question5aPedestriansignalactivatedIsOn"] boolValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.q5dA) {
        return [self.q5dAArray objectAtIndex:row];
    }
    return [self.q5eAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.q5dA) {
        return [self.q5dAArray count];
    }
	return [self.q5eAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.q5dA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.q5eA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.q5fA isOn]], nil];
}

@end
