//
//  IMI-COfficeDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-COfficeDataViewController.h"

@interface IMI_COfficeDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *OfficeServiceL;
@property (weak, nonatomic) IBOutlet UILabel *OfficesL;
@property (weak, nonatomic) IBOutlet UISwitch *OfficesA;
@property (weak, nonatomic) IBOutlet UILabel *ServicefacilitiesL;
@property (weak, nonatomic) IBOutlet UISwitch *ServicefacilitiesA;
@property (weak, nonatomic) IBOutlet UILabel *OfficeserviceotherL;
@property (weak, nonatomic) IBOutlet UISwitch *OfficeserviceotherA;
- (IBAction)OfficeserviceotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *OfficeserviceotherText;
@property (weak, nonatomic) IBOutlet UILabel *IndustrialManufacturingL;
@property (weak, nonatomic) IBOutlet UILabel *LightindustrialL;
@property (weak, nonatomic) IBOutlet UISwitch *LightindustrialA;
@property (weak, nonatomic) IBOutlet UILabel *MediumorheavyindustrialL;
@property (weak, nonatomic) IBOutlet UISwitch *MediumorheavyindustrialA;
@property (weak, nonatomic) IBOutlet UILabel *IndustrialotherL;
@property (weak, nonatomic) IBOutlet UISwitch *IndustrialotherA;
- (IBAction)IndustrialotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *IndustrialotherText;
@property (weak, nonatomic) IBOutlet UILabel *Question13aOtherL;
@property (weak, nonatomic) IBOutlet UILabel *HarbormarinaL;
@property (weak, nonatomic) IBOutlet UISwitch *HarbormarinaA;
@property (weak, nonatomic) IBOutlet UILabel *UndevelopedlandL;
@property (weak, nonatomic) IBOutlet UISwitch *UndevelopedlandA;
@property (weak, nonatomic) IBOutlet UILabel *AgriculturallandranchfarmingL;
@property (weak, nonatomic) IBOutlet UISwitch *AgriculturallandranchfarmingA;
@property (weak, nonatomic) IBOutlet UILabel *NaturefeatureL;
@property (weak, nonatomic) IBOutlet UISwitch *NaturefeatureA;
@property (weak, nonatomic) IBOutlet UILabel *SiteunderconstructionL;
@property (weak, nonatomic) IBOutlet UISwitch *SiteunderconstructionA;
@property (weak, nonatomic) IBOutlet UILabel *Question13aOtherOtherL;
@property (weak, nonatomic) IBOutlet UISwitch *Question13aOtherOtherA;
- (IBAction)Question13aOtherOtherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *Question13aOtherOtherText;

@end

@implementation IMI_COfficeDataViewController

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
    self.OfficeServiceL.text=NSLocalizedString(@"OfficeServiceL", nil);
    self.OfficesL.text=NSLocalizedString(@"OfficesL", nil);
    self.ServicefacilitiesL.text=NSLocalizedString(@"ServicefacilitiesL", nil);
    self.OfficeserviceotherL.text=NSLocalizedString(@"OfficeserviceotherL", nil);
    self.OfficeserviceotherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.IndustrialManufacturingL.text=NSLocalizedString(@"IndustrialManufacturingL", nil);
    self.LightindustrialL.text=NSLocalizedString(@"LightindustrialL", nil);
    self.MediumorheavyindustrialL.text=NSLocalizedString(@"MediumorheavyindustrialL", nil);
    self.IndustrialotherL.text=NSLocalizedString(@"IndustrialotherL", nil);
    self.IndustrialotherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.Question13aOtherL.text=NSLocalizedString(@"Question13aOtherL", nil);
    self.HarbormarinaL.text=NSLocalizedString(@"HarbormarinaL", nil);
    self.UndevelopedlandL.text=NSLocalizedString(@"UndevelopedlandL", nil);
    self.AgriculturallandranchfarmingL.text=NSLocalizedString(@"AgriculturallandranchfarmingL", nil);
    self.NaturefeatureL.text=NSLocalizedString(@"NaturefeatureL", nil);
    self.SiteunderconstructionL.text=NSLocalizedString(@"SiteunderconstructionL", nil);
    self.Question13aOtherOtherL.text=NSLocalizedString(@"Question13aOtherOtherL", nil);
    self.Question13aOtherOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.OfficesA isOn]],[NSString stringWithFormat:@"%d",[self.ServicefacilitiesA isOn]],[NSString stringWithFormat:@"%d",[self.OfficeserviceotherA isOn]],self.OfficeserviceotherText.text,[NSString stringWithFormat:@"%d",[self.LightindustrialA isOn]],[NSString stringWithFormat:@"%d",[self.MediumorheavyindustrialA isOn]],[NSString stringWithFormat:@"%d",[self.IndustrialotherA isOn]],self.IndustrialotherText.text,[NSString stringWithFormat:@"%d",[self.HarbormarinaA isOn]],[NSString stringWithFormat:@"%d",[self.UndevelopedlandA isOn]],[NSString stringWithFormat:@"%d",[self.AgriculturallandranchfarmingA isOn]],[NSString stringWithFormat:@"%d",[self.NaturefeatureA isOn]],[NSString stringWithFormat:@"%d",[self.SiteunderconstructionA isOn]],[NSString stringWithFormat:@"%d",[self.Question13aOtherOtherA isOn]],self.Question13aOtherOtherText.text, nil];
}

- (IBAction)OfficeserviceotherAction:(UISwitch *)sender {
    self.OfficeserviceotherText.hidden=![sender isOn];
}
- (IBAction)IndustrialotherAction:(UISwitch *)sender {
    self.IndustrialotherText.hidden=![sender isOn];
}
- (IBAction)Question13aOtherOtherAction:(UISwitch *)sender {
    self.Question13aOtherOtherText.hidden=![sender isOn];
}
@end
