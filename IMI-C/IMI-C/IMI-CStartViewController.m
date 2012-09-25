//
//  IMI-CStartViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/25/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CStartViewController.h"

@interface IMI_CStartViewController ()
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *uploadButton;

@end

@implementation IMI_CStartViewController

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
    [self.startButton setTitle:NSLocalizedString(@"startButton", nil) forState:UIControlStateNormal];
    [self.uploadButton setTitle:NSLocalizedString(@"uploadButton", nil) forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
