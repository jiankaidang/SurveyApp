//
//  IMI-CSubmitViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CSubmitDataViewController.h"
#import "IMI_CModelController.h"

@interface IMI_CSubmitDataViewController ()
@property (strong, nonatomic) IBOutlet UILabel *thankYouTitle;
@property (strong, nonatomic) IBOutlet UIButton *submitButton;
- (IBAction)submit:(UIButton *)sender;

@end

@implementation IMI_CSubmitDataViewController

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
    self.thankYouTitle.text = NSLocalizedString(@"thankYouTitle", nil);
    [self.submitButton setTitle:NSLocalizedString(@"submitButton", nil) forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(UIButton *)sender {
    [self.imi_cModelController submitResults];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
