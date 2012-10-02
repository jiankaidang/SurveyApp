//
//  IMI-CQ6aDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQ6aDataViewController.h"

@interface IMI_CQ6aDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q6aT;
@property (weak, nonatomic) IBOutlet UISwitch *q6aA;
@property (weak, nonatomic) IBOutlet UILabel *q6bT;
@property (weak, nonatomic) IBOutlet UISwitch *q6bA;
@property (weak, nonatomic) IBOutlet UILabel *q6cT;
@property (weak, nonatomic) IBOutlet UISwitch *q6cA;
@property (weak, nonatomic) IBOutlet UILabel *q7T;
@property (weak, nonatomic) IBOutlet UIPickerView *q7A;
@property (nonatomic, retain) NSArray *q7AArray;

@end

@implementation IMI_CQ6aDataViewController

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
    self.q6aT.text=NSLocalizedString(@"q6aT", nil);
    self.q6bT.text=NSLocalizedString(@"q6bT", nil);
    self.q6cT.text=NSLocalizedString(@"q6cT", nil);
    self.q7T.text=NSLocalizedString(@"q7T", nil);
    self.q7AArray = [NSArray arrayWithObjects: NSLocalizedString(@"q7A8", nil),NSLocalizedString(@"q7A0", nil),NSLocalizedString(@"q7A1", nil),NSLocalizedString(@"q7A2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.q7AArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.q7AArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger q7AValue;
    NSInteger selectedRow=[self.q7A selectedRowInComponent:0];
    if (!selectedRow) {
        q7AValue=8;
    } else {
        q7AValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.q6aA isOn]],[NSString stringWithFormat:@"%d",[self.q6bA isOn]],[NSString stringWithFormat:@"%d",[self.q6cA isOn]],[NSString stringWithFormat:@"%d", q7AValue], nil];
}

@end
