//
//  IMI-CQustion36DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQustion36DataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQustion36DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question36Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question36Answer;
@property (weak, nonatomic) IBOutlet UILabel *question37Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question37Answer;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@property (nonatomic, retain) NSArray *question36AnswerArray;
@property (nonatomic, retain) NSArray *question37AnswerArray;
@end

@implementation IMI_CQustion36DataViewController

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
    self.question36Label.text=NSLocalizedString(@"question36Label", nil);
    self.question36AnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"yesnoNA0", nil),NSLocalizedString(@"yesnoNA1", nil),nil];
    self.question37Label.text=NSLocalizedString(@"question37Label", nil);
    self.question37AnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
    self.question36Label.hidden=self.question36Answer.hidden=self.question37Label.hidden=self.question37Answer.hidden=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"isQuestion29aNAnobuildingsOn"] boolValue];
    self.SkiptonextpageLabel.text=NSLocalizedString(@"SkiptonextpageLabel", nil);
    self.SkiptonextpageLabel.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"isQuestion29aNAnobuildingsOn"] boolValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question36Answer) {
        return [self.question36AnswerArray objectAtIndex:row];
    }
    return [self.question37AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question36Answer) {
        return [self.question36AnswerArray count];
    }
	return [self.question37AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question36AnswerValue=8;
    NSInteger question37AnswerValue=8;
    if (!self.question36Answer.isHidden) {
        question36AnswerValue=[self.question36Answer selectedRowInComponent:0];
    }
    if (!self.question37Answer.isHidden) {
        question37AnswerValue=[self.question37Answer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question36AnswerValue],[NSString stringWithFormat:@"%d", question37AnswerValue], nil];
}
@end
