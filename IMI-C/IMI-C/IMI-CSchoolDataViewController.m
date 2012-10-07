//
//  IMI-CSchoolDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CSchoolDataViewController.h"

@interface IMI_CSchoolDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *schoolL;
@property (weak, nonatomic) IBOutlet UILabel *kindergartenL;
@property (weak, nonatomic) IBOutlet UISwitch *KindergartenA;
@property (weak, nonatomic) IBOutlet UILabel *PrimaryschoolL;
@property (weak, nonatomic) IBOutlet UISwitch *PrimaryschoolA;
@property (weak, nonatomic) IBOutlet UILabel *SecondaryschoolL;
@property (weak, nonatomic) IBOutlet UISwitch *SecondaryschoolA;
@property (weak, nonatomic) IBOutlet UILabel *HighschoolL;
@property (weak, nonatomic) IBOutlet UISwitch *HighschoolA;
@property (weak, nonatomic) IBOutlet UILabel *UniversityorcollegeL;
@property (weak, nonatomic) IBOutlet UISwitch *UniversityorcollegeA;
@property (weak, nonatomic) IBOutlet UILabel *SchoolotherL;
@property (weak, nonatomic) IBOutlet UISwitch *SchoolotherA;
- (IBAction)SchoolotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *SchoolotherText;
@property (weak, nonatomic) IBOutlet UILabel *RecreationalLeisureFitnessL;
@property (weak, nonatomic) IBOutlet UILabel *GymfitnesscenterL;
@property (weak, nonatomic) IBOutlet UISwitch *GymfitnesscenterA;
@property (weak, nonatomic) IBOutlet UILabel *MovietheaterL;
@property (weak, nonatomic) IBOutlet UISwitch *MovietheaterA;
@property (weak, nonatomic) IBOutlet UILabel *RecreationalotherL;
@property (weak, nonatomic) IBOutlet UISwitch *RecreationalotherA;
- (IBAction)RecreationalotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *RecreationalotherText;
@property (weak, nonatomic) IBOutlet UILabel *PublicCivicBuildingL;
@property (weak, nonatomic) IBOutlet UILabel *CommunitycenterorlibraryL;
@property (weak, nonatomic) IBOutlet UISwitch *CommunitycenterorlibraryA;
@property (weak, nonatomic) IBOutlet UILabel *MuseumauditoriumconcerthalltheaterL;
@property (weak, nonatomic) IBOutlet UISwitch *MuseumauditoriumconcerthalltheaterA;
@property (weak, nonatomic) IBOutlet UILabel *PostofficepolicestationcourthouseDepartmentofMotorVehiclesL;
@property (weak, nonatomic) IBOutlet UISwitch *PostofficepolicestationcourthouseDepartmentofMotorVehiclesA;
@property (weak, nonatomic) IBOutlet UILabel *PublicbuildingotherL;
@property (weak, nonatomic) IBOutlet UISwitch *PublicbuildingotherA;
- (IBAction)PublicbuildingotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *PublicbuildingotherText;
@property (weak, nonatomic) IBOutlet UILabel *InstitutionalL;
@property (weak, nonatomic) IBOutlet UILabel *ReligiousinstitutionL;
@property (weak, nonatomic) IBOutlet UISwitch *ReligiousinstitutionA;
@property (weak, nonatomic) IBOutlet UILabel *HospitalmedicalfacilityhealthclinicL;
@property (weak, nonatomic) IBOutlet UISwitch *HospitalmedicalfacilityhealthclinicA;
@property (weak, nonatomic) IBOutlet UILabel *InstitutionalotherL;
@property (weak, nonatomic) IBOutlet UISwitch *InstitutionalotherA;
- (IBAction)InstitutionalotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *InstitutionalotherText;

@end

