//
//  IMI-CSidewalksDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CSidewalksDataViewController.h"

@interface IMI_CSidewalksDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *SidewalksL;
@property (weak, nonatomic) IBOutlet UILabel *question17aL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17aA;
@property (weak, nonatomic) IBOutlet UILabel *question17bL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17bA;
@property (nonatomic, retain) NSArray *question17bAArray;
@property (nonatomic, retain) NSArray *otherLandUsesAArray;

@end

@implementation IMI_CSidewalksDataViewController

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
    self.SidewalksL.text=NSLocalizedString(@"SidewalksL", nil);
    self.question17aL.text=NSLocalizedString(@"question17aL", nil);
    self.question17bL.text=NSLocalizedString(@"question17bL", nil);
    self.otherLandUsesAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question17a0", nil),NSLocalizedString(@"question17a1", nil),NSLocalizedString(@"question17a2", nil),nil];
    self.question17bAArray = [NSArray arrayWithObjects: NSLocalizedString(@"question17bA8", nil),NSLocalizedString(@"question17bA0", nil),NSLocalizedString(@"question17bA1", nil),NSLocalizedString(@"question17bA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question17bA) {
        return [self.question17bAArray objectAtIndex:row];
    }
    return [self.otherLandUsesAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question17bA) {
        return [self.question17bAArray count];
    }
	return [self.otherLandUsesAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    NSInteger question17bAValue;
    NSInteger selectedRow=[self.question17bA selectedRowInComponent:0];
    if (!selectedRow) {
        question17bAValue=8;
    } else {
        question17bAValue=selectedRow-1;
    }
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.question17aA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", question17bAValue], nil];
}


@end
