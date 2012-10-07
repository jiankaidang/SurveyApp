//
//  IMI-CQuestion4cDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion4cDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion4cDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q4cTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *q4cAnswer;
@property (nonatomic, retain) NSArray *q4cAnswerArray;
@property (weak, nonatomic) IBOutlet UILabel *q5aTitle;
@property (weak, nonatomic) IBOutlet UILabel *trafficLabel;
@property (weak, nonatomic) IBOutlet UISwitch *trafficA;
@property (weak, nonatomic) IBOutlet UILabel *stopLabel;
@property (weak, nonatomic) IBOutlet UISwitch *stopA;
@property (weak, nonatomic) IBOutlet UILabel *yieldLabel;
@property (weak, nonatomic) IBOutlet UISwitch *yieldA;
@property (weak, nonatomic) IBOutlet UILabel *activatedLabel;
@property (weak, nonatomic) IBOutlet UISwitch *activatedA;
@property (weak, nonatomic) IBOutlet UILabel *automatedL;
@property (weak, nonatomic) IBOutlet UISwitch *automatedA;
@property (weak, nonatomic) IBOutlet UILabel *countdownL;
@property (weak, nonatomic) IBOutlet UISwitch *countdownA;
@property (weak, nonatomic) IBOutlet UILabel *soundL;
@property (weak, nonatomic) IBOutlet UISwitch *soundA;
@property (weak, nonatomic) IBOutlet UILabel *crossingL;
@property (weak, nonatomic) IBOutlet UISwitch *crossingA;
@property (weak, nonatomic) IBOutlet UILabel *overpassL;
@property (weak, nonatomic) IBOutlet UISwitch *overpassA;
@property (weak, nonatomic) IBOutlet UILabel *q5bT;
@property (weak, nonatomic) IBOutlet UISwitch *q5bA;
@property (weak, nonatomic) IBOutlet UILabel *q5cL;
@property (weak, nonatomic) IBOutlet UISwitch *q5cA;
- (IBAction)TrafficsignalAction:(UISwitch *)sender;
- (IBAction)StopsignAction:(UISwitch *)sender;
- (IBAction)YieldsignAction:(UISwitch *)sender;
- (IBAction)Pedestriansignalactivated:(UISwitch *)sender;
- (IBAction)PedestriansignalautomatedAction:(UISwitch *)sender;
- (IBAction)PedestriansignalwithcountdownAction:(UISwitch *)sender;
- (IBAction)PedestriansignalwithsoundAction:(UISwitch *)sender;
- (IBAction)PedestriancrossingsignAction:(UISwitch *)sender;
- (IBAction)PedestrianoverpassunderpassbridgeAction:(UISwitch *)sender;

@end

@implementation IMI_CQuestion4cDataViewController

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
    self.q4cTitle.text=NSLocalizedString(@"q4cTitle", nil);
    self.q4cAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question4cAnswer8", nil),NSLocalizedString(@"question4cAnswer0", nil),NSLocalizedString(@"question4cAnswer1", nil),nil];
    self.q5aTitle.text=NSLocalizedString(@"q5aTitle", nil);
    self.trafficLabel.text=NSLocalizedString(@"trafficLabel", nil);
    self.stopLabel.text=NSLocalizedString(@"stopLabel", nil);
    self.yieldLabel.text=NSLocalizedString(@"yieldLabel", nil);
    self.activatedLabel.text=NSLocalizedString(@"activatedLabel", nil);
    self.automatedL.text=NSLocalizedString(@"automatedL", nil);
    self.countdownL.text=NSLocalizedString(@"countdownL", nil);
    self.soundL.text=NSLocalizedString(@"soundL", nil);
    self.crossingL.text=NSLocalizedString(@"crossingL", nil);
    self.overpassL.text=NSLocalizedString(@"overpassL", nil);
    self.q5bT.text=NSLocalizedString(@"q5bT", nil);
    self.q5cL.text=NSLocalizedString(@"q5cL", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.q4cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.q4cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question4cAnswerValue;
    NSInteger selectedRow=[self.q4cAnswer selectedRowInComponent:0];
    if (!selectedRow) {
        question4cAnswerValue=8;
    } else {
        question4cAnswerValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question4cAnswerValue],[NSString stringWithFormat:@"%d",[self.trafficA isOn]],[NSString stringWithFormat:@"%d",[self.stopA isOn]],[NSString stringWithFormat:@"%d",[self.yieldA isOn]],[NSString stringWithFormat:@"%d",[self.activatedA isOn]],[NSString stringWithFormat:@"%d",[self.automatedA isOn]],[NSString stringWithFormat:@"%d",[self.countdownA isOn]],[NSString stringWithFormat:@"%d",[self.soundA isOn]],[NSString stringWithFormat:@"%d",[self.crossingA isOn]],[NSString stringWithFormat:@"%d",[self.overpassA isOn]],[NSString stringWithFormat:@"%d",[self.q5bA isOn]],[NSString stringWithFormat:@"%d",[self.q5cA isOn]], nil];
}

- (IBAction)TrafficsignalAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:[sender isOn]] forKeyedSubscript:@"question5aTrafficsignalIsOn"];
}

- (IBAction)StopsignAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
}

- (IBAction)YieldsignAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
}

- (IBAction)Pedestriansignalactivated:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
    [self isPedestriansignalOn];
}

- (IBAction)PedestriansignalautomatedAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
    [self isPedestriansignalOn];
}

- (IBAction)PedestriansignalwithcountdownAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
    [self isPedestriansignalOn];
}

- (IBAction)PedestriansignalwithsoundAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
    [self isPedestriansignalOn];
}

- (IBAction)PedestriancrossingsignAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
}

- (IBAction)PedestrianoverpassunderpassbridgeAction:(UISwitch *)sender {
    [self isQuestion5bHidden:sender];
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:[self.overpassA isOn]] forKeyedSubscript:@"question5aPedestrianoverpassunderpassbridgeIsOn"];
}
-(void)isQuestion5bHidden:(UISwitch *)sender{
    self.q5bT.hidden=self.q5bA.hidden= [self.trafficA isOn]||[self.stopA isOn]||[self.yieldA isOn]||[self.activatedA isOn]||[self.automatedA isOn]||[self.countdownA isOn]||[self.soundA isOn]||[self.crossingA isOn]||[self.overpassA isOn];
}
-(void)isPedestriansignalOn{
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:[self.activatedA isOn]||[self.automatedA isOn]||[self.countdownA isOn]||[self.soundA isOn]] forKeyedSubscript:@"question5aPedestriansignalactivatedIsOn"];
}
@end
