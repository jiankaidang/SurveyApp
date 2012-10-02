//
//  IMI-CQuestioin14bDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestioin14bDataViewController.h"

@interface IMI_CQuestioin14bDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question14bL;
@property (weak, nonatomic) IBOutlet UIPickerView *question14bA;
@property (nonatomic, retain) NSArray *question14bAArray;
@property (weak, nonatomic) IBOutlet UILabel *question14cL;
@property (weak, nonatomic) IBOutlet UIPickerView *question14cA;
@property (nonatomic, retain) NSArray *question14cAArray;

@end

@implementation IMI_CQuestioin14bDataViewController

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
    self.question14bL.text=NSLocalizedString(@"question14bL", nil);
    self.question14bAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question14b8", nil),NSLocalizedString(@"question14b0", nil),NSLocalizedString(@"question14b1", nil),NSLocalizedString(@"question14b2", nil),nil];
    self.question14cL.text=NSLocalizedString(@"question14cL", nil);
    self.question14cAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question14c0", nil),NSLocalizedString(@"question14c1", nil),NSLocalizedString(@"question14c2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question14bA) {
        return [self.question14bAArray objectAtIndex:row];
    }
    return [self.question14cAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question14bA) {
        return [self.question14bAArray count];
    }
	return [self.question14cAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question14bAValue;
    NSInteger selectedRow=[self.question14bA selectedRowInComponent:0];
    if (!selectedRow) {
        question14bAValue=8;
    } else {
        question14bAValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", question14bAValue],[NSString stringWithFormat:@"%d",[self.question14cA selectedRowInComponent:0]], nil];
}

@end
