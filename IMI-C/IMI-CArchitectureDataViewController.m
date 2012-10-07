//
//  IMI-CArchitectureDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CArchitectureDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CArchitectureDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ArchitectureLabel;
@property (weak, nonatomic) IBOutlet UILabel *question51Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question51Answer;
@property (weak, nonatomic) IBOutlet UILabel *question52Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question52Answer;
@property (nonatomic, retain) NSArray *question51AnswerArray;
@property (nonatomic, retain) NSArray *question52AnswerArray;
@end

@implementation IMI_CArchitectureDataViewController

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
    self.ArchitectureLabel.text=NSLocalizedString(@"ArchitectureLabel", nil);
    self.question51Label.text=NSLocalizedString(@"question51Label", nil);
    self.question51AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"attractiveneutralunattractiveNA1", nil),NSLocalizedString(@"attractiveneutralunattractiveNA2", nil),NSLocalizedString(@"attractiveneutralunattractiveNA3", nil),nil];
    self.question52Label.text=NSLocalizedString(@"question52Label", nil);
    self.question52AnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"question52Answer0", nil),NSLocalizedString(@"question52Answer1", nil),NSLocalizedString(@"question52Answer2", nil),NSLocalizedString(@"question52Answer3", nil),NSLocalizedString(@"question52Answer4", nil),nil];
    self.question52Label.hidden=self.question52Answer.hidden=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"isQuestion29aNAnobuildingsOn"] boolValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question51Answer) {
        return [self.question51AnswerArray objectAtIndex:row];
    }
    return [self.question52AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question51Answer) {
        return [self.question51AnswerArray count];
    }
	return [self.question52AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question52AnswerValue=8;
    if (!self.question52Answer.isHidden) {
        question52AnswerValue=[self.question52Answer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question51Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", question52AnswerValue], nil];
}

@end
