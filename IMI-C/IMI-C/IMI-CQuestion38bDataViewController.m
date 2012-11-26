//
//  IMI-CQuestion38bDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 11/26/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion38bDataViewController.h"

@interface IMI_CQuestion38bDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question38bL;
@property (weak, nonatomic) IBOutlet UIPickerView *question38bA;
@property (weak, nonatomic) IBOutlet UILabel *question38cL;
@property (weak, nonatomic) IBOutlet UIPickerView *question38cA;
@property (nonatomic, retain) NSArray *question38bAnswerArray;
@property (nonatomic, retain) NSArray *question38cAnswerArray;
@end

@implementation IMI_CQuestion38bDataViewController

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
    self.question38bL.text=NSLocalizedString(@"question38bL", nil);
    self.question38cL.text=NSLocalizedString(@"question38cL", nil);
    self.question38bAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question38bAnswer0", nil),NSLocalizedString(@"question38bAnswer1", nil),NSLocalizedString(@"question38bAnswer2", nil),nil];
    self.question38cAnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"somealotfewnoneNA0", nil),NSLocalizedString(@"somealotfewnoneNA1", nil),NSLocalizedString(@"somealotfewnoneNA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (pickerView==self.question38bA) {
        return [self.question38bAnswerArray objectAtIndex:row];
    }
    return [self.question38cAnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (pickerView==self.question38bA) {
        return [self.question38bAnswerArray count];
    }
    return [self.question38cAnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question38bA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d", [self.question38cA selectedRowInComponent:0]], nil];
}
@end
