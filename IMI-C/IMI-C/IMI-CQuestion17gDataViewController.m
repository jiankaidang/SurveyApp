//
//  IMI-CQuestion17gDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion17gDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion17gDataViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *TreesplantedinthemiddleofthesidewalkA;
@property (weak, nonatomic) IBOutlet UILabel *TreesplantedinthemiddleofthesidewalkL;
@property (weak, nonatomic) IBOutlet UIPickerView *StreetvendorsorinformalsellersA;
@property (weak, nonatomic) IBOutlet UILabel *StreetvendorsorinformalsellersL;
@property (weak, nonatomic) IBOutlet UIPickerView *ParkedbicyclesormotorcyclesA;
@property (weak, nonatomic) IBOutlet UILabel *ParkedbicyclesormotorcyclesL;
@property (weak, nonatomic) IBOutlet UILabel *ParkedcarsL;
@property (weak, nonatomic) IBOutlet UILabel *question17gL;
@property (weak, nonatomic) IBOutlet UIPickerView *ParkedcarsA;
@property (weak, nonatomic) IBOutlet UILabel *SkiptonextpageLabel;
@property (nonatomic, retain) NSArray *question17gAArray;
@end

@implementation IMI_CQuestion17gDataViewController

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
    self.question17gL.text=NSLocalizedString(@"question17gL", nil);
    self.ParkedcarsL.text=NSLocalizedString(@"ParkedcarsL", nil);
    self.ParkedbicyclesormotorcyclesL.text=NSLocalizedString(@"ParkedbicyclesormotorcyclesL", nil);
    self.StreetvendorsorinformalsellersL.text=NSLocalizedString(@"StreetvendorsorinformalsellersL", nil);
    self.TreesplantedinthemiddleofthesidewalkL.text=NSLocalizedString(@"TreesplantedinthemiddleofthesidewalkL", nil);
    self.question17gL.hidden=self.ParkedcarsL.hidden=self.ParkedcarsA.hidden=self.ParkedbicyclesormotorcyclesL.hidden=self.ParkedbicyclesormotorcyclesA.hidden=self.StreetvendorsorinformalsellersL.hidden=self.StreetvendorsorinformalsellersA.hidden=self.TreesplantedinthemiddleofthesidewalkL.hidden=self.TreesplantedinthemiddleofthesidewalkA.hidden=![[self.imi_cModelController.gloableData objectForKeyedSubscript:@"question17aAnswer"] boolValue];
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
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self getPickerValue:self.ParkedcarsA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.ParkedbicyclesormotorcyclesA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.StreetvendorsorinformalsellersA]],[NSString stringWithFormat:@"%d", [self getPickerValue:self.TreesplantedinthemiddleofthesidewalkA]], nil];
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
