//
//  IMI-CQuestion26DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion26DataViewController.h"

@interface IMI_CQuestion26DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question26Label;
@property (weak, nonatomic) IBOutlet UILabel *question26BenchesLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question26BenchesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question26BusLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question26BusAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question26LedgesLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question26LedgesAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question26HeatLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question26HeatAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question27Label;
@property (weak, nonatomic) IBOutlet UISwitch *question27Answer;
@property (nonatomic, retain) NSArray *question26AnswerArray;
@end

@implementation IMI_CQuestion26DataViewController

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
    self.question26AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question20_21Answer0", nil),NSLocalizedString(@"question20_21Answer1", nil),NSLocalizedString(@"question20_21Answer2", nil),nil];
    self.question26Label.text=NSLocalizedString(@"question26Label", nil);
    self.question26BenchesLabel.text=NSLocalizedString(@"question26BenchesLabel", nil);
    self.question26BusLabel.text=NSLocalizedString(@"question26BusLabel", nil);
    self.question26LedgesLabel.text=NSLocalizedString(@"question26LedgesLabel", nil);
    self.question26HeatLabel.text=NSLocalizedString(@"question26HeatLabel", nil);
    self.question27Label.text=NSLocalizedString(@"question27Label", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question26AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question26AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question26BenchesAnswer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question26BusAnswer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question26LedgesAnswer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question26HeatAnswer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question27Answer isOn]], nil];
}

@end
