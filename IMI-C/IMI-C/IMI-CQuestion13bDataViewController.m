//
//  IMI-CQuestion13bDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion13bDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion13bDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questioin13bL;
@property (weak, nonatomic) IBOutlet UIPickerView *questioin13bA;
@property (nonatomic, retain) NSArray *questioin13bAArray;
@property (weak, nonatomic) IBOutlet UILabel *question13cL;
@property (weak, nonatomic) IBOutlet UILabel *question13cRetailL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cRetailA;
@property (weak, nonatomic) IBOutlet UILabel *question13cOfficeL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cOfficeA;
@property (weak, nonatomic) IBOutlet UILabel *question13cRestaurantsLL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cRestaurantsLA;
@property (weak, nonatomic) IBOutlet UILabel *Question13cServiceLabel;
@property (weak, nonatomic) IBOutlet UISwitch *Question13cServiceAnswer;
@property (weak, nonatomic) IBOutlet UILabel *question13cOtherL;
@property (weak, nonatomic) IBOutlet UISwitch *question13cOtherA;
- (IBAction)question13cOtherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *question13cOtherText;

@end

@implementation IMI_CQuestion13bDataViewController

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
    self.questioin13bL.text=NSLocalizedString(@"questioin13bL", nil);
    self.questioin13bAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question13bAnswer8", nil),NSLocalizedString(@"question13bAnswer0", nil),NSLocalizedString(@"question13bAnswer1", nil),nil];
    self.question13cL.text=NSLocalizedString(@"question13cL", nil);
    self.question13cRetailL.text=NSLocalizedString(@"question13cRetailL", nil);
    self.question13cOfficeL.text=NSLocalizedString(@"question13cOfficeL", nil);
    self.question13cRestaurantsLL.text=NSLocalizedString(@"question13cRestaurantsLL", nil);
    self.Question13cServiceLabel.text=NSLocalizedString(@"Question13cServiceLabel", nil);
    self.question13cOtherL.text=NSLocalizedString(@"question13cOtherL", nil);
    self.question13cOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.questioin13bAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.questioin13bAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    BOOL isYes=row==2;
    self.question13cL.hidden=!isYes;
    self.question13cRetailL.hidden=!isYes;
    self.question13cRetailA.hidden=!isYes;
    self.question13cOfficeL.hidden=!isYes;
    self.question13cOfficeA.hidden=!isYes;
    self.question13cRestaurantsLL.hidden=!isYes;
    self.question13cRestaurantsLA.hidden=!isYes;
    self.Question13cServiceLabel.hidden=!isYes;
    self.Question13cServiceAnswer.hidden=!isYes;
    self.question13cOtherL.hidden=!isYes;
    self.question13cOtherA.hidden=!isYes;
    self.question13cOtherText.hidden=!isYes||![self.question13cOtherA isOn];
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithBool:isYes] forKeyedSubscript:@"questioin13bAIsYes"];
}
-(void)setImi_cResults{
    NSInteger question13bAnswerValue;
    NSInteger selectedRow=[self.questioin13bA selectedRowInComponent:0];
    if (!selectedRow) {
        question13bAnswerValue=8;
    } else {
        question13bAnswerValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",question13bAnswerValue],[NSString stringWithFormat:@"%d",[self.question13cRetailA isOn]],[NSString stringWithFormat:@"%d",[self.question13cOfficeA isOn]],[NSString stringWithFormat:@"%d",[self.question13cRestaurantsLA isOn]],[NSString stringWithFormat:@"%d",[self.Question13cServiceAnswer isOn]],[NSString stringWithFormat:@"%d",[self.question13cOtherA isOn]],self.question13cOtherText.text, nil];
}

- (IBAction)question13cOtherAction:(UISwitch *)sender {
    self.question13cOtherText.hidden=![sender isOn];
}
@end
