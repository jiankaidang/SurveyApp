//
//  IMI-CSettingDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/20/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CSettingDataViewController.h"
#import "IMI_CModelController.h"
@interface IMI_CSettingDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *settingLabel;
@property (weak, nonatomic) IBOutlet UITextField *settingText;
@property (weak, nonatomic) IBOutlet UILabel *observerLabel;
@property (weak, nonatomic) IBOutlet UITextField *observerText;
@property (weak, nonatomic) IBOutlet UILabel *segmentLabel;
@property (weak, nonatomic) IBOutlet UITextField *segmentText;
@property (weak, nonatomic) IBOutlet UILabel *blockLabel;
@property (weak, nonatomic) IBOutlet UITextField *blockText;
@property (weak, nonatomic) IBOutlet UILabel *intersectionLabel;
@property (weak, nonatomic) IBOutlet UITextField *intersectionText;
@property (weak, nonatomic) IBOutlet UILabel *questions1_6Title;
@property (weak, nonatomic) IBOutlet UILabel *intersectionTitle;
@property (weak, nonatomic) IBOutlet UILabel *neighborhoodIdentificationTitle;
@property (weak, nonatomic) IBOutlet UILabel *question1Title;
@property (weak, nonatomic) IBOutlet UISwitch *question1Answer;

@end

@implementation IMI_CSettingDataViewController

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
    self.settingLabel.text=NSLocalizedString(@"settingLabel", nil);
    self.observerLabel.text=NSLocalizedString(@"observerLabel", nil);
    self.segmentLabel.text=NSLocalizedString(@"segmentLabel", nil);
    self.blockLabel.text=NSLocalizedString(@"blockLabel", nil);
    self.intersectionLabel.text=NSLocalizedString(@"intersectionLabel", nil);
    self.questions1_6Title.text=NSLocalizedString(@"questions1_6Title", nil);
    self.intersectionTitle.text=NSLocalizedString(@"intersectionTitle", nil);
    self.neighborhoodIdentificationTitle.text=NSLocalizedString(@"neighborhoodIdentificationTitle", nil);
    self.question1Title.text=NSLocalizedString(@"question1Title", nil);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    NSDate *date=[NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSString *dateString=[dateFormatter stringFromDate:date];
    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
    self.dataArray = [NSArray arrayWithObjects:dateString,[dateFormatter stringFromDate:date],self.settingText.text,self.observerText.text,self.segmentText.text,self.blockText.text,self.intersectionText.text, [self.question1Answer isOn] ? @"1" : @"0", nil];
    [super setImi_cResults];
}
@end
