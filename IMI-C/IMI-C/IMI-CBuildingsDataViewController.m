//
//  IMI-CBuildingsDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CBuildingsDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CBuildingsDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *BuildingsLabel;
@property (weak, nonatomic) IBOutlet UILabel *question29aLabel;
@property (weak, nonatomic) IBOutlet UILabel *question29aNAnobuildingsLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question29aNAnobuildingsAnswer;
- (IBAction)question29aNAnobuildingsAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UILabel *question29a1storyLable;
@property (weak, nonatomic) IBOutlet UISwitch *question29a1storyAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question29a23storiesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question29a23storiesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question29a48storiesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question29a48storiesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question29a812storiesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question29a812storiesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question29a1339storiesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question29a1339storiesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question29a40storiesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question29a40storiesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question29bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question29bAnswe;
@property (weak, nonatomic) IBOutlet UILabel *question30Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question30Answer;
@property (nonatomic, retain) NSArray *question29aAnswerArray;
@property (nonatomic, retain) NSArray *question29bAnswerArray;
@property (nonatomic, retain) NSArray *question30AnswerArray;
@end

@implementation IMI_CBuildingsDataViewController

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
    self.BuildingsLabel.text=NSLocalizedString(@"BuildingsLabel", nil);
    self.question29aLabel.text=NSLocalizedString(@"question29aLabel", nil);
    self.question29aNAnobuildingsLabel.text=NSLocalizedString(@"question29aAnswer8", nil);
    self.question29a1storyLable.text=NSLocalizedString(@"question29aAnswer1", nil);
    self.question29a23storiesLabel.text=NSLocalizedString(@"question29aAnswer2", nil);
    self.question29a48storiesLabel.text=NSLocalizedString(@"question29aAnswer3", nil);
    self.question29a812storiesLabel.text=NSLocalizedString(@"question29aAnswer4", nil);
    self.question29a1339storiesLabel.text=NSLocalizedString(@"question29aAnswer5", nil);
    self.question29a40storiesLabel.text=NSLocalizedString(@"question29aAnswer6", nil);
    self.question29bLabel.text=NSLocalizedString(@"question29bLabel", nil);
    self.question29bAnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"question29bAnswer1", nil),NSLocalizedString(@"question29bAnswer2", nil),NSLocalizedString(@"question29bAnswer3", nil),NSLocalizedString(@"question29bAnswer4", nil),NSLocalizedString(@"question29bAnswer5", nil),NSLocalizedString(@"question29bAnswer6", nil),nil];
    self.question30Label.text=NSLocalizedString(@"question30Label", nil);
    self.question30AnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question29bAnswe) {
        return [self.question29bAnswerArray objectAtIndex:row];
    }
    return [self.question30AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question29bAnswe) {
        return [self.question29bAnswerArray count];
    }
	return [self.question30AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question29bAnswerValue=8;
    NSInteger question30AnswerValue=8;
    if (!self.question29bAnswe.isHidden) {
        question29bAnswerValue=[self.question29bAnswe selectedRowInComponent:0]+1;
    }
    if (!self.question30Answer.isHidden) {
        question30AnswerValue=[self.question30Answer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question29aNAnobuildingsAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question29a1storyAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question29a23storiesAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question29a48storiesAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question29a812storiesAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question29a1339storiesAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question29a40storiesAnswer isOn]],[NSString stringWithFormat:@"%d", question29bAnswerValue],[NSString stringWithFormat:@"%d", question30AnswerValue], nil];
}
- (IBAction)question29aNAnobuildingsAction:(UISwitch *)sender {
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:[sender isOn]] forKeyedSubscript:@"isQuestion29aNAnobuildingsOn"];
    self.question29bLabel.hidden=self.question29bAnswe.hidden=self.question30Label.hidden=self.question30Answer.hidden=[sender isOn];
}
@end
