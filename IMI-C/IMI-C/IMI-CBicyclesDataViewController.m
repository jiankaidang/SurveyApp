//
//  IMI-CBicyclesDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CBicyclesDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CBicyclesDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *BicyclesLabel;
@property (weak, nonatomic) IBOutlet UILabel *question19aLabel;
@property (weak, nonatomic) IBOutlet UISwitch *question19aAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question19bLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *question19bAnswer;
- (IBAction)question19aAction:(id)sender;
@property (nonatomic, retain) NSArray *question19bAnswerArray;
@end

@implementation IMI_CBicyclesDataViewController

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
    self.BicyclesLabel.text=NSLocalizedString(@"BicyclesLabel", nil);
    self.question19aLabel.text=NSLocalizedString(@"question19aLabel", nil);
    self.question19bLabel.text=NSLocalizedString(@"question19bLabel", nil);
    self.question19bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question19bAnswer1", nil),NSLocalizedString(@"question19bAnswer2", nil),NSLocalizedString(@"question19bAnswer3", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question19bAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question19bAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    BOOL question19aAnswerValue=[self.question19aAnswer isOn];
    NSInteger question19bAnswerValue=8;
    if (question19aAnswerValue) {
        question19bAnswerValue=[self.question19bAnswer selectedRowInComponent:0]+1;    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question19aAnswerValue],[NSString stringWithFormat:@"%d", question19bAnswerValue], nil];
}
- (IBAction)question19aAction:(id)sender {
    BOOL isHidden=![(UISwitch *)sender isOn];
    self.question19bLabel.hidden=isHidden;
    self.question19bAnswer.hidden=isHidden;
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:!isHidden] forKeyedSubscript:@"question19aActionIsHidden"];
}
@end
