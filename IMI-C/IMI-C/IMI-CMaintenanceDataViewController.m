//
//  IMI-CMaintenanceDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CMaintenanceDataViewController.h"

@interface IMI_CMaintenanceDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *MaintenanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *question41Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question41Answer;
@property (weak, nonatomic) IBOutlet UILabel *question42Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question42Answer;
@property (nonatomic, retain) NSArray *question41AnswerArray;
@end

@implementation IMI_CMaintenanceDataViewController

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
    self.MaintenanceLabel.text=NSLocalizedString(@"MaintenanceLabel", nil);
    self.question41Label.text=NSLocalizedString(@"question41Label", nil);
    self.question41AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"attractiveneutralunattractiveNA8", nil),NSLocalizedString(@"attractiveneutralunattractiveNA1", nil),NSLocalizedString(@"attractiveneutralunattractiveNA2", nil),NSLocalizedString(@"attractiveneutralunattractiveNA3", nil),nil];
    self.question42Label.text=NSLocalizedString(@"question42Label", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question41AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question41AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question41AnswerValue=8;
    NSInteger question42AnswerValue=8;
    NSInteger question41AnswerselectedRow=[self.question41Answer selectedRowInComponent:0];
    if (question41AnswerselectedRow) {
        question41AnswerValue=question41AnswerselectedRow;
    }
    NSInteger question42AnswerselectedRow=[self.question42Answer selectedRowInComponent:0];
    if (question42AnswerselectedRow) {
        question42AnswerValue=question42AnswerselectedRow;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question41AnswerValue],[NSString stringWithFormat:@"%d", question42AnswerValue], nil];
}

@end
