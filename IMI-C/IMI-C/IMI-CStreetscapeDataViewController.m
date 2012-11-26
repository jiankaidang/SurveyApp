//
//  IMI-CStreetscapeDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CStreetscapeDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CStreetscapeDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *StreetscapeLabel;
@property (weak, nonatomic) IBOutlet UILabel *question31Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question31Answer;
@property (weak, nonatomic) IBOutlet UILabel *question32Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question32Answer;
@property (nonatomic, retain) NSArray *question31AnswerArray;
@property (nonatomic, retain) NSArray *question32AnswerArray;
@end

@implementation IMI_CStreetscapeDataViewController

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
    self.StreetscapeLabel.text=NSLocalizedString(@"StreetscapeLabel", nil);
    self.question31Label.text=NSLocalizedString(@"question31Label", nil);
    self.question31AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question31Answer0", nil),NSLocalizedString(@"question31Answer1", nil),NSLocalizedString(@"question31Answer2", nil),nil];
    self.question32Label.text=NSLocalizedString(@"question32Label", nil);
    self.question32AnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"question32Answer0", nil),NSLocalizedString(@"question32Answer1", nil),NSLocalizedString(@"question32Answer2", nil),NSLocalizedString(@"question32Answer3", nil),NSLocalizedString(@"question32Answer4", nil),nil];
    self.question32Label.hidden=self.question32Answer.hidden=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"isQuestion29aNAnobuildingsOn"] boolValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question31Answer) {
        return [self.question31AnswerArray objectAtIndex:row];
    }
        return [self.question32AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question31Answer) {
        return [self.question31AnswerArray count];
    }
        return [self.question32AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question32AnswerValue=8;
    if (!self.question32Answer.isHidden) {
        question32AnswerValue=[self.question32Answer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question31Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", question32AnswerValue], nil];
}

@end
