//
//  IMI-CQ13aDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/2/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQ13aDataViewController.h"

@interface IMI_CQ13aDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *q12_68L;
@property (weak, nonatomic) IBOutlet UILabel *q13aL;
@property (weak, nonatomic) IBOutlet UILabel *residentialHeightL;
@property (weak, nonatomic) IBOutlet UILabel *lowRiseL;
@property (weak, nonatomic) IBOutlet UISwitch *lowRiseA;
@property (weak, nonatomic) IBOutlet UILabel *midRiseL;
@property (weak, nonatomic) IBOutlet UISwitch *midRiseA;
@property (weak, nonatomic) IBOutlet UILabel *midHighRiseL;
@property (weak, nonatomic) IBOutlet UISwitch *midHighRiseA;
@property (weak, nonatomic) IBOutlet UILabel *highRise13L;
@property (weak, nonatomic) IBOutlet UISwitch *highRise13A;
@property (weak, nonatomic) IBOutlet UILabel *highRise19L;
@property (weak, nonatomic) IBOutlet UISwitch *highRise19A;
@property (weak, nonatomic) IBOutlet UILabel *highRise25L;
@property (weak, nonatomic) IBOutlet UISwitch *highRise25A;
@property (weak, nonatomic) IBOutlet UILabel *superHighRiseL;
@property (weak, nonatomic) IBOutlet UISwitch *superHighRiseA;
@property (weak, nonatomic) IBOutlet UILabel *residentialTypeL;
@property (weak, nonatomic) IBOutlet UILabel *detachedL;
@property (weak, nonatomic) IBOutlet UISwitch *detachedA;
@property (weak, nonatomic) IBOutlet UILabel *attachedL;
@property (weak, nonatomic) IBOutlet UISwitch *attachedA;
@property (weak, nonatomic) IBOutlet UILabel *townL;
@property (weak, nonatomic) IBOutlet UISwitch *townA;
@property (weak, nonatomic) IBOutlet UILabel *condoL;
@property (weak, nonatomic) IBOutlet UISwitch *condoA;
@property (weak, nonatomic) IBOutlet UILabel *universityL;
@property (weak, nonatomic) IBOutlet UISwitch *universityA;
@property (weak, nonatomic) IBOutlet UILabel *vernacularL;
@property (weak, nonatomic) IBOutlet UISwitch *vernacularA;
@property (weak, nonatomic) IBOutlet UILabel *informalL;
@property (weak, nonatomic) IBOutlet UISwitch *informalA;
@property (weak, nonatomic) IBOutlet UILabel *residentialOtherL;
@property (weak, nonatomic) IBOutlet UISwitch *residentialOtherA;
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
@property (weak, nonatomic) IBOutlet UILabel *RecreationalLeisureFitnessL;
@property (weak, nonatomic) IBOutlet UILabel *GymfitnesscenterL;
@property (weak, nonatomic) IBOutlet UISwitch *GymfitnesscenterA;
@property (weak, nonatomic) IBOutlet UILabel *MovietheaterL;
@property (weak, nonatomic) IBOutlet UISwitch *MovietheaterA;
@property (weak, nonatomic) IBOutlet UILabel *RecreationalotherL;
@property (weak, nonatomic) IBOutlet UISwitch *RecreationalotherA;

@end

