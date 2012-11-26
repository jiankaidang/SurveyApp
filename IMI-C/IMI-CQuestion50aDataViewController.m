//
//  IMI-CQuestion50aDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/26/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion50aDataViewController.h"

@interface IMI_CQuestion50aDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question50aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question50aAnswer;
- (IBAction)question50aAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UILabel *question50bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question50bAnswer;
@property (nonatomic, retain) NSArray *question50bAnswerArray;
@end

@implementation IMI_CQuestion50aDataViewController

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
    self.question50aLabel.text=NSLocalizedString(@"question50aLabel", nil);
    self.question50bLabel.text=NSLocalizedString(@"question50bLabel", nil);
    self.question50bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question50bAnswer7", nil),NSLocalizedString(@"question50bAnswer0", nil),NSLocalizedString(@"question50bAnswer1", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question50bAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question50bAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    BOOL question50aAnswerValue=[self.question50aAnswer isOn];
    NSInteger question50bAnswerValue=8;
    if (question50aAnswerValue) {
        NSInteger question50bAnswerSelectedRow=[self.question50bAnswer selectedRowInComponent:0];
        question50bAnswerValue=7;
        if (question50bAnswerSelectedRow) {
            question50bAnswerValue=question50bAnswerSelectedRow-1;
        }
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question50aAnswerValue],[NSString stringWithFormat:@"%d", question50bAnswerValue], nil];
}
- (IBAction)question50aAction:(UISwitch *)sender {
    self.question50bLabel.hidden=self.question50bAnswer.hidden=![sender isOn];
}
@end
