//
//  IMI-CResidentialbyheightDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CResidentialbyheightDataViewController.h"

@interface IMI_CResidentialbyheightDataViewController ()
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

@end

@implementation IMI_CResidentialbyheightDataViewController

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
    self.superHighRiseL.text=NSLocalizedString(@"superHighRiseL", nil);}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.lowRiseA isOn]],[NSString stringWithFormat:@"%d",[self.midRiseA isOn]],[NSString stringWithFormat:@"%d",[self.midHighRiseA isOn]],[NSString stringWithFormat:@"%d",[self.highRise13A isOn]],[NSString stringWithFormat:@"%d",[self.highRise19A isOn]],[NSString stringWithFormat:@"%d",[self.highRise25A isOn]],[NSString stringWithFormat:@"%d",[self.superHighRiseA isOn]], nil];
}
@end
