//
//  IMI-CSteepnessDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CSteepnessDataViewController.h"

@interface IMI_CSteepnessDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *SteepnessLabel;
@property (weak, nonatomic) IBOutlet UILabel *question24Label;
@property (weak, nonatomic) IBOutlet UILabel *question24FlatorgentleLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question24FlatorgentleAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question24ModerateLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question24ModerateAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question24SteepLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question24SteepAnswer;
@property (weak, nonatomic) IBOutlet UILabel *SidewalkAmenitiesLabel;
@property (weak, nonatomic) IBOutlet UILabel *question25Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question25Answer;
@property (nonatomic, retain) NSArray *question25AnswerArray;
@end

@implementation IMI_CSteepnessDataViewController

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
    self.SteepnessLabel.text=NSLocalizedString(@"SteepnessLabel", nil);
    self.question24Label.text=NSLocalizedString(@"question24Label", nil);
    self.question24FlatorgentleLabel.text=NSLocalizedString(@"question24FlatorgentleLabel", nil);
    self.question24ModerateLabel.text=NSLocalizedString(@"question24ModerateLabel", nil);
    self.question24SteepLabel.text=NSLocalizedString(@"question24SteepLabel", nil);
    self.SidewalkAmenitiesLabel.text=NSLocalizedString(@"SidewalkAmenitiesLabel", nil);
    self.question25Label.text=NSLocalizedString(@"question25Label", nil);
    self.question25AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question20_21Answer0", nil),NSLocalizedString(@"question20_21Answer1", nil),NSLocalizedString(@"question20_21Answer2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question25AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question25AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question24FlatorgentleAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question24ModerateAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question24SteepAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question25Answer selectedRowInComponent:0]], nil];
}
@end
