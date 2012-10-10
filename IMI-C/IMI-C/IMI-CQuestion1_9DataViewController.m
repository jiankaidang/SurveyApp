//
//  IMI-CQuestion1_9DataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/9/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CQuestion1_9DataViewController.h"

@interface IMI_CQuestion1_9DataViewController ()
@property (strong, nonatomic) IBOutlet UILabel *blockLabel;
@property (strong, nonatomic) IBOutlet UITextField *blockText;
@property (strong, nonatomic) IBOutlet UILabel *intersectionLabel;
@property (strong, nonatomic) IBOutlet UITextField *intersectionText;
@property (strong, nonatomic) IBOutlet UILabel *questions1_6Title;
@property (strong, nonatomic) IBOutlet UILabel *intersectionTitle;
@property (strong, nonatomic) IBOutlet UILabel *neighborhoodIdentificationTitle;
@property (strong, nonatomic) IBOutlet UILabel *question1Title;
@property (strong, nonatomic) IBOutlet UISwitch *question1Answer;

@end

@implementation IMI_CQuestion1_9DataViewController

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
    self.dataArray = [NSArray arrayWithObjects:self.blockText.text,self.intersectionText.text, [self.question1Answer isOn] ? @"1" : @"0", nil];
    [super setImi_cResults];
}
@end
