//
//  IMI-CQuestion14aDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion14aDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CQuestion14aDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question14aL;
@property (weak, nonatomic) IBOutlet UILabel *ParkplaygroundL;
@property (weak, nonatomic) IBOutlet UIPickerView *ParkplaygroundA;
@property (weak, nonatomic) IBOutlet UILabel *ExerciseareaL;
@property (weak, nonatomic) IBOutlet UIPickerView *ExerciseareaA;
@property (weak, nonatomic) IBOutlet UILabel *PlayingorsportfieldL;
@property (weak, nonatomic) IBOutlet UIPickerView *PlayingorsportfieldA;
@property (weak, nonatomic) IBOutlet UILabel *PlazasquarecourtyardL;
@property (weak, nonatomic) IBOutlet UIPickerView *PlazasquarecourtyardA;
@property (weak, nonatomic) IBOutlet UILabel *PublicgardenL;
@property (weak, nonatomic) IBOutlet UIPickerView *PublicgardenA;
@property (weak, nonatomic) IBOutlet UILabel *BeachL;
@property (weak, nonatomic) IBOutlet UIPickerView *BeachA;
@property (weak, nonatomic) IBOutlet UILabel *question14aOtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *question14aOtherA;
@property (weak, nonatomic) IBOutlet UITextField *question14aOtherText;
@property (nonatomic, retain) NSArray *questio14aAArray;
@end

@implementation IMI_CQuestion14aDataViewController

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
    self.question14aL.text=NSLocalizedString(@"question14aL", nil);
    self.ParkplaygroundL.text=NSLocalizedString(@"ParkplaygroundL", nil);
    self.ExerciseareaL.text=NSLocalizedString(@"ExerciseareaL", nil);
    self.PlayingorsportfieldL.text=NSLocalizedString(@"PlayingorsportfieldL", nil);
    self.PlazasquarecourtyardL.text=NSLocalizedString(@"PlazasquarecourtyardL", nil);
    self.PublicgardenL.text=NSLocalizedString(@"PublicgardenL", nil);
    self.BeachL.text=NSLocalizedString(@"BeachL", nil);
    self.question14aOtherL.text=NSLocalizedString(@"question14aOtherL", nil);
    self.question14aOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.questio14aAArray = [NSArray arrayWithObjects: NSLocalizedString(@"questio14aAnswer0", nil),NSLocalizedString(@"questio14aAnswer1", nil),NSLocalizedString(@"questio14aAnswer2", nil),NSLocalizedString(@"questio14aAnswer3", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.questio14aAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.questio14aAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    [self.imi_cModelController.gloableData setObject:[NSNumber numberWithInt:[self.ParkplaygroundA selectedRowInComponent:0]+[self.ExerciseareaA selectedRowInComponent:0]+[self.PlayingorsportfieldA selectedRowInComponent:0]+[self.PlazasquarecourtyardA selectedRowInComponent:0]+[self.PublicgardenA selectedRowInComponent:0]+[self.BeachA selectedRowInComponent:0]+[self.question14aOtherA selectedRowInComponent:0]] forKeyedSubscript:@"question14a"];
    if (pickerView==self.question14aOtherA) {
        self.question14aOtherText.hidden=![self.question14aOtherA selectedRowInComponent:0];
    }
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.ParkplaygroundA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.ExerciseareaA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.PlayingorsportfieldA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.PlazasquarecourtyardA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.PublicgardenA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.BeachA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.question14aOtherA selectedRowInComponent:0]],self.question14aOtherText.text, nil];
}

@end
