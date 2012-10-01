//
//  IMI-CCommunityViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/22/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CCommunityViewController.h"

@interface IMI_CCommunityViewController ()
@property (strong, nonatomic) IBOutlet UILabel *question2aTitle;
@property (strong, nonatomic) IBOutlet UIPickerView *question2aAnswer;
@property (nonatomic, retain) NSArray *pickerViewArray;
@property (strong, nonatomic) IBOutlet UILabel *question2bTitle;
@property (strong, nonatomic) IBOutlet UITextField *question2bAnswer;
@property (strong, nonatomic) IBOutlet UILabel *question2cTitle;
@property (strong, nonatomic) IBOutlet UIPickerView *question2cAnswer;
@property (nonatomic, retain) NSArray *pickerQuestion2cAnswerArray;
@end

@implementation IMI_CCommunityViewController

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
    self.pickerViewArray = [NSArray arrayWithObjects: NSLocalizedString(@"question2aAnswer0", nil),NSLocalizedString(@"question2aAnswer1", nil),NSLocalizedString(@"question2aAnswer2", nil),NSLocalizedString(@"question2aAnswer3", nil),nil];
    self.pickerQuestion2cAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question2cAnswer0", nil),NSLocalizedString(@"question2cAnswer1", nil),NSLocalizedString(@"question2cAnswer2", nil),nil];
    self.question2aTitle.text=NSLocalizedString(@"question2aTitle", nil);
    self.question2bTitle.text=NSLocalizedString(@"question2bTitle", nil);
    self.question2cTitle.text=NSLocalizedString(@"question2cTitle", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark UIPickerViewDataSource

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question2aAnswer) {
        return [self.pickerViewArray objectAtIndex:row];
    }
    return [self.pickerQuestion2cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question2aAnswer) {
        return [self.pickerViewArray count];
    }
	return [self.pickerQuestion2cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView == self.question2aAnswer) {
        BOOL isHidden=!(row==2||row==3);
        self.question2bTitle.hidden=isHidden;
        self.question2bAnswer.hidden=isHidden;
        self.question2cTitle.hidden=isHidden;
        self.question2cAnswer.hidden=isHidden;
    }
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question2aAnswer selectedRowInComponent:0]],self.question2bAnswer.text,[NSString stringWithFormat:@"%d", [self.question2cAnswer selectedRowInComponent:0]], nil];
    [super setImi_cResults];
}
@end
