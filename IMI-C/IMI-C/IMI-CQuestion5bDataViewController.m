//
//  IMI-CQuestion5bDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion5bDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion5bDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q5bT;
@property (weak, nonatomic) IBOutlet UIPickerView *q5bA;
@property (nonatomic, retain) NSArray *q5bAArray;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@end

@implementation IMI_CQuestion5bDataViewController

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
    self.q5bT.hidden=self.q5bA.hidden=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question5bIsHidden"] boolValue];
    self.q5bT.text=NSLocalizedString(@"q5bT", nil);
    self.q5bAArray = [NSArray arrayWithObjects:NSLocalizedString(@"question3cAnswer0", nil),NSLocalizedString(@"question3cAnswer1", nil),NSLocalizedString(@"question3cAnswer2", nil),nil];
    self.SkiptonextpageLabel.text=NSLocalizedString(@"SkiptonextpageLabel", nil);
    self.SkiptonextpageLabel.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question5bIsHidden"] boolValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    NSInteger question5bAnswerValue=8;
    if (!self.q5bA.isHidden) {
        question5bAnswerValue=[self.q5bA selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",question5bAnswerValue], nil];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.q5bAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.q5bAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
@end
