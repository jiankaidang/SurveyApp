//
//  IMI-CSubmitViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CSubmitDataViewController.h"
#import "IMI_CModelController.h"
#import "CHCSVWriter.h"
#import "NetworkManager.h"
@interface IMI_CSubmitDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *thankYouTitle;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
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
    NSMutableArray *controllers = self.imi_cModelController.pageDataViewController;
    NSMutableArray *results = [NSMutableArray arrayWithCapacity:[controllers count]];
    for (IMI_CDataViewController *controller in controllers) {
        [results addObjectsFromArray:controller.dataArray];
    }
    /*
    [[[CHCSVWriter alloc] initWithCSVFile:[[[[NetworkManager sharedInstance] resultsDir] URLByAppendingPathComponent:@"results.csv"] path] atomic:NO] writeLineOfFields:results, nil];
     */
}
@end
