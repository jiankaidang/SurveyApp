//
//  IMI-CQuestion55DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion55DataViewController.h"

@interface IMI_CQuestion55DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question55Label;
@property (weak, nonatomic) IBOutlet UISwitch *question55Answer;
@property (weak, nonatomic) IBOutlet UILabel *question56Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question56Answer;
@property (weak, nonatomic) IBOutlet UILabel *question57Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question57Answer;
@property (nonatomic, retain) NSArray *question56AnswerArray;
@property (nonatomic, retain) NSArray *question57AnswerArray;
@end

@implementation IMI_CQuestion55DataViewController

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
    self.question55Label.text=NSLocalizedString(@"question55Label", nil);
    self.question56Label.text=NSLocalizedString(@"question56Label", nil);
    self.question56AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
    self.question57Label.text=NSLocalizedString(@"question57Label", nil);
    self.question57AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question57Answer0", nil),NSLocalizedString(@"question57Answer1", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question56Answer) {
        return [self.question56AnswerArray objectAtIndex:row];
    }
    return [self.question57AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question56Answer) {
        return [self.question56AnswerArray count];
    }
	return [self.question57AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question55Answer isOn]],[NSString stringWithFormat:@"%d", [self.question56Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question57Answer selectedRowInComponent:0]], nil];
}

@end
