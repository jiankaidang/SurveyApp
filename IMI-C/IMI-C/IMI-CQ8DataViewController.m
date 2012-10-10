//
//  IMI-CQ8DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQ8DataViewController.h"

@interface IMI_CQ8DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q8T;
@property (weak, nonatomic) IBOutlet UIPickerView *q8A;
@property (nonatomic, retain) NSArray *q8AArray;
@property (weak, nonatomic) IBOutlet UILabel *q9T;
@property (weak, nonatomic) IBOutlet UISwitch *q9A;

@end

@implementation IMI_CQ8DataViewController

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
    self.q8T.text=NSLocalizedString(@"q8T", nil);
    self.q8AArray = [NSArray arrayWithObjects: NSLocalizedString(@"q7A8", nil),NSLocalizedString(@"q7A0", nil),NSLocalizedString(@"q7A1", nil),NSLocalizedString(@"q7A2", nil),nil];
    self.q9T.text=NSLocalizedString(@"q9T", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
        return [self.q8AArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
        return [self.q8AArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger q8AValue;
    NSInteger selectedRow=[self.q8A selectedRowInComponent:0];
    if (!selectedRow) {
        q8AValue=8;
    } else {
        q8AValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", q8AValue],[NSString stringWithFormat:@"%d",[self.q9A isOn]], nil];
}

@end
