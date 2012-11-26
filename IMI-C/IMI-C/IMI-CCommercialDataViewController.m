//
//  IMI-CCommercialDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CCommercialDataViewController.h"

@interface IMI_CCommercialDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *CommercialL;
@property (weak, nonatomic) IBOutlet UILabel *SoftgoodretailstoresL;
@property (weak, nonatomic) IBOutlet UISwitch *SoftgoodretailstoresA;
@property (weak, nonatomic) IBOutlet UILabel *HardgoodretailstoresL;
@property (weak, nonatomic) IBOutlet UISwitch *HardgoodretailstoresA;
@property (weak, nonatomic) IBOutlet UILabel *Otherretailstores;
@property (weak, nonatomic) IBOutlet UISwitch *OtherretailstoresA;
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
@property (weak, nonatomic) IBOutlet UILabel *BankfinancialLabel;
@property (weak, nonatomic) IBOutlet UISwitch *BankfinancialAnswer;
@property (weak, nonatomic) IBOutlet UILabel *CommercialotherL;
@property (weak, nonatomic) IBOutlet UISwitch *CommercialotherA;
- (IBAction)CommercialotherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *CommercialotherText;

@end

@implementation IMI_CCommercialDataViewController

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
    self.CommercialL.text=NSLocalizedString(@"CommercialL", nil);
    self.SoftgoodretailstoresL.text=NSLocalizedString(@"SoftgoodretailstoresL", nil);
    self.HardgoodretailstoresL.text=NSLocalizedString(@"HardgoodretailstoresL", nil);
    self.Otherretailstores.text=NSLocalizedString(@"Otherretailstores", nil);
    self.RestaurantsnonfastfoodL.text=NSLocalizedString(@"RestaurantsnonfastfoodL", nil);
    self.FastfoodL.text=NSLocalizedString(@"FastfoodL", nil);
    self.SmallgrocerystoreL.text=NSLocalizedString(@"SmallgrocerystoreL", nil);
    self.MediumorlargegrocerystoreL.text=NSLocalizedString(@"MediumorlargegrocerystoreL", nil);
    self.HotelhospitalityL.text=NSLocalizedString(@"HotelhospitalityL", nil);
    self.CardealershipL.text=NSLocalizedString(@"CardealershipL", nil);
    self.GasservicestationL.text=NSLocalizedString(@"GasservicestationL", nil);
    self.BicyclerelatedretailL.text=NSLocalizedString(@"BicyclerelatedretailL", nil);
    self.BankfinancialLabel.text=NSLocalizedString(@"BankfinancialLabel", nil);    self.CommercialotherL.text=NSLocalizedString(@"CommercialotherL", nil);
    self.CommercialotherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.SoftgoodretailstoresA isOn]],[NSString stringWithFormat:@"%d",[self.HardgoodretailstoresA isOn]],[NSString stringWithFormat:@"%d",[self.OtherretailstoresA isOn]],[NSString stringWithFormat:@"%d",[self.RestaurantsnonfastfoodA isOn]],[NSString stringWithFormat:@"%d",[self.FastfoodA isOn]],[NSString stringWithFormat:@"%d",[self.SmallgrocerystoreA isOn]],[NSString stringWithFormat:@"%d",[self.MediumorlargegrocerystoreA isOn]],[NSString stringWithFormat:@"%d",[self.BankfinancialAnswer isOn]],[NSString stringWithFormat:@"%d",[self.HotelhospitalityA isOn]],[NSString stringWithFormat:@"%d",[self.CardealershipA isOn]],[NSString stringWithFormat:@"%d",[self.GasservicestationA isOn]],[NSString stringWithFormat:@"%d",[self.BicyclerelatedretailA isOn]],[NSString stringWithFormat:@"%d",[self.CommercialotherA isOn]],self.CommercialotherText.text, nil];
}

- (IBAction)CommercialotherAction:(UISwitch *)sender {
    self.CommercialotherText.hidden=![sender isOn];
}
@end
