//
//  IMI-CQuestion17eDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion17eDataViewController.h"

@interface IMI_CQuestion17eDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question17eL;
@property (weak, nonatomic) IBOutlet UILabel *ArcadesL;
@property (weak, nonatomic) IBOutlet UIPickerView *ArcadesA;
@property (weak, nonatomic) IBOutlet UILabel *AwningsL;
@property (weak, nonatomic) IBOutlet UIPickerView *AwningsA;
@property (weak, nonatomic) IBOutlet UILabel *question17eOtherL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17eOtherA;
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
    self.question17eAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question17eA8", nil),NSLocalizedString(@"question17eA0", nil),NSLocalizedString(@"question17eA1", nil),nil];
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
-(void)setImi_cResults{
    NSInteger ArcadesAValue;
    NSInteger ArcadesAselectedRow=[self.ArcadesA selectedRowInComponent:0];
    if (!ArcadesAselectedRow) {
        ArcadesAValue=8;
    } else {
        ArcadesAValue=ArcadesAselectedRow-1;
    }
    NSInteger AwningsAValue;
    NSInteger AwningsAselectedRow=[self.AwningsA selectedRowInComponent:0];
    if (!AwningsAselectedRow) {
        AwningsAValue=8;
    } else {
        AwningsAValue=AwningsAselectedRow-1;
    }
    NSInteger question17eOtherAValue;
    NSInteger question17eOtherAselectedRow=[self.question17eOtherA selectedRowInComponent:0];
    if (!question17eOtherAselectedRow) {
        question17eOtherAValue=8;
    } else {
        question17eOtherAValue=question17eOtherAselectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", ArcadesAValue],[NSString stringWithFormat:@"%d", AwningsAValue],[NSString stringWithFormat:@"%d", question17eOtherAValue], nil];
}

@end
