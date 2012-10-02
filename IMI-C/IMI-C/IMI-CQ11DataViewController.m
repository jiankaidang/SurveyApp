//
//  IMI-CQ11DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/1/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQ11DataViewController.h"

@interface IMI_CQ11DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *streetL;
@property (weak, nonatomic) IBOutlet UILabel *q11L;
@property (weak, nonatomic) IBOutlet UIPickerView *q11A;
@property (nonatomic, retain) NSArray *q11AArray;
@property (weak, nonatomic) IBOutlet UILabel *intendedL;
@property (weak, nonatomic) IBOutlet UISwitch *intendedA;
@property (weak, nonatomic) IBOutlet UILabel *alleyL;
@property (weak, nonatomic) IBOutlet UISwitch *alleyA;
@property (weak, nonatomic) IBOutlet UILabel *narrowL;
@property (weak, nonatomic) IBOutlet UISwitch *narrowA;
@property (weak, nonatomic) IBOutlet UILabel *stairsL;
@property (weak, nonatomic) IBOutlet UISwitch *stairsA;
@property (weak, nonatomic) IBOutlet UILabel *q12aL;
@property (weak, nonatomic) IBOutlet UITextField *q12aA;
@property (weak, nonatomic) IBOutlet UILabel *q12bL;
@property (weak, nonatomic) IBOutlet UITextField *q12bA;
@property (weak, nonatomic) IBOutlet UILabel *q12cL;
@property (weak, nonatomic) IBOutlet UITextField *q12cA;

@end

@implementation IMI_CQ11DataViewController

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
    self.streetL.text=NSLocalizedString(@"streetL", nil);
    self.q11L.text=NSLocalizedString(@"q11L", nil);
    self.q11AArray = [NSArray arrayWithObjects: NSLocalizedString(@"q11A1", nil),NSLocalizedString(@"q11A2", nil),nil];
    self.intendedL.text=NSLocalizedString(@"intendedL", nil);
    self.alleyL.text=NSLocalizedString(@"alleyL", nil);
    self.narrowL.text=NSLocalizedString(@"narrowL", nil);
    self.stairsL.text=NSLocalizedString(@"stairsL", nil);
    self.q12aL.text=NSLocalizedString(@"q12aL", nil);
    self.q12aA.placeholder=NSLocalizedString(@"q12aA", nil);
    self.q12bL.text=NSLocalizedString(@"q12bL", nil);
    self.q12bA.placeholder=NSLocalizedString(@"q12aA", nil);
    self.q12cL.text=NSLocalizedString(@"q12cL", nil);
    self.q12cA.placeholder=NSLocalizedString(@"q12aA", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.q11AArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.q11AArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.q11A selectedRowInComponent:0]+1],[NSString stringWithFormat:@"%d",[self.intendedA isOn]],[NSString stringWithFormat:@"%d",[self.alleyA isOn]],[NSString stringWithFormat:@"%d",[self.narrowA isOn]],[NSString stringWithFormat:@"%d",[self.stairsA isOn]],self.q12aA.text,self.q12bA.text,self.q12cA.text, nil];
}


@end
