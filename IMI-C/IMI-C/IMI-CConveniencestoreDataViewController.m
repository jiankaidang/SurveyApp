//
//  IMI-CConveniencestoreDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CConveniencestoreDataViewController.h"

@interface IMI_CConveniencestoreDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *ConveniencestoreL;
@property (weak, nonatomic) IBOutlet UIPickerView *ConveniencestoreA;
@property (weak, nonatomic) IBOutlet UILabel *ArtorcraftgalleriesL;
@property (weak, nonatomic) IBOutlet UIPickerView *ArtorcraftgalleriesA;
@property (weak, nonatomic) IBOutlet UILabel *WinebarsloungesL;
@property (weak, nonatomic) IBOutlet UIPickerView *WinebarsloungesA;
@property (weak, nonatomic) IBOutlet UILabel *FarmersmarketL;
@property (weak, nonatomic) IBOutlet UISwitch *FarmersmarketA;
@property (weak, nonatomic) IBOutlet UILabel *InformalsellersL;
@property (weak, nonatomic) IBOutlet UISwitch *InformalsellersA;
@property (weak, nonatomic) IBOutlet UILabel *SidewalksL;
@property (weak, nonatomic) IBOutlet UILabel *question17aL;
@property (weak, nonatomic) IBOutlet UITextField *question17aA;
@property (weak, nonatomic) IBOutlet UILabel *question17bL;
@property (weak, nonatomic) IBOutlet UIPickerView *question17bA;
@property (nonatomic, retain) NSArray *question17bAArray;
@property (nonatomic, retain) NSArray *otherLandUsesAArray;
@end

@implementation IMI_CConveniencestoreDataViewController

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
    self.ConveniencestoreL.text=NSLocalizedString(@"ConveniencestoreL", nil);
    self.ArtorcraftgalleriesL.text=NSLocalizedString(@"ArtorcraftgalleriesL", nil);
    self.WinebarsloungesL.text=NSLocalizedString(@"WinebarsloungesL", nil);
    self.FarmersmarketL.text=NSLocalizedString(@"FarmersmarketL", nil);
    self.InformalsellersL.text=NSLocalizedString(@"InformalsellersL", nil);
    self.SidewalksL.text=NSLocalizedString(@"SidewalksL", nil);
    self.question17aL.text=NSLocalizedString(@"question17aL", nil);
    self.question17aA.placeholder=NSLocalizedString(@"question17aA", nil);
    self.question17bL.text=NSLocalizedString(@"question17bL", nil);
    self.otherLandUsesAArray = [NSArray arrayWithObjects: NSLocalizedString(@"otherLandUsesA0", nil),NSLocalizedString(@"otherLandUsesA1", nil),NSLocalizedString(@"otherLandUsesA2", nil),nil];
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
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.ConveniencestoreA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.ArtorcraftgalleriesA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.WinebarsloungesA selectedRowInComponent:0]],[NSString stringWithFormat:@"%d",[self.FarmersmarketA isOn]],[NSString stringWithFormat:@"%d",[self.InformalsellersA isOn]],self.question17aA.text,[NSString stringWithFormat:@"%d", question17bAValue], nil];
}

@end
