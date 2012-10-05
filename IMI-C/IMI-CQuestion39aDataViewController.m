//
//  IMI-CQuestion39aDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion39aDataViewController.h"

@interface IMI_CQuestion39aDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question39aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question39aAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question39bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question39bAnswer;
@property (weak, nonatomic) IBOutlet UILabel *DrivewaysLabel;
@property (weak, nonatomic) IBOutlet UILabel *question40Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question40Answer;
@property (nonatomic, retain) NSArray *question39bAnswerArray;
- (IBAction)question39aAction:(id)sender;
@property (nonatomic, retain) NSArray *question40AnswerArray;
@end

@implementation IMI_CQuestion39aDataViewController

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
    self.question39aLabel.text=NSLocalizedString(@"question39aLabel", nil);
    self.question39bLabel.text=NSLocalizedString(@"question39bLabel", nil);
    self.question39bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question39bAnswer0", nil),NSLocalizedString(@"question39bAnswer1", nil),NSLocalizedString(@"question39bAnswer2", nil),nil];
    self.DrivewaysLabel.text=NSLocalizedString(@"DrivewaysLabel", nil);
    self.question40Label.text=NSLocalizedString(@"question40Label", nil);
    self.question40AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question39bAnswer) {
        return [self.question39bAnswerArray objectAtIndex:row];
    }
    return [self.question40AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question39bAnswer) {
        return [self.question39bAnswerArray count];
    }
	return [self.question40AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    BOOL question39aAnswerValue=[self.question39aAnswer isOn];
    NSInteger question39bAnswerValue=8;
    if (question39aAnswerValue) {
        question39bAnswerValue=[self.question39bAnswer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question39aAnswerValue],[NSString stringWithFormat:@"%d", question39bAnswerValue],[NSString stringWithFormat:@"%d", [self.question40Answer selectedRowInComponent:0]], nil];
}

- (IBAction)question39aAction:(id)sender {
    BOOL isHidden=![(UISwitch*)sender isOn];
    self.question39bLabel.hidden=isHidden;
    self.question39bAnswer.hidden=isHidden;
}
@end
