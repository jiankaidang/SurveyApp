//
//  IMI-CElectricalpolesDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CElectricalpolesDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CElectricalpolesDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ElectricalpolesL;
@property (weak, nonatomic) IBOutlet UIPickerView *ElectricalpolesA;
@property (weak, nonatomic) IBOutlet UILabel *OutdoordiningL;
@property (weak, nonatomic) IBOutlet UIPickerView *OutdoordiningA;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@property (nonatomic, retain) NSArray *question17gAArray;
@end

@implementation IMI_CElectricalpolesDataViewController

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
    self.question17gAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question17gA0", nil),NSLocalizedString(@"question17gA1", nil),NSLocalizedString(@"question17gA2", nil),nil];
    self.ElectricalpolesL.text=NSLocalizedString(@"ElectricalpolesL", nil);
    self.OutdoordiningL.text=NSLocalizedString(@"OutdoordiningL", nil);
    self.ElectricalpolesL.hidden=self.ElectricalpolesA.hidden=self.OutdoordiningL.hidden=self.OutdoordiningA.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue];
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
    return [self.question17gAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.question17gAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self getPickerValue:self.ElectricalpolesA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.OutdoordiningA]], nil];
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
