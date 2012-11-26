//
//  IMI-CStreetTreesDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CStreetTreesDataViewController.h"

@interface IMI_CStreetTreesDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *StreetTreesLabel;
@property (weak, nonatomic) IBOutlet UILabel *question28aLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question28aAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question28bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question28bAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question28cLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question28cAnswer;
@property (nonatomic, retain) NSArray *question28aAnswerArray;
@property (nonatomic, retain) NSArray *question28bAnswerArray;
@property (nonatomic, retain) NSArray *question28cAnswerArray;
@end

@implementation IMI_CStreetTreesDataViewController

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
    self.StreetTreesLabel.text=NSLocalizedString(@"StreetTreesLabel", nil);
    self.question28aLabel.text=NSLocalizedString(@"question28aLabel", nil);
    self.question28aAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
    self.question28bLabel.text=NSLocalizedString(@"question28bLabel", nil);
    self.question28bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question28bAnswer1", nil),NSLocalizedString(@"question28bAnswer2", nil),nil];
    self.question28cLabel.text=NSLocalizedString(@"question28cLabel", nil);
    self.question28cAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question14c0", nil),NSLocalizedString(@"question14c1", nil),NSLocalizedString(@"question14c2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question28aAnswer) {
        return [self.question28aAnswerArray objectAtIndex:row];
    }
    if (pickerView==self.question28bAnswer) {
        return [self.question28bAnswerArray objectAtIndex:row];
    }
    return [self.question28cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question28aAnswer) {
        return [self.question28aAnswerArray count];
    }
    if (pickerView==self.question28bAnswer) {
        return [self.question28bAnswerArray count];
    }
	return [self.question28cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question28bAnswerValue=8;
    NSInteger question28cAnswerValue=8;
    NSInteger question28aAnswerselectedRow=[self.question28aAnswer selectedRowInComponent:0];
    if (question28aAnswerselectedRow) {
        question28bAnswerValue=[self.question28bAnswer selectedRowInComponent:0]+1;
        question28cAnswerValue=[self.question28cAnswer selectedRowInComponent:0];
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question28aAnswerselectedRow],[NSString stringWithFormat:@"%d", question28bAnswerValue],[NSString stringWithFormat:@"%d", question28cAnswerValue], nil];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView==self.question28aAnswer) {
        BOOL isHidden=!row;
        self.question28bLabel.hidden=isHidden;
        self.question28bAnswer.hidden=isHidden;
        self.question28cLabel.hidden=isHidden;
        self.question28cAnswer.hidden=isHidden;
    }
}
@end
