//
//  IMI-CQuestion17eDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion17eDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion17eDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question17eL;
@property (weak, nonatomic) IBOutlet UILabel *ArcadesL;
@property (weak, nonatomic) IBOutlet UIPickerView *ArcadesA;
@property (weak, nonatomic) IBOutlet UILabel *AwningsL;
@property (weak, nonatomic) IBOutlet UIPickerView *AwningsA;
@property (weak, nonatomic) IBOutlet UILabel *question17eOtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17eOtherA;
@property (weak, nonatomic) IBOutlet UITextField *question17eOtherText;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@property (nonatomic, retain) NSArray *question17eAArray;
@end

@implementation IMI_CQuestion17eDataViewController

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
    self.question17eL.text=NSLocalizedString(@"question17eL", nil);
    self.ArcadesL.text=NSLocalizedString(@"ArcadesL", nil);
    self.AwningsL.text=NSLocalizedString(@"AwningsL", nil);
    self.question17eOtherL.text=NSLocalizedString(@"question17eOtherL", nil);
    self.question17eOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.question17eAArray = [NSArray arrayWithObjects:NSLocalizedString(@"question17eA0", nil),NSLocalizedString(@"question17eA1", nil),nil];
    self.question17eL.hidden=self.ArcadesL.hidden=self.ArcadesA.hidden=self.AwningsL.hidden=self.AwningsA.hidden=self.question17eOtherL.hidden=self.question17eOtherA.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue];
    self.question17eOtherText.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue]||![self.question17eOtherA selectedRowInComponent:0];
    self.SkiptonextpageLabel.text=NSLocalizedString(@"SkiptonextpageLabel", nil);
    self.SkiptonextpageLabel.hidden=[[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question17eAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question17eAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (pickerView==self.question17eOtherA) {
        self.question17eOtherText.hidden=![self.question17eOtherA selectedRowInComponent:0];
    }
}
-(void)setImi_cResults{
    NSInteger ArcadesAValue;
    NSInteger ArcadesAselectedRow=[self.ArcadesA selectedRowInComponent:0];
    if (self.ArcadesA.isHidden) {
        ArcadesAValue=8;
    } else {
        ArcadesAValue=ArcadesAselectedRow;
    }
    NSInteger AwningsAValue;
    NSInteger AwningsAselectedRow=[self.AwningsA selectedRowInComponent:0];
    if (self.AwningsA.isHidden) {
        AwningsAValue=8;
    } else {
        AwningsAValue=AwningsAselectedRow;
    }
    NSInteger question17eOtherAValue;
    NSInteger question17eOtherAselectedRow=[self.question17eOtherA selectedRowInComponent:0];
    if (self.question17eOtherA.isHidden) {
        question17eOtherAValue=8;
    } else {
        question17eOtherAValue=question17eOtherAselectedRow;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", ArcadesAValue],[NSString stringWithFormat:@"%d", AwningsAValue],[NSString stringWithFormat:@"%d", question17eOtherAValue],self.question17eOtherText.text, nil];
}

@end
