//
//  IMI-CQuestion17gOtherDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion17gOtherDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion17gOtherDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question17gOtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17gOtherA;
@property (weak, nonatomic) IBOutlet UITextField *question17gOtherText;
@property (weak, nonatomic) IBOutlet UILabel *question17hLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question17hAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question18Label;
@property (weak, nonatomic) IBOutlet UISwitch *question18Answer;
@property (nonatomic, retain) NSArray *question17gOtherAArray;
@property (nonatomic, retain) NSArray *question17hAnswerArray;
@end

@implementation IMI_CQuestion17gOtherDataViewController

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
    self.question17gOtherL.text=NSLocalizedString(@"question17gOtherL", nil);
    self.question17gOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.question17hLabel.text=NSLocalizedString(@"question17hLabel", nil);
    self.question17gOtherAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question17gA0", nil),NSLocalizedString(@"question17gA1", nil),NSLocalizedString(@"question17gA2", nil),nil];
    self.question17hAnswerArray = [NSArray arrayWithObjects:NSLocalizedString(@"question17hAnswer0", nil),NSLocalizedString(@"question17hAnswer1", nil),NSLocalizedString(@"question17hAnswer2", nil),nil];
    self.question18Label.text=NSLocalizedString(@"question18Label", nil);
    self.question17gOtherL.hidden=self.question17gOtherA.hidden=self.question17hLabel.hidden=self.question17hAnswer.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue];
    self.question17gOtherText.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue]||![self.question17gOtherA selectedRowInComponent:0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question17gOtherA) {
        return [self.question17gOtherAArray objectAtIndex:row];
    }
    return [self.question17hAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question17gOtherA) {
        return [self.question17gOtherAArray count];
    }
	return [self.question17hAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self getPickerValue:self.question17gOtherA]],self.question17gOtherText.text,[NSString stringWithFormat:@"%d", [self getPickerValue:self.question17hAnswer]],[NSString stringWithFormat:@"%d", [self.question18Answer isOn]], nil];
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView==self.question17gOtherA) {
        self.question17gOtherText.hidden=!row;
    }
}
-(NSInteger)getPickerValue:(UIPickerView *)pickerView{
    NSInteger row=[pickerView selectedRowInComponent:0];
    if (pickerView.isHidden) {
        return 8;
    } else {
        return row;
    }
}
@end
