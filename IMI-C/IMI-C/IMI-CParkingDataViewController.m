//
//  IMI-CParkingDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CParkingDataViewController.h"

@interface IMI_CParkingDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ParkingLabel;
@property (weak, nonatomic) IBOutlet UILabel *question38aLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question38aAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question38bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question38bAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question38cLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question38cAnswer;
@property (nonatomic, retain) NSArray *question38aAnswerArray;
@property (nonatomic, retain) NSArray *question38bnswerArray;
@property (nonatomic, retain) NSArray *question38cnswerArray;
@end

@implementation IMI_CParkingDataViewController

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
    self.ParkingLabel.text=NSLocalizedString(@"ParkingLabel", nil);
    self.question38aLabel.text=NSLocalizedString(@"question38aLabel", nil);
    self.question38aAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question38aAnswer0", nil),NSLocalizedString(@"question38aAnswer1", nil),NSLocalizedString(@"question38aAnswer2", nil),nil];
    self.question38bLabel.text=NSLocalizedString(@"question38bLabel", nil);
    self.question38bnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"largemediumsmallNA0", nil),NSLocalizedString(@"largemediumsmallNA1", nil),NSLocalizedString(@"largemediumsmallNA2", nil),nil];
    self.question38cLabel.text=NSLocalizedString(@"question38cLabel", nil);
    self.question38cnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotlittleNA1", nil),NSLocalizedString(@"somealotlittleNA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question38aAnswer) {
        return [self.question38aAnswerArray objectAtIndex:row];
    }
    if (pickerView==self.question38bAnswer) {
        return [self.question38bnswerArray objectAtIndex:row];
    }
    return [self.question38cnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question38aAnswer) {
        return [self.question38aAnswerArray count];
    }
    if (pickerView==self.question38bAnswer) {
        return [self.question38bnswerArray count];
    }
	return [self.question38cnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question38bAnswerValue=8;
    NSInteger question38cAnswerValue=8;
    NSInteger question38aAnswerselectedRow=[self.question38aAnswer selectedRowInComponent:0];
    if (question38aAnswerselectedRow) {
        question38bAnswerValue=[self.question38bAnswer selectedRowInComponent:0]+1;
        question38cAnswerValue=[self.question38cAnswer selectedRowInComponent:0]+1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question38aAnswerselectedRow],[NSString stringWithFormat:@"%d", question38bAnswerValue],[NSString stringWithFormat:@"%d", question38cAnswerValue], nil];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView==self.question38aAnswer) {
        BOOL isHidden=!row;
        self.question38bLabel.hidden=isHidden;
        self.question38bAnswer.hidden=isHidden;
        self.question38cLabel.hidden=isHidden;
        self.question38cAnswer.hidden=isHidden;
    }
}
@end
