//
//  IMI-CResidentialbytypeDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/4/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CResidentialbytypeDataViewController.h"

@interface IMI_CResidentialbytypeDataViewController ()
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
- (IBAction)residentialOtherAction:(UISwitch *)sender;
@property (weak, nonatomic) IBOutlet UITextField *residentialOtherText;

@end

@implementation IMI_CResidentialbytypeDataViewController

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
    self.residentialTypeL.text=NSLocalizedString(@"residentialTypeL", nil);
    self.detachedL.text=NSLocalizedString(@"detachedL", nil);
    self.attachedL.text=NSLocalizedString(@"attachedL", nil);
    self.townL.text=NSLocalizedString(@"townL", nil);
    self.condoL.text=NSLocalizedString(@"condoL", nil);
    self.universityL.text=NSLocalizedString(@"universityL", nil);
    self.vernacularL.text=NSLocalizedString(@"vernacularL", nil);
    self.informalL.text=NSLocalizedString(@"informalL", nil);
    self.residentialOtherL.text=NSLocalizedString(@"residentialOtherL", nil);
    self.residentialOtherText.placeholder=NSLocalizedString(@"Ifother", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:[NSString stringWithFormat:@"%d",[self.detachedA isOn]],[NSString stringWithFormat:@"%d",[self.attachedA isOn]],[NSString stringWithFormat:@"%d",[self.townA isOn]],[NSString stringWithFormat:@"%d",[self.condoA isOn]],[NSString stringWithFormat:@"%d",[self.vernacularA isOn]],[NSString stringWithFormat:@"%d",[self.universityA isOn]],[NSString stringWithFormat:@"%d",[self.informalA isOn]],[NSString stringWithFormat:@"%d",[self.residentialOtherA isOn]],self.residentialOtherText.text, nil];
}

- (IBAction)residentialOtherAction:(UISwitch *)sender {
    self.residentialOtherText.hidden=![sender isOn];
}
@end
