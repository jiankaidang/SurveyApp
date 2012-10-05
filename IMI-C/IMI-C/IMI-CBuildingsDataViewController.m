//
//  IMI-CBuildingsDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CBuildingsDataViewController.h"

@interface IMI_CBuildingsDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *BuildingsLabel;
@property (weak, nonatomic) IBOutlet UILabel *question29aLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question29aAnswer;
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
    self.question29aAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question29aAnswer8", nil),NSLocalizedString(@"question29aAnswer1", nil),NSLocalizedString(@"question29aAnswer2", nil),NSLocalizedString(@"question29aAnswer3", nil),NSLocalizedString(@"question29aAnswer4", nil),NSLocalizedString(@"question29aAnswer5", nil),NSLocalizedString(@"question29aAnswer6", nil),nil];
    self.question29bLabel.text=NSLocalizedString(@"question29bLabel", nil);
    self.question29bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question29bAnswer8", nil),NSLocalizedString(@"question29bAnswer1", nil),NSLocalizedString(@"question29bAnswer2", nil),NSLocalizedString(@"question29bAnswer3", nil),NSLocalizedString(@"question29bAnswer4", nil),NSLocalizedString(@"question29bAnswer5", nil),NSLocalizedString(@"question29bAnswer6", nil),nil];
    self.question30Label.text=NSLocalizedString(@"question30Label", nil);
    self.question30AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA8", nil),NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question29aAnswer) {
        return [self.question29aAnswerArray objectAtIndex:row];
    }
    if (pickerView==self.question29bAnswe) {
        return [self.question29bAnswerArray objectAtIndex:row];
    }
    return [self.question30AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question29aAnswer) {
        return [self.question29aAnswerArray count];
    }
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
    NSInteger question29aAnswerValue=8;
    NSInteger question29bAnswerValue=8;
    NSInteger question30AnswerValue=8;
    NSInteger question29aAnswerselectedRow=[self.question29aAnswer selectedRowInComponent:0];
    if (question29aAnswerselectedRow) {
        question29aAnswerValue=[self.question29aAnswer selectedRowInComponent:0];
    }
    NSInteger question29bAnswerselectedRow=[self.question29bAnswe selectedRowInComponent:0];
    if (question29bAnswerselectedRow) {
        question29bAnswerValue=[self.question29bAnswe selectedRowInComponent:0];
    }
    NSInteger question30AnswerselectedRow=[self.question30Answer selectedRowInComponent:0];
    if (question30AnswerselectedRow) {
        question30AnswerValue=[self.question30Answer selectedRowInComponent:0]-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question29aAnswerValue],[NSString stringWithFormat:@"%d", question29bAnswerValue],[NSString stringWithFormat:@"%d", question30AnswerValue], nil];
}
@end
