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
@property (strong, nonatomic) IBOutlet UILabel *settingLabel;
@property (strong, nonatomic) IBOutlet UITextField *settingText;
@property (strong, nonatomic) IBOutlet UILabel *observerLabel;
@property (strong, nonatomic) IBOutlet UITextField *observerText;
@property (strong, nonatomic) IBOutlet UILabel *segmentLabel;
@property (strong, nonatomic) IBOutlet UITextField *segmentText;

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
    [dateFormatter setDateStyle:NSDateFormatterNoStyle];
    self.dataArray = [NSArray arrayWithObjects:dateString,[dateFormatter stringFromDate:date],[NSString stringWithFormat:@"%u", arc4random()],self.settingText.text,self.observerText.text,self.segmentText.text, nil];
    [super setImi_cResults];
}
@end
