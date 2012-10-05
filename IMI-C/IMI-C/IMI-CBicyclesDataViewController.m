//
//  IMI-CBicyclesDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CBicyclesDataViewController.h"

@interface IMI_CBicyclesDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *BicyclesLabel;
@property (weak, nonatomic) IBOutlet UILabel *question19aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19aAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19bAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cLabel;
@property (weak, nonatomic) IBOutlet UILabel *question19cParkedcarsLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19cParkedcarsAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cParkedbicyclesormotorcyclesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19cParkedbicyclesormotorcyclesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cBusstopLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19cBusstopAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cMovingvehiclesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19cMovingvehiclesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cPedestriansLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19cPedestriansAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19cOtherLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19cOtherAnswer;
@property (weak, nonatomic) IBOutlet UITextField *question19cOtherText;
- (IBAction)question19aAction:(id)sender;
- (IBAction)question19cOtherAction:(id)sender;
@property (nonatomic, retain) NSArray *question19bAnswerArray;
@end

@implementation IMI_CBicyclesDataViewController

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
    self.BicyclesLabel.text=NSLocalizedString(@"BicyclesLabel", nil);
    self.question19aLabel.text=NSLocalizedString(@"question19aLabel", nil);
    self.question19bLabel.text=NSLocalizedString(@"question19bLabel", nil);
    self.question19bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question19bAnswer1", nil),NSLocalizedString(@"question19bAnswer2", nil),NSLocalizedString(@"question19bAnswer3", nil),nil];
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
    return [self.question19bAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question19bAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    BOOL question19aAnswerValue=[self.question19aAnswer isOn];
    NSInteger question19bAnswerValue=8;
    BOOL question19cParkedcarsValue=8;
    BOOL question19cParkedbicyclesormotorcyclesAnswerValue=8;
    BOOL question19cBusstopAnswerValue=8;
    BOOL question19cMovingvehiclesAnswerValue=8;
    BOOL question19cPedestriansAnswerValue=8;
    BOOL question19cOtherAnswerValue=8;
    if (question19aAnswerValue) {
        question19bAnswerValue=[self.question19bAnswer selectedRowInComponent:0]+1;
        question19cParkedcarsValue=[self.question19cParkedcarsAnswer isOn];
        question19cParkedbicyclesormotorcyclesAnswerValue=[self.question19cParkedbicyclesormotorcyclesAnswer isOn];
        question19cBusstopAnswerValue=[self.question19cBusstopAnswer isOn];
        question19cMovingvehiclesAnswerValue=[self.question19cMovingvehiclesAnswer isOn];
        question19cPedestriansAnswerValue=[self.question19cPedestriansAnswer isOn];
        question19cOtherAnswerValue=[self.question19cOtherAnswer isOn];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question19aAnswerValue],[NSString stringWithFormat:@"%d", question19bAnswerValue],[NSString stringWithFormat:@"%d", question19cParkedcarsValue],[NSString stringWithFormat:@"%d", question19cParkedbicyclesormotorcyclesAnswerValue],[NSString stringWithFormat:@"%d", question19cBusstopAnswerValue],[NSString stringWithFormat:@"%d", question19cMovingvehiclesAnswerValue],[NSString stringWithFormat:@"%d", question19cPedestriansAnswerValue],[NSString stringWithFormat:@"%d", question19cOtherAnswerValue],self.question19cOtherText.text, nil];
}
- (IBAction)question19aAction:(id)sender {
    BOOL isHidden=![(UISwitch *)sender isOn];
    self.question19bLabel.hidden=isHidden;
    self.question19bAnswer.hidden=isHidden;
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
    self.question19cOtherText.hidden=![self.question19cOtherAnswer isOn]||isHidden;
}

- (IBAction)question19cOtherAction:(id)sender {
    self.question19cOtherText.hidden=![(UISwitch *)sender isOn];
}
@end
