//
//  IMI-CQuestion2cDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/14/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion2cDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion2cDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question3cTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *question3cAnswer;
@property (nonatomic, retain) NSArray *question3cAnswerArray;
@property (weak, nonatomic) IBOutlet UILabel *question3dTitle;
@property (weak, nonatomic) IBOutlet UISwitch *question3dAnswer;
@end

@implementation IMI_CQuestion2cDataViewController

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
    BOOL isYes=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question2aAnswerIsYes"] boolValue];
    self.question3cTitle.hidden=!isYes;
    self.question3cAnswer.hidden=!isYes;
    self.question3dTitle.hidden=isYes;
    self.question3dAnswer.hidden=isYes;
    self.question3cTitle.text=NSLocalizedString(@"question3cTitle", nil);
    self.question3cAnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"question3cAnswer0", nil),NSLocalizedString(@"question3cAnswer1", nil),NSLocalizedString(@"question3cAnswer2", nil),nil];
    self.question3dTitle.text=NSLocalizedString(@"question3dTitle", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question3cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question3cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question3cAnswerValue = [self.question3cAnswer selectedRowInComponent:0];
    NSInteger question3dAnswerValue =[self.question3dAnswer isOn];
    BOOL isYes = [self.question3dTitle isHidden];
    if (!isYes) {
        question3cAnswerValue=8;
    } else {
        question3dAnswerValue=8;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",question3cAnswerValue],[NSString stringWithFormat:@"%d",question3dAnswerValue], nil];
}
@end