@implementation IMI_CQ13aDataViewController

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
    self.q12_68L.text=NSLocalizedString(@"q12_68L", nil);
    self.q13aL.text=NSLocalizedString(@"q13aL", nil);
    self.residentialHeightL.text=NSLocalizedString(@"residentialHeightL", nil);
    self.lowRiseL.text=NSLocalizedString(@"lowRiseL", nil);
    self.midRiseL.text=NSLocalizedString(@"midRiseL", nil);
    self.midHighRiseL.text=NSLocalizedString(@"midHighRiseL", nil);
    self.highRise13L.text=NSLocalizedString(@"highRise13L", nil);
    self.highRise19L.text=NSLocalizedString(@"highRise19L", nil);
    self.highRise25L.text=NSLocalizedString(@"highRise25L", nil);
    self.superHighRiseL.text=NSLocalizedString(@"superHighRiseL", nil);
    self.residentialTypeL.text=NSLocalizedString(@"residentialTypeL", nil);
    self.detachedL.text=NSLocalizedString(@"detachedL", nil);
    self.attachedL.text=NSLocalizedString(@"attachedL", nil);
    self.townL.text=NSLocalizedString(@"townL", nil);
    self.condoL.text=NSLocalizedString(@"condoL", nil);
    self.universityL.text=NSLocalizedString(@"universityL", nil);
    self.vernacularL.text=NSLocalizedString(@"vernacularL", nil);
    self.informalL.text=NSLocalizedString(@"informalL", nil);
    self.residentialOtherL.text=NSLocalizedString(@"residentialOtherL", nil);
    self.schoolL.text=NSLocalizedString(@"schoolL", nil);
    self.kindergartenL.text=NSLocalizedString(@"kindergartenL", nil);
    self.PrimaryschoolL.text=NSLocalizedString(@"PrimaryschoolL", nil);
    self.SecondaryschoolL.text=NSLocalizedString(@"SecondaryschoolL", nil);
    self.HighschoolL.text=NSLocalizedString(@"HighschoolL", nil);
    self.UniversityorcollegeL.text=NSLocalizedString(@"UniversityorcollegeL", nil);
    self.SchoolotherL.text=NSLocalizedString(@"SchoolotherL", nil);
    self.RecreationalLeisureFitnessL.text=NSLocalizedString(@"RecreationalLeisureFitnessL", nil);
    self.GymfitnesscenterL.text=NSLocalizedString(@"GymfitnesscenterL", nil);
    self.MovietheaterL.text=NSLocalizedString(@"MovietheaterL", nil);
    self.RecreationalotherL.text=NSLocalizedString(@"RecreationalotherL", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.lowRiseA isOn]],[NSString stringWithFormat:@"%d",[self.midRiseA isOn]],[NSString stringWithFormat:@"%d",[self.midHighRiseA isOn]],[NSString stringWithFormat:@"%d",[self.highRise13A isOn]],[NSString stringWithFormat:@"%d",[self.highRise19A isOn]],[NSString stringWithFormat:@"%d",[self.highRise25A isOn]],[NSString stringWithFormat:@"%d",[self.superHighRiseA isOn]],[NSString stringWithFormat:@"%d",[self.detachedA isOn]],[NSString stringWithFormat:@"%d",[self.attachedA isOn]],[NSString stringWithFormat:@"%d",[self.townA isOn]],[NSString stringWithFormat:@"%d",[self.condoA isOn]],[NSString stringWithFormat:@"%d",[self.vernacularA isOn]],[NSString stringWithFormat:@"%d",[self.universityA isOn]],[NSString stringWithFormat:@"%d",[self.informalA isOn]],[NSString stringWithFormat:@"%d",[self.RecreationalotherA isOn]],[NSString stringWithFormat:@"%d",[self.KindergartenA isOn]],[NSString stringWithFormat:@"%d",[self.PrimaryschoolA isOn]],[NSString stringWithFormat:@"%d",[self.SecondaryschoolA isOn]],[NSString stringWithFormat:@"%d",[self.HighschoolA isOn]],[NSString stringWithFormat:@"%d",[self.UniversityorcollegeA isOn]],[NSString stringWithFormat:@"%d",[self.SchoolotherA isOn]],[NSString stringWithFormat:@"%d",[self.GymfitnesscenterA isOn]],[NSString stringWithFormat:@"%d",[self.MovietheaterA isOn]],[NSString stringWithFormat:@"%d",[self.RecreationalotherA isOn]], nil];
}
@end
