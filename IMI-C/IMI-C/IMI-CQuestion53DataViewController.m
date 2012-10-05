//
//  IMI-CQuestion53DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion53DataViewController.h"

@interface IMI_CQuestion53DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question53Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question53Answer;
@property (weak, nonatomic) IBOutlet UILabel *OtherFeaturesoftheSegmentLabel;
@property (weak, nonatomic) IBOutlet UILabel *questioin54Label;
@property (weak, nonatomic) IBOutlet UIPickerView *questioin54Answer;
@property (nonatomic, retain) NSArray *question53AnswerArray;
@property (nonatomic, retain) NSArray *question54AnswerArray;
@end

@implementation IMI_CQuestion53DataViewController

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
    self.question53Label.text=NSLocalizedString(@"question53Label", nil);
    self.question53AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question53Answer0", nil),NSLocalizedString(@"question53Answer1", nil),NSLocalizedString(@"question53Answer2", nil),nil];
    self.OtherFeaturesoftheSegmentLabel.text=NSLocalizedString(@"OtherFeaturesoftheSegmentLabel", nil);
    self.questioin54Label.text=NSLocalizedString(@"questioin54Label", nil);
    self.question54AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question53Answer) {
        return [self.question53AnswerArray objectAtIndex:row];
    }
    return [self.question54AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question53Answer) {
        return [self.question53AnswerArray count];
    }
	return [self.question54AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question53Answer selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.questioin54Answer selectedRowInComponent:0]], nil];
}

@end
