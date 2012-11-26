//
//  IMI-CQuestion16DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion16DataViewController.h"

@interface IMI_CQuestion16DataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *question16L;
@property (weak, nonatomic) IBOutlet UILabel *question16RestaurantsL;
@property (weak, nonatomic) IBOutlet UIPickerView *question16RestaurantsA;
@property (weak, nonatomic) IBOutlet UILabel *CoffeeshopsL;
@property (weak, nonatomic) IBOutlet UIPickerView *CoffeeshopsA;
@property (weak, nonatomic) IBOutlet UILabel *TeahousesL;
@property (weak, nonatomic) IBOutlet UIPickerView *TeahousesA;
@property (weak, nonatomic) IBOutlet UILabel *LibrariesbookstoresL;
@property (weak, nonatomic) IBOutlet UIPickerView *LibrariesbookstoresA;
@property (nonatomic, retain) NSArray *otherLandUsesAArray;

@end

@implementation IMI_CQuestion16DataViewController

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
    self.question16L.text=NSLocalizedString(@"question16L", nil);
    self.question16RestaurantsL.text=NSLocalizedString(@"question16RestaurantsL", nil);
    self.CoffeeshopsL.text=NSLocalizedString(@"CoffeeshopsL", nil);
    self.TeahousesL.text=NSLocalizedString(@"TeahousesL", nil);
    self.LibrariesbookstoresL.text=NSLocalizedString(@"LibrariesbookstoresL", nil);
    self.otherLandUsesAArray = [NSArray arrayWithObjects: NSLocalizedString(@"otherLandUsesA0", nil),NSLocalizedString(@"otherLandUsesA1", nil),NSLocalizedString(@"otherLandUsesA2", nil),nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.otherLandUsesAArray objectAtIndex:row];
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.otherLandUsesAArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.question16RestaurantsA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.CoffeeshopsA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.TeahousesA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.LibrariesbookstoresA selectedRowInComponent:0]], nil];
}

@end