@implementation IMI_CSchoolDataViewController

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
    self.schoolL.text=NSLocalizedString(@"schoolL", nil);
    self.kindergartenL.text=NSLocalizedString(@"kindergartenL", nil);
    self.PrimaryschoolL.text=NSLocalizedString(@"PrimaryschoolL", nil);
    self.SecondaryschoolL.text=NSLocalizedString(@"SecondaryschoolL", nil);
    self.HighschoolL.text=NSLocalizedString(@"HighschoolL", nil);
    self.UniversityorcollegeL.text=NSLocalizedString(@"UniversityorcollegeL", nil);
    self.SchoolotherL.text=NSLocalizedString(@"SchoolotherL", nil);
    self.SchoolotherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.RecreationalLeisureFitnessL.text=NSLocalizedString(@"RecreationalLeisureFitnessL", nil);
    self.GymfitnesscenterL.text=NSLocalizedString(@"GymfitnesscenterL", nil);
    self.MovietheaterL.text=NSLocalizedString(@"MovietheaterL", nil);
    self.RecreationalotherL.text=NSLocalizedString(@"RecreationalotherL", nil);
    self.RecreationalotherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.PublicCivicBuildingL.text=NSLocalizedString(@"PublicCivicBuildingL", nil);
    self.CommunitycenterorlibraryL.text=NSLocalizedString(@"CommunitycenterorlibraryL", nil);
    self.MuseumauditoriumconcerthalltheaterL.text=NSLocalizedString(@"MuseumauditoriumconcerthalltheaterL", nil);
    self.PostofficepolicestationcourthouseDepartmentofMotorVehiclesL.text=NSLocalizedString(@"PostofficepolicestationcourthouseDepartmentofMotorVehiclesL", nil);
    self.PublicbuildingotherL.text=NSLocalizedString(@"PublicbuildingotherL", nil);
    self.PublicbuildingotherText.placeholder=NSLocalizedString(@"Ifother", nil);
    self.InstitutionalL.text=NSLocalizedString(@"InstitutionalL", nil);
    self.ReligiousinstitutionL.text=NSLocalizedString(@"ReligiousinstitutionL", nil);
    self.HospitalmedicalfacilityhealthclinicL.text=NSLocalizedString(@"HospitalmedicalfacilityhealthclinicL", nil);
    self.InstitutionalotherL.text=NSLocalizedString(@"InstitutionalotherL", nil);
    self.InstitutionalotherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.KindergartenA isOn]],[NSString stringWithFormat:@"%d",[self.PrimaryschoolA isOn]],[NSString stringWithFormat:@"%d",[self.SecondaryschoolA isOn]],[NSString stringWithFormat:@"%d",[self.HighschoolA isOn]],[NSString stringWithFormat:@"%d",[self.UniversityorcollegeA isOn]],[NSString stringWithFormat:@"%d",[self.SchoolotherA isOn]],self.SchoolotherText.text,[NSString stringWithFormat:@"%d",[self.GymfitnesscenterA isOn]],[NSString stringWithFormat:@"%d",[self.MovietheaterA isOn]],[NSString stringWithFormat:@"%d",[self.RecreationalotherA isOn]],self.RecreationalotherText.text,[NSString stringWithFormat:@"%d",[self.CommunitycenterorlibraryA isOn]],[NSString stringWithFormat:@"%d",[self.MuseumauditoriumconcerthalltheaterA isOn]],[NSString stringWithFormat:@"%d",[self.PostofficepolicestationcourthouseDepartmentofMotorVehiclesA isOn]],[NSString stringWithFormat:@"%d",[self.PublicbuildingotherA isOn]],self.PublicbuildingotherText.text,[NSString stringWithFormat:@"%d",[self.ReligiousinstitutionA isOn]],[NSString stringWithFormat:@"%d",[self.HospitalmedicalfacilityhealthclinicA isOn]],[NSString stringWithFormat:@"%d",[self.InstitutionalotherA isOn]],self.InstitutionalotherText.text, nil];
}

- (IBAction)SchoolotherAction:(UISwitch *)sender {
    self.SchoolotherText.hidden=![sender isOn];
}
- (IBAction)RecreationalotherAction:(UISwitch *)sender {
    self.RecreationalotherText.hidden=![sender isOn];
}
- (IBAction)PublicbuildingotherAction:(UISwitch *)sender {
    self.PublicbuildingotherText.hidden=![sender isOn];
}
- (IBAction)InstitutionalotherAction:(UISwitch *)sender {
    self.InstitutionalotherText.hidden=![sender isOn];
}
@end
