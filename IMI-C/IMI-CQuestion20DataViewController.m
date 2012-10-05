//
//  IMI-CQuestion20DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion20DataViewController.h"

@interface IMI_CQuestion20DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question20Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question20Answer;
@property (weak, nonatomic) IBOutlet UILabel *question21Label;
@property (weak, nonatomic) IBOutlet UILabel *question21BikeracksLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question21BikeracksAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question21BikeparkingcoveredLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question21BikeparkingcoveredAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question21BikeparkinguncoveredLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question21BikeparkinguncoveredAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question21OtherLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question21OtherAnswer;
@property (weak, nonatomic) IBOutlet UITextField *question21OtherText;
@property (weak, nonatomic) IBOutlet UILabel *question22Label;
@property (weak, nonatomic) IBOutlet UISwitch *question22Answer;
- (IBAction)question21OtherAction:(id)sender;
@property (nonatomic, retain) NSArray *question20_21AnswerArray;
@end

@implementation IMI_CQuestion20DataViewController

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
    self.question20Label.text=NSLocalizedString(@"question20Label", nil);
    self.question20_21AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question20_21Answer0", nil),NSLocalizedString(@"question20_21Answer1", nil),NSLocalizedString(@"question20_21Answer2", nil),nil];
    self.question21Label.text=NSLocalizedString(@"question21Label", nil);
    self.question21BikeracksLabel.text=NSLocalizedString(@"question21BikeracksLabel", nil);
    self.question21BikeparkingcoveredLabel.text=NSLocalizedString(@"question21BikeparkingcoveredLabel", nil);
    self.question21BikeparkinguncoveredLabel.text=NSLocalizedString(@"question21BikeparkinguncoveredLabel", nil);
    self.question21OtherLabel.text=NSLocalizedString(@"question21OtherLabel", nil);
    self.question21OtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.question22Label.text=NSLocalizedString(@"question22Label", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question20_21AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question20_21AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question20Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question21BikeracksAnswer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question21BikeparkingcoveredAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question21BikeparkinguncoveredAnswer isOn]],[NSString stringWithFormat:@"%d", [self.question21OtherAnswer isOn]],self.question21OtherText.text,[NSString stringWithFormat:@"%d", [self.question22Answer isOn]], nil];
}

- (IBAction)question21OtherAction:(id)sender {
    self.question21OtherText.hidden=![(UISwitch*)sender isOn];
}
@end
