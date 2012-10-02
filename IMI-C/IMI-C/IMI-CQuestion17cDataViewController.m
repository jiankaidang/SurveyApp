//
//  IMI-CQuestion17cDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion17cDataViewController.h"

@interface IMI_CQuestion17cDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question17cL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17cA;
@property (weak, nonatomic) IBOutlet UILabel *question17dL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17dA;
@property (nonatomic, retain) NSArray *question17cAArray;
@property (nonatomic, retain) NSArray *question17dAArray;
@end

@implementation IMI_CQuestion17cDataViewController

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
    self.question17cL.text=NSLocalizedString(@"question17cL", nil);
    self.question17dL.text=NSLocalizedString(@"question17dL", nil);
    self.question17cAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question17cA8", nil),NSLocalizedString(@"question17cA0", nil),NSLocalizedString(@"question17cA1", nil),NSLocalizedString(@"question17cA2", nil),nil];
    self.question17dAArray = [NSArray arrayWithObjects: NSLocalizedString(@"yesnoNA8", nil),NSLocalizedString(@"yesnoNA0", nil),NSLocalizedString(@"yesnoNA1", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question17cA) {
        return [self.question17cAArray objectAtIndex:row];
    }
    return [self.question17dAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question17cA) {
        return [self.question17cAArray count];
    }
	return [self.question17dAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question17cAValue;
    NSInteger question17cAValueselectedRow=[self.question17cA selectedRowInComponent:0];
    if (!question17cAValueselectedRow) {
        question17cAValue=8;
    } else {
        question17cAValue=question17cAValueselectedRow-1;
    }
    NSInteger question17dAValue;
    NSInteger selectedRow=[self.question17dA selectedRowInComponent:0];
    if (!selectedRow) {
        question17dAValue=8;
    } else {
        question17dAValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question17cAValue],[NSString stringWithFormat:@"%d", question17dAValue], nil];
}

@end
