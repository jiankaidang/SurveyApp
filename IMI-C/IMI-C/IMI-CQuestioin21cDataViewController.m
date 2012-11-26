//
//  IMI-CQuestioin21cDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestioin21cDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestioin21cDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question19cLabel;
@property (weak, nonatomic) IBOutlet UILabel *question19cParkedcarsLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19cParkedcarsAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cParkedbicyclesormotorcyclesLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19cParkedbicyclesormotorcyclesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cBusstopLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19cBusstopAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cMovingvehiclesLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19cMovingvehiclesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cPedestriansLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19cPedestriansAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cOtherLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19cOtherAnswer;
@property (weak, nonatomic) IBOutlet UITextField *question19cOtherText;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@property (nonatomic, retain) NSArray *question19cAnswerArray;
@end

@implementation IMI_CQuestioin21cDataViewController

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
    BOOL isHidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question19aActionIsHidden"] boolValue];
    self.question19cLabel.hidden=isHidden;
    self.question19cParkedcarsLabel.hidden=isHidden;
    self.question19cParkedcarsAnswer.hidden=isHidden;
    self.question19cParkedbicyclesormotorcyclesLabel.hidden=isHidden;
    self.question19cParkedbicyclesormotorcyclesAnswer.hidden=isHidden;
    self.question19cBusstopLabel.hidden=isHidden;
    self.question19cBusstopAnswer.hidden=isHidden;
    self.question19cMovingvehiclesLabel.hidden=isHidden;
    self.question19cMovingvehiclesAnswer.hidden=isHidden;
    self.question19cPedestriansLabel.hidden=isHidden;
    self.question19cPedestriansAnswer.hidden=isHidden;
    self.question19cOtherLabel.hidden=isHidden;
    self.question19cOtherAnswer.hidden=isHidden;
    self.question19cOtherText.hidden=![self.question19cOtherAnswer selectedRowInComponent:0]||isHidden;
    self.SkiptonextpageLabel.text=NSLocalizedString(@"SkiptonextpageLabel", nil);
    self.SkiptonextpageLabel.hidden=!isHidden;
    self.question19cAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question18gAnswer0", nil),NSLocalizedString(@"question18gAnswer1", nil),NSLocalizedString(@"question18gAnswer2", nil),nil];
    self.question19cLabel.text=NSLocalizedString(@"question19cLabel", nil);
    self.question19cParkedcarsLabel.text=NSLocalizedString(@"question19cParkedcarsLabel", nil);
    
    self.question19cParkedbicyclesormotorcyclesLabel.text=NSLocalizedString(@"question19cParkedbicyclesormotorcyclesLabel", nil);
    self.question19cBusstopLabel.text=NSLocalizedString(@"question19cBusstopLabel", nil);
    self.question19cMovingvehiclesLabel.text=NSLocalizedString(@"question19cMovingvehiclesLabel", nil);
    self.question19cPedestriansLabel.text=NSLocalizedString(@"question19cPedestriansLabel", nil);
    self.question19cOtherLabel.text=NSLocalizedString(@"question19cOtherLabel", nil);
    self.question19cOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question19cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question19cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView==self.question19cOtherAnswer) {
        self.question19cOtherText.hidden=!row;
    }
}
-(void)setImi_cResults{
    BOOL question19aAnswerValue=[self.question19cLabel isHidden];
    BOOL question19cParkedcarsValue=8;
    BOOL question19cParkedbicyclesormotorcyclesAnswerValue=8;
    BOOL question19cBusstopAnswerValue=8;
    BOOL question19cMovingvehiclesAnswerValue=8;
    BOOL question19cPedestriansAnswerValue=8;
    BOOL question19cOtherAnswerValue=8;
    if (!question19aAnswerValue) {
        question19cParkedcarsValue=[self.question19cParkedcarsAnswer selectedRowInComponent:0];
        question19cParkedbicyclesormotorcyclesAnswerValue=[self.question19cParkedbicyclesormotorcyclesAnswer selectedRowInComponent:0];
        question19cBusstopAnswerValue=[self.question19cBusstopAnswer selectedRowInComponent:0];
        question19cMovingvehiclesAnswerValue=[self.question19cMovingvehiclesAnswer selectedRowInComponent:0];
        question19cPedestriansAnswerValue=[self.question19cPedestriansAnswer selectedRowInComponent:0];
        question19cOtherAnswerValue=[self.question19cOtherAnswer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question19cParkedcarsValue],[NSString stringWithFormat:@"%d", question19cParkedbicyclesormotorcyclesAnswerValue],[NSString stringWithFormat:@"%d", question19cBusstopAnswerValue],[NSString stringWithFormat:@"%d", question19cMovingvehiclesAnswerValue],[NSString stringWithFormat:@"%d", question19cPedestriansAnswerValue],[NSString stringWithFormat:@"%d", question19cOtherAnswerValue],self.question19cOtherText.text, nil];
}

@end
