//
//  IMI-CPublicCivicBuildingDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CPublicCivicBuildingDataViewController.h"

@interface IMI_CPublicCivicBuildingDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *PublicCivicBuildingL;
@property (weak, nonatomic) IBOutlet UILabel *CommunitycenterorlibraryL;
@property (weak, nonatomic) IBOutlet UISwitch *CommunitycenterorlibraryA;
@property (weak, nonatomic) IBOutlet UILabel *MuseumauditoriumconcerthalltheaterL;
@property (weak, nonatomic) IBOutlet UISwitch *MuseumauditoriumconcerthalltheaterA;
@property (weak, nonatomic) IBOutlet UILabel *PostofficepolicestationcourthouseDepartmentofMotorVehiclesL;
@property (weak, nonatomic) IBOutlet UISwitch *PostofficepolicestationcourthouseDepartmentofMotorVehiclesA;
@property (weak, nonatomic) IBOutlet UILabel *PublicbuildingotherL;
@property (weak, nonatomic) IBOutlet UISwitch *PublicbuildingotherA;
@property (weak, nonatomic) IBOutlet UILabel *InstitutionalL;
@property (weak, nonatomic) IBOutlet UILabel *ReligiousinstitutionL;
@property (weak, nonatomic) IBOutlet UISwitch *ReligiousinstitutionA;
@property (weak, nonatomic) IBOutlet UILabel *HospitalmedicalfacilityhealthclinicL;
@property (weak, nonatomic) IBOutlet UISwitch *HospitalmedicalfacilityhealthclinicA;
@property (weak, nonatomic) IBOutlet UILabel *InstitutionalotherL;
@property (weak, nonatomic) IBOutlet UISwitch *InstitutionalotherA;
@property (weak, nonatomic) IBOutlet UILabel *CommercialL;
@property (weak, nonatomic) IBOutlet UILabel *SoftgoodretailstoresL;
@property (weak, nonatomic) IBOutlet UISwitch *SoftgoodretailstoresA;
@property (weak, nonatomic) IBOutlet UILabel *HardgoodretailstoresL;
@property (weak, nonatomic) IBOutlet UISwitch *HardgoodretailstoresA;
@property (weak, nonatomic) IBOutlet UILabel *RestaurantsnonfastfoodL;
@property (weak, nonatomic) IBOutlet UISwitch *RestaurantsnonfastfoodA;
@property (weak, nonatomic) IBOutlet UILabel *FastfoodL;
@property (weak, nonatomic) IBOutlet UISwitch *FastfoodA;
@property (weak, nonatomic) IBOutlet UILabel *SmallgrocerystoreL;
@property (weak, nonatomic) IBOutlet UISwitch *SmallgrocerystoreA;
@property (weak, nonatomic) IBOutlet UILabel *MediumorlargegrocerystoreL;
@property (weak, nonatomic) IBOutlet UISwitch *MediumorlargegrocerystoreA;
@property (weak, nonatomic) IBOutlet UILabel *HotelhospitalityL;
@property (weak, nonatomic) IBOutlet UISwitch *HotelhospitalityA;
@property (weak, nonatomic) IBOutlet UILabel *CardealershipL;
@property (weak, nonatomic) IBOutlet UISwitch *CardealershipA;
@property (weak, nonatomic) IBOutlet UILabel *GasservicestationL;
@property (weak, nonatomic) IBOutlet UISwitch *GasservicestationA;
@property (weak, nonatomic) IBOutlet UILabel *BicyclerelatedretailL;
@property (weak, nonatomic) IBOutlet UISwitch *BicyclerelatedretailA;
@property (weak, nonatomic) IBOutlet UILabel *CommercialotherL;
@property (weak, nonatomic) IBOutlet UISwitch *CommercialotherA;
@property (weak, nonatomic) IBOutlet UILabel *OfficeServiceL;
@property (weak, nonatomic) IBOutlet UILabel *OfficesL;
@property (weak, nonatomic) IBOutlet UISwitch *OfficesA;
@property (weak, nonatomic) IBOutlet UILabel *ServicefacilitiesL;
@property (weak, nonatomic) IBOutlet UISwitch *ServicefacilitiesA;
@property (weak, nonatomic) IBOutlet UILabel *OfficeserviceotherL;
@property (weak, nonatomic) IBOutlet UISwitch *OfficeserviceotherA;

@end

