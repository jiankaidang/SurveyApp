//
//  IMI-CFreewaysDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/3/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CFreewaysDataViewController.h"

@interface IMI_CFreewaysDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *FreewaysLabel;
@property (weak, nonatomic) IBOutlet UILabel *question47Label;
@property (weak, nonatomic) IBOutlet UIPickerView *question47Answer;
@property (weak, nonatomic) IBOutlet UILabel *TrafficFeaturesLabel;
@property (weak, nonatomic) IBOutlet UILabel *question48Label;
@property (weak, nonatomic) IBOutlet UITextField *question48Answer;
@property (nonatomic, retain) NSArray *question47AnswerArray;
@end

@implementation IMI_CFreewaysDataViewController

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
    self.FreewaysLabel.text=NSLocalizedString(@"FreewaysLabel", nil);
    self.question47Label.text=NSLocalizedString(@"question47Label", nil);
    self.question47AnswerArray = [NSArray arrayWithObjects: NSLocalizedString(@"question47Answer0", nil),NSLocalizedString(@"question47Answer1", nil),NSLocalizedString(@"question47Answer2", nil),NSLocalizedString(@"question47Answer3", nil),nil];
    self.TrafficFeaturesLabel.text=NSLocalizedString(@"TrafficFeaturesLabel", nil);
    self.question48Label.text=NSLocalizedString(@"question48Label", nil);
    self.question48Answer.placeholder=NSLocalizedString(@"question48Answer", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.question47AnswerArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [self.question47AnswerArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d", [self.question47Answer selectedRowInComponent:0]],self.question48Answer.text, nil];
}

@end
