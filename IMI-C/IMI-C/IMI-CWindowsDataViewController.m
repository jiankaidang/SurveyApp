//
//  IMI-CWindowsDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CWindowsDataViewController.h"

@interface IMI_CWindowsDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *WindowsLabel;
@property (weak, nonatomic) IBOutlet UILabel *question34Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question34Answer;
@property (weak, nonatomic) IBOutlet UILabel *OtherFeaturesofBuildingsLabel;
@property (weak, nonatomic) IBOutlet UILabel *question35Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question35Answer;
@property (nonatomic, retain) NSArray *windowsAnswerArray;
@end

@implementation IMI_CWindowsDataViewController

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
    self.WindowsLabel.text=NSLocalizedString(@"WindowsLabel", nil);
    self.question34Label.text=NSLocalizedString(@"question34Label", nil);
    self.windowsAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA8", nil),NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
    self.OtherFeaturesofBuildingsLabel.text=NSLocalizedString(@"OtherFeaturesofBuildingsLabel", nil);
    self.question35Label.text=NSLocalizedString(@"question35Label", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.windowsAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.windowsAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question34AnswerValue=8;
    NSInteger question35AnswerValue=8;
    NSInteger question34AnswerselectedRow=[self.question34Answer selectedRowInComponent:0];
    if (question34AnswerselectedRow) {
        question34AnswerValue=[self.question34Answer selectedRowInComponent:0]-1;
    }
    NSInteger question35AnswerselectedRow=[self.question35Answer selectedRowInComponent:0];
    if (question35AnswerselectedRow) {
        question35AnswerValue=[self.question35Answer selectedRowInComponent:0]-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question34AnswerValue],[NSString stringWithFormat:@"%d", question35AnswerValue], nil];
}


@end
