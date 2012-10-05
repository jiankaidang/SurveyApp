//
//  IMI-CQuestion43DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion43DataViewController.h"

@interface IMI_CQuestion43DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question43Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question43Answer;
@property (weak, nonatomic) IBOutlet UILabel *question44Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question44Answer;
@property (weak, nonatomic) IBOutlet UILabel *question45Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question45Answer;
@property (weak, nonatomic) IBOutlet UILabel *LightingLabel;
@property (weak, nonatomic) IBOutlet UILabel *question46aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question46aAnswer;
- (IBAction)question46aAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UILabel *question46bLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question46bAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question46cLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question46cAnswer;
@property (nonatomic, retain) NSArray *question43AnswerArray;
@end

@implementation IMI_CQuestion43DataViewController

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
    self.question43Label.text=NSLocalizedString(@"question43Label", nil);
    self.question43AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotlittlenone0", nil),NSLocalizedString(@"somealotlittlenone1", nil),NSLocalizedString(@"somealotlittlenone2", nil),nil];
    self.question44Label.text=NSLocalizedString(@"question44Label", nil);
    self.question45Label.text=NSLocalizedString(@"question45Label", nil);
    self.LightingLabel.text=NSLocalizedString(@"LightingLabel", nil);
    self.question46aLabel.text=NSLocalizedString(@"question46aLabel", nil);
    self.question46bLabel.text=NSLocalizedString(@"question46bLabel", nil);
    self.question46cLabel.text=NSLocalizedString(@"question46cLabel", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question43AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question43AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question46bAnswerValue=8;
    NSInteger question46cAnswerValue=8;
    BOOL question46aAnswerValue=[self.question46aAnswer isOn];
    if (question46aAnswerValue) {
        question46bAnswerValue=[self.question46bAnswer isOn];
        question46cAnswerValue=[self.question46cAnswer isOn];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question43Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question44Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question45Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", question46aAnswerValue],[NSString stringWithFormat:@"%d", question46bAnswerValue],[NSString stringWithFormat:@"%d", question46cAnswerValue], nil];
}

- (IBAction)question46aAction:(UISwitch *)sender {
    BOOL isHidden=![sender isOn];
    self.question46bLabel.hidden=isHidden;
    self.question46bAnswer.hidden=isHidden;
    self.question46cLabel.hidden=isHidden;
    self.question46cAnswer.hidden=isHidden;
}
@end
