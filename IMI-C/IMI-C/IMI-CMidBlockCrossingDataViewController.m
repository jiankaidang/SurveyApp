//
//  IMI-CMidBlockCrossingDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CMidBlockCrossingDataViewController.h"

@interface IMI_CMidBlockCrossingDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *MidBlockCrossingLabel;
@property (weak, nonatomic) IBOutlet UILabel *question23aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question23aAnswer;
- (IBAction)question23aAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *question23bLabel;
@property (weak, nonatomic) IBOutlet UILabel *question23bWhitepaintedlinesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question23bWhitepaintedlinesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question23bColoredpaintedlinesLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question23bColoredpaintedlinesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question23bZebrastripingLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question23bZebrastripingAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question23bDifferentroadsurfaceorpavingLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question23bDifferentroadsurfaceorpavingAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question23bOtherLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question23bOtherAnswer;
- (IBAction)question23bOtherAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *question23bOtherText;
@property (weak, nonatomic) IBOutlet UILabel *question23cLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question23cAnswer;
@property (nonatomic, retain) NSArray *question23cAnswerArray;
@end

@implementation IMI_CMidBlockCrossingDataViewController

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
    self.MidBlockCrossingLabel.text=NSLocalizedString(@"MidBlockCrossingLabel", nil);
    self.question23aLabel.text=NSLocalizedString(@"question23aLabel", nil);
    self.question23bLabel.text=NSLocalizedString(@"question23bLabel", nil);
    self.question23bWhitepaintedlinesLabel.text=NSLocalizedString(@"question23bWhitepaintedlinesLabel", nil);
    self.question23bColoredpaintedlinesLabel.text=NSLocalizedString(@"question23bColoredpaintedlinesLabel", nil);
    
    self.question23bZebrastripingLabel.text=NSLocalizedString(@"question23bZebrastripingLabel", nil);
    self.question23bDifferentroadsurfaceorpavingLabel.text=NSLocalizedString(@"question23bDifferentroadsurfaceorpavingLabel", nil);
    self.question23bOtherLabel.text=NSLocalizedString(@"question23bOtherLabel", nil);
    self.question23bOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.question23cLabel.text=NSLocalizedString(@"question23cLabel", nil);
        self.question23cAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question23Answer0", nil),NSLocalizedString(@"question23Answer1", nil),NSLocalizedString(@"question23Answer2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question23cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question23cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    BOOL question23aAnswerValue=[self.question23aAnswer isOn];
    BOOL question23bWhitepaintedlinesAnswerValue=8;
    BOOL question23bColoredpaintedlinesAnswerValue=8;
    BOOL question23bZebrastripingAnswerValue=8;
    BOOL question23bDifferentroadsurfaceorpavingAnswerValue=8;
    BOOL question23bOtherAnswerValue=8;
    BOOL question23cAnswerValue=8;
    if (question23aAnswerValue) {
        question23bWhitepaintedlinesAnswerValue=[self.question23bWhitepaintedlinesAnswer isOn];
        question23bColoredpaintedlinesAnswerValue=[self.question23bColoredpaintedlinesAnswer isOn];
        question23bZebrastripingAnswerValue=[self.question23bZebrastripingAnswer isOn];
        question23bDifferentroadsurfaceorpavingAnswerValue=[self.question23bDifferentroadsurfaceorpavingAnswer isOn];
        question23bOtherAnswerValue=[self.question23bOtherAnswer isOn];
    }else{
        question23cAnswerValue=[self.question23cAnswer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question23aAnswerValue],[NSString stringWithFormat:@"%d", question23bWhitepaintedlinesAnswerValue],[NSString stringWithFormat:@"%d", question23bColoredpaintedlinesAnswerValue],[NSString stringWithFormat:@"%d", question23bZebrastripingAnswerValue],[NSString stringWithFormat:@"%d", question23bDifferentroadsurfaceorpavingAnswerValue],[NSString stringWithFormat:@"%d", question23bOtherAnswerValue],self.question23bOtherText.text,[NSString stringWithFormat:@"%d", question23cAnswerValue], nil];
}
- (IBAction)question23aAction:(id)sender {
    BOOL isHidden=![(UISwitch *)sender isOn];
    self.question23bLabel.hidden=isHidden;
    self.question23bWhitepaintedlinesLabel.hidden=isHidden;
    self.question23bWhitepaintedlinesAnswer.hidden=isHidden;
    self.question23bColoredpaintedlinesLabel.hidden=isHidden;
    self.question23bColoredpaintedlinesAnswer.hidden=isHidden;
    self.question23bZebrastripingLabel.hidden=isHidden;
    self.question23bZebrastripingAnswer.hidden=isHidden;
    self.question23bDifferentroadsurfaceorpavingLabel.hidden=isHidden;
    self.question23bDifferentroadsurfaceorpavingAnswer.hidden=isHidden;
    self.question23bOtherLabel.hidden=isHidden;
    self.question23bOtherAnswer.hidden=isHidden;
    self.question23bOtherText.hidden=![self.question23bOtherAnswer isOn]||isHidden;
    self.question23cLabel.hidden=!isHidden;
    self.question23cAnswer.hidden=!isHidden;
}

- (IBAction)question23bOtherAction:(id)sender {
    self.question23bOtherText.hidden=![(UISwitch *)sender isOn];
}
@end
