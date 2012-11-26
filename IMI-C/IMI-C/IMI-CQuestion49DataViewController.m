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
@property (weak, nonatomic) IBOutlet UIPickerView *question49AngledAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question49OtherLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question49OtherAnswer;
- (IBAction)question49OtherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *question49OtherText;
@property (nonatomic, retain) NSArray *question49AngledAnswerArray;
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
    self.question49AngledAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question49AngledAnswer0", nil),NSLocalizedString(@"question49AngledAnswer1", nil),NSLocalizedString(@"question49AngledAnswer2", nil),nil];
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question49AngledAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question49AngledAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question49SpeedAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49RumbleAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49CurbAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49TrafficAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49MedianAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question49AngledAnswer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question49OtherAnswer isOn]],self.question49OtherText.text, nil];
}

- (IBAction)question49OtherAction:(UISwitch *)sender {
    self.question49OtherText.hidden=![sender isOn];
}
@end
