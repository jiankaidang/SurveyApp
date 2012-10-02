//
//  IMI-CQuestion4aDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion4aDataViewController.h"

@interface IMI_CQuestion4aDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question4aTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *question4aAnswer;
@property (nonatomic, retain) NSArray *question4aAnswerArray;
@property (weak, nonatomic) IBOutlet UILabel *question4bTitle;
@property (weak, nonatomic) IBOutlet UIPickerView *question4bAnswer;
@property (nonatomic, retain) NSArray *question4bAnswerArray;

@end

@implementation IMI_CQuestion4aDataViewController

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
    self.question4aTitle.text=NSLocalizedString(@"question4aTitle", nil);
    self.question4aAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question4aAnswer8", nil),NSLocalizedString(@"question4aAnswer0", nil),NSLocalizedString(@"question4aAnswer1", nil),NSLocalizedString(@"question4aAnswer2", nil),nil];
    self.question4bTitle.text=NSLocalizedString(@"question4bTitle", nil);
    self.question4bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question4bAnswer8", nil),NSLocalizedString(@"question4bAnswer0", nil),NSLocalizedString(@"question4bAnswer1", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question4aAnswer) {
        return [self.question4aAnswerArray objectAtIndex:row];
    }
    return [self.question4bAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question4aAnswer) {
        return [self.question4aAnswerArray count];
    }
	return [self.question4bAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question4aAnswerValue,question4bAnswerValue;
    NSInteger question4aSelectedRow=[self.question4aAnswer selectedRowInComponent:0];
    if (!question4aSelectedRow) {
        question4aAnswerValue=8;
    } else {
        question4aAnswerValue=question4aSelectedRow-1;
    }
    NSInteger question4bSelectedRow=[self.question4bAnswer selectedRowInComponent:0];
    if (!question4bSelectedRow) {
        question4bAnswerValue=8;
    } else {
        question4bAnswerValue=question4bSelectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question4aAnswerValue],[NSString stringWithFormat:@"%d",question4bAnswerValue], nil];
}
@end
