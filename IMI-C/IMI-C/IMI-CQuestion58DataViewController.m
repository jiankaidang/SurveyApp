//
//  IMI-CQuestion58DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion58DataViewController.h"

@interface IMI_CQuestion58DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question58Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question58Answer;
@property (weak, nonatomic) IBOutlet UILabel *DogsLabel;
@property (weak, nonatomic) IBOutlet UILabel *question59Label;
@property (weak, nonatomic) IBOutlet UISwitch *question59Answer;
@property (weak, nonatomic) IBOutlet UILabel *OlfactoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *question60Label;
@property (weak, nonatomic) IBOutlet UISwitch *question60Answer;
@property (weak, nonatomic) IBOutlet UILabel *question61Label;
@property (weak, nonatomic) IBOutlet UISwitch *question61Answer;
@property (weak, nonatomic) IBOutlet UILabel *GotonextpagetoinputcommentsLabel;
@property (nonatomic, retain) NSArray *question58AnswerArray;
@end

@implementation IMI_CQuestion58DataViewController

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
    self.question58Label.text=NSLocalizedString(@"question58Label", nil);
    self.question58AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question58Answer0", nil),NSLocalizedString(@"question58Answer1", nil),NSLocalizedString(@"question58Answer2", nil),NSLocalizedString(@"question58Answer3", nil),nil];
    self.DogsLabel.text=NSLocalizedString(@"DogsLabel", nil);
    self.question59Label.text=NSLocalizedString(@"question59Label", nil);
    self.OlfactoryLabel.text=NSLocalizedString(@"OlfactoryLabel", nil);
    self.question60Label.text=NSLocalizedString(@"question60Label", nil);
    self.question61Label.text=NSLocalizedString(@"question61Label", nil);
    self.GotonextpagetoinputcommentsLabel.text=NSLocalizedString(@"GotonextpagetoinputcommentsLabel", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question58AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question58AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question58Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question59Answer isOn]],[NSString stringWithFormat:@"%d", [self.question60Answer isOn]],[NSString stringWithFormat:@"%d", [self.question61Answer isOn]], nil];
}

@end
