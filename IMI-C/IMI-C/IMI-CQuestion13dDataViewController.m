//
//  IMI-CQuestion13dDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion13dDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion13dDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *quetion13dL;
@property (weak, nonatomic) IBOutlet UILabel *question13dRetailL;
@property (weak, nonatomic) IBOutlet UIPickerView *question13dRetailA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dOfficeL;
@property (weak, nonatomic) IBOutlet UIPickerView *quetion13dOfficeA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dCommercialL;
@property (weak, nonatomic) IBOutlet UIPickerView *quetion13dCommercialA;
@property (weak, nonatomic) IBOutlet UILabel *question13dServiceL;
@property (weak, nonatomic) IBOutlet UIPickerView *question13dServiceA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dResidentialL;
@property (weak, nonatomic) IBOutlet UIPickerView *quetion13dResidentialA;
@property (weak, nonatomic) IBOutlet UILabel *quetion13dOtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *quetion13dOtherA;
@property (weak, nonatomic) IBOutlet UITextField *quetion13dOtherText;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@property (nonatomic, retain) NSArray *questioin13dAArray;
@property bool questioin13bAIsYes;
@end

@implementation IMI_CQuestion13dDataViewController

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
    self.quetion13dL.text=NSLocalizedString(@"quetion13dL", nil);
    self.question13dRetailL.text=NSLocalizedString(@"question13dRetailL", nil);
    self.quetion13dOfficeL.text=NSLocalizedString(@"quetion13dOfficeL", nil);
    self.quetion13dCommercialL.text=NSLocalizedString(@"quetion13dCommercialL", nil);
    self.question13dServiceL.text=NSLocalizedString(@"question13dServiceL", nil);
    self.quetion13dResidentialL.text=NSLocalizedString(@"quetion13dResidentialL", nil);
    self.quetion13dOtherL.text=NSLocalizedString(@"quetion13dOtherL", nil);
    self.quetion13dOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.questioin13dAArray = [NSArray arrayWithObjects: NSLocalizedString(@"questioin13dAArray8", nil),NSLocalizedString(@"questioin13dAArray0", nil),NSLocalizedString(@"questioin13dAArray1", nil),nil];
    self.questioin13bAIsYes=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"questioin13bAIsYes"] boolValue];
    self.SkiptonextpageLabel.text=NSLocalizedString(@"SkiptonextpageLabel", nil);
    self.SkiptonextpageLabel.hidden=self.questioin13bAIsYes;
    self.quetion13dL.hidden=self.question13dRetailL.hidden=self.question13dRetailA.hidden=self.quetion13dOfficeL.hidden=self.quetion13dOfficeA.hidden=self.quetion13dCommercialL.hidden=self.quetion13dCommercialA.hidden=self.question13dServiceL.hidden=self.question13dServiceA.hidden=self.quetion13dResidentialL.hidden=self.quetion13dResidentialA.hidden=self.quetion13dOtherL.hidden=self.quetion13dOtherA.hidden=!self.questioin13bAIsYes;
    self.quetion13dOtherText.hidden=!self.questioin13bAIsYes||[self.quetion13dOtherA selectedRowInComponent:0]!=2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.questioin13dAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.questioin13dAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (pickerView==self.quetion13dOtherA) {
        self.quetion13dOtherText.hidden=row==1||!self.questioin13bAIsYes;
    }
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self getQuestion13dAnswerValue:self.question13dRetailA]],[NSString stringWithFormat:@"%d",[self getQuestion13dAnswerValue:self.quetion13dOfficeA]],[NSString stringWithFormat:@"%d",[self getQuestion13dAnswerValue:self.quetion13dCommercialA]],[NSString stringWithFormat:@"%d",[self getQuestion13dAnswerValue:self.question13dServiceA]],[NSString stringWithFormat:@"%d",[self getQuestion13dAnswerValue:self.quetion13dResidentialA]],[NSString stringWithFormat:@"%d",[self getQuestion13dAnswerValue:self.quetion13dOtherA]],self.quetion13dOtherText.text, nil];
}
-(NSInteger)getQuestion13dAnswerValue:(UIPickerView *)pickerView{
    NSInteger selectedRow=[pickerView selectedRowInComponent:0];
    if (!selectedRow||!self.questioin13bAIsYes) {
        return 8;
    }
    return selectedRow-1;    
}
@end