@implementation IMI_CPublicCivicBuildingDataViewController

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
    self.PublicCivicBuildingL.text=NSLocalizedString(@"PublicCivicBuildingL", nil);
    self.CommunitycenterorlibraryL.text=NSLocalizedString(@"CommunitycenterorlibraryL", nil);
    self.MuseumauditoriumconcerthalltheaterL.text=NSLocalizedString(@"MuseumauditoriumconcerthalltheaterL", nil);
    self.PostofficepolicestationcourthouseDepartmentofMotorVehiclesL.text=NSLocalizedString(@"PostofficepolicestationcourthouseDepartmentofMotorVehiclesL", nil);
    self.PublicbuildingotherL.text=NSLocalizedString(@"PublicbuildingotherL", nil);
    self.InstitutionalL.text=NSLocalizedString(@"InstitutionalL", nil);
    self.ReligiousinstitutionL.text=NSLocalizedString(@"ReligiousinstitutionL", nil);
    self.HospitalmedicalfacilityhealthclinicL.text=NSLocalizedString(@"HospitalmedicalfacilityhealthclinicL", nil);
    self.InstitutionalotherL.text=NSLocalizedString(@"InstitutionalotherL", nil);
    self.CommercialL.text=NSLocalizedString(@"CommercialL", nil);
    self.SoftgoodretailstoresL.text=NSLocalizedString(@"SoftgoodretailstoresL", nil);
    self.HardgoodretailstoresL.text=NSLocalizedString(@"HardgoodretailstoresL", nil);
    self.RestaurantsnonfastfoodL.text=NSLocalizedString(@"RestaurantsnonfastfoodL", nil);
    self.FastfoodL.text=NSLocalizedString(@"FastfoodL", nil);
    self.SmallgrocerystoreL.text=NSLocalizedString(@"SmallgrocerystoreL", nil);
    self.MediumorlargegrocerystoreL.text=NSLocalizedString(@"MediumorlargegrocerystoreL", nil);
    self.HotelhospitalityL.text=NSLocalizedString(@"HotelhospitalityL", nil);
    self.CardealershipL.text=NSLocalizedString(@"CardealershipL", nil);
    self.GasservicestationL.text=NSLocalizedString(@"GasservicestationL", nil);
    self.BicyclerelatedretailL.text=NSLocalizedString(@"BicyclerelatedretailL", nil);
    self.CommercialotherL.text=NSLocalizedString(@"CommercialotherL", nil);
    self.OfficeServiceL.text=NSLocalizedString(@"OfficeServiceL", nil);
    self.OfficesL.text=NSLocalizedString(@"OfficesL", nil);
    self.ServicefacilitiesL.text=NSLocalizedString(@"ServicefacilitiesL", nil);
    self.OfficeserviceotherL.text=NSLocalizedString(@"OfficeserviceotherL", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.CommunitycenterorlibraryA isOn]],[NSString stringWithFormat:@"%d",[self.MuseumauditoriumconcerthalltheaterA isOn]],[NSString stringWithFormat:@"%d",[self.PostofficepolicestationcourthouseDepartmentofMotorVehiclesA isOn]],[NSString stringWithFormat:@"%d",[self.PublicbuildingotherA isOn]],[NSString stringWithFormat:@"%d",[self.ReligiousinstitutionA isOn]],[NSString stringWithFormat:@"%d",[self.HospitalmedicalfacilityhealthclinicA isOn]],[NSString stringWithFormat:@"%d",[self.InstitutionalotherA isOn]],[NSString stringWithFormat:@"%d",[self.SoftgoodretailstoresA isOn]],[NSString stringWithFormat:@"%d",[self.HardgoodretailstoresA isOn]],[NSString stringWithFormat:@"%d",[self.RestaurantsnonfastfoodA isOn]],[NSString stringWithFormat:@"%d",[self.FastfoodA isOn]],[NSString stringWithFormat:@"%d",[self.SmallgrocerystoreA isOn]],[NSString stringWithFormat:@"%d",[self.MediumorlargegrocerystoreA isOn]],[NSString stringWithFormat:@"%d",[self.HotelhospitalityA isOn]],[NSString stringWithFormat:@"%d",[self.CardealershipA isOn]],[NSString stringWithFormat:@"%d",[self.GasservicestationA isOn]],[NSString stringWithFormat:@"%d",[self.BicyclerelatedretailA isOn]],[NSString stringWithFormat:@"%d",[self.CommercialotherA isOn]],[NSString stringWithFormat:@"%d",[self.OfficesA isOn]],[NSString stringWithFormat:@"%d",[self.ServicefacilitiesA isOn]],[NSString stringWithFormat:@"%d",[self.OfficeserviceotherA isOn]], nil];
}

@end
