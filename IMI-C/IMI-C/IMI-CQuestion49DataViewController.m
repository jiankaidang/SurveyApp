//
//  IMI-CQuestion49DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion49DataViewController.h"

@interface IMI_CQuestion49DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question49Label;
@property (weak, nonatomic) IBOutlet UILabel *question49SpeedLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49SpeedAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49RumbleLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49RumbleAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49CurbLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49CurbAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49TrafficLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49TrafficAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49MedianLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49MedianAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49AngledLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49AngledAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49OtherLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49OtherAnswer;
- (IBAction)question49OtherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *question49OtherText;
@property (weak, nonatomic) IBOutlet UILabel *question50aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question50aAnswer;
- (IBAction)question50aAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UILabel *question50bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question50bAnswer;
@property (nonatomic, retain) NSArray *question50bAnswerArray;
@end

@implementation IMI_CQuestion49DataViewController

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
    self.question49Label.text=NSLocalizedString(@"question49Label", nil);
    self.question49SpeedLabel.text=NSLocalizedString(@"question49SpeedLabel", nil);
    self.question49RumbleLabel.text=NSLocalizedString(@"question49RumbleLabel", nil);
    self.question49CurbLabel.text=NSLocalizedString(@"question49CurbLabel", nil);
    self.question49TrafficLabel.text=NSLocalizedString(@"question49TrafficLabel", nil);
    self.question49MedianLabel.text=NSLocalizedString(@"question49MedianLabel", nil);
    self.question49AngledLabel.text=NSLocalizedString(@"question49AngledLabel", nil);
    self.question49OtherLabel.text=NSLocalizedString(@"question49OtherLabel", nil);
    self.question49OtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.question50aLabel.text=NSLocalizedString(@"question50aLabel", nil);
    self.question50bLabel.text=NSLocalizedString(@"question50bLabel", nil);
    self.question50bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question50bAnswer7", nil),NSLocalizedString(@"question50bAnswer0", nil),NSLocalizedString(@"question50bAnswer1", nil),nil];
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question50bAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question50bAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    BOOL question50aAnswerValue=[self.question50aAnswer isOn];
    NSInteger question50bAnswerValue=8;
    if (question50aAnswerValue) {
        NSInteger question50bAnswerSelectedRow=[self.question50bAnswer selectedRowInComponent:0];
        question50bAnswerValue=7;
        if (question50bAnswerSelectedRow) {
            question50bAnswerValue=question50bAnswerSelectedRow-1;
        }
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question49SpeedAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49RumbleAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49CurbAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49TrafficAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49MedianAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49AngledAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49OtherAnswer isOn]],self.question49OtherText.text,[NSString stringWithFormat:@"%d", question50aAnswerValue],[NSString stringWithFormat:@"%d", question50bAnswerValue], nil];
}

- (IBAction)question49OtherAction:(UISwitch *)sender {
    self.question49OtherText.hidden=![sender isOn];
}
- (IBAction)question50aAction:(UISwitch *)sender {
    self.question50bLabel.hidden=self.question50bAnswer.hidden=![sender isOn];
}
@end
