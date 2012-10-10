//
//  IMI-CQuestion10_12DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/9/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion10_12DataViewController.h"

@interface IMI_CQuestion10_12DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q7_11T;
@property (weak, nonatomic) IBOutlet UILabel *NeighborhoodIdentificationLabel;
@property (weak, nonatomic) IBOutlet UILabel *q10T;
@property (weak, nonatomic) IBOutlet UIPickerView *q10A;
@property (nonatomic, retain) NSArray *q10AArray;

@end

@implementation IMI_CQuestion10_12DataViewController

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
    self.q7_11T.text=NSLocalizedString(@"q7_11T", nil);
    self.NeighborhoodIdentificationLabel.text=NSLocalizedString(@"neighborhoodIdentificationTitle", nil);
    self.q10T.text=NSLocalizedString(@"q10T", nil);
    self.q10AArray = [NSArray arrayWithObjects: NSLocalizedString(@"q10A0", nil),NSLocalizedString(@"q10A1", nil),NSLocalizedString(@"q10A2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.q10AArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.q10AArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.q10A selectedRowInComponent:0]], nil];
}
@end
