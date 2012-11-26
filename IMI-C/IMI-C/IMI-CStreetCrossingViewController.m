//
//  IMI-CStreetCrossingViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CStreetCrossingViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CStreetCrossingViewController ()
@property (weak, nonatomic) IBOutlet UILabel *streetCrossingTitle;
@property (weak, nonatomic) IBOutlet UILabel *question3aTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *question3aAnswer;
@property (nonatomic, retain) NSArray *question3aAnswerArray;
@property (weak, nonatomic) IBOutlet UILabel *question3bTitle;
@property (weak, nonatomic) IBOutlet UILabel *whitePaintedLabel;
@property (weak, nonatomic) IBOutlet UISwitch *whitePaintedAnswer;
@property (weak, nonatomic) IBOutlet UILabel *coloredPaintedLabel;
@property (weak, nonatomic) IBOutlet UISwitch *colorPaintedAnswer;
@property (weak, nonatomic) IBOutlet UILabel *zebraLabel;
@property (weak, nonatomic) IBOutlet UISwitch *zebraAnswer;
@property (weak, nonatomic) IBOutlet UILabel *roadSurfaceLabel;
@property (weak, nonatomic) IBOutlet UISwitch *roadSurfaceAnswer;
@property (weak, nonatomic) IBOutlet UILabel *otherLabel;
@property (weak, nonatomic) IBOutlet UISwitch *otherAnswer;
- (IBAction)question3bOtherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *question3bOtherText;

@end

@implementation IMI_CStreetCrossingViewController

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
    self.streetCrossingTitle.text=NSLocalizedString(@"streetCrossingTitle", nil);
    self.question3aTitle.text=NSLocalizedString(@"question3aTitle", nil);
    self.question3aAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question3aAnswer8", nil),NSLocalizedString(@"question3aAnswer0", nil),NSLocalizedString(@"question3aAnswer1", nil),NSLocalizedString(@"question3aAnswer2", nil),nil];
    self.question3bTitle.text=NSLocalizedString(@"question3bTitle", nil);
    self.whitePaintedLabel.text=NSLocalizedString(@"whitePaintedLabel", nil);
    self.coloredPaintedLabel.text=NSLocalizedString(@"coloredPaintedLabel", nil);
    self.zebraLabel.text=NSLocalizedString(@"zebraLabel", nil);
    self.roadSurfaceLabel.text=NSLocalizedString(@"roadSurfaceLabel", nil);
    self.otherLabel.text=NSLocalizedString(@"otherLabel", nil);
    self.question3bOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
        return [self.question3aAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
        return [self.question3aAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    BOOL isYes=row==2||row==3;
    self.question3bTitle.hidden=!isYes;
    self.whitePaintedLabel.hidden=!isYes;
    self.whitePaintedAnswer.hidden=!isYes;
    self.coloredPaintedLabel.hidden=!isYes;
    self.colorPaintedAnswer.hidden=!isYes;
    self.zebraLabel.hidden=!isYes;
    self.zebraAnswer.hidden=!isYes;
    self.roadSurfaceLabel.hidden=!isYes;
    self.roadSurfaceAnswer.hidden=!isYes;
    self.otherLabel.hidden=!isYes;
    self.otherAnswer.hidden=!isYes;
    self.question3bOtherText.hidden=!isYes||![self.otherAnswer isOn];
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:isYes] forKeyedSubscript:@"question2aAnswerIsYes"];
}
-(void)setImi_cResults{
    NSInteger question3aAnswerValue;
    NSInteger selectedRow=[self.question3aAnswer selectedRowInComponent:0];
    if (!selectedRow) {
        question3aAnswerValue=8;
    } else {
        question3aAnswerValue=selectedRow-1;
    }
    NSInteger whitePaintedAnswerValue=[self.whitePaintedAnswer isOn];
    NSInteger colorPaintedAnswerValue=[self.colorPaintedAnswer isOn];
    NSInteger zebraAnswerValue=[self.zebraAnswer isOn];
    NSInteger roadSurfaceAnswerValue=[self.roadSurfaceAnswer isOn];
    NSInteger otherAnswerValue=[self.otherAnswer isOn];
    if (question3aAnswerValue==8||!question3aAnswerValue) {
        whitePaintedAnswerValue=colorPaintedAnswerValue=zebraAnswerValue=roadSurfaceAnswerValue=otherAnswerValue=8;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question3aAnswerValue],[NSString stringWithFormat:@"%d",whitePaintedAnswerValue],[NSString stringWithFormat:@"%d",colorPaintedAnswerValue],[NSString stringWithFormat:@"%d",zebraAnswerValue],[NSString stringWithFormat:@"%d",roadSurfaceAnswerValue],[NSString stringWithFormat:@"%d",otherAnswerValue],self.question3bOtherText.text, nil];
}
- (IBAction)question3bOtherAction:(UISwitch *)sender {
    self.question3bOtherText.hidden=![self.otherAnswer isOn];
}
@end
