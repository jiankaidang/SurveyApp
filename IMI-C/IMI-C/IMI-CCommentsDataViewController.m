//
//  IMI-CCommentsDataViewController.m
//  IMI-C
//
//  Created by Jiankai Dang on 10/6/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI-CCommentsDataViewController.h"

@interface IMI_CCommentsDataViewController ()
@property (weak, nonatomic) IBOutlet UILabel *CommentsLabel;
@property (weak, nonatomic) IBOutlet UITextField *CommentsAnswer;

@end

@implementation IMI_CCommentsDataViewController

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
    self.CommentsLabel.text=NSLocalizedString(@"CommentsLabel", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setImi_cResults{
    self.dataArray=[NSArray arrayWithObjects:self.CommentsAnswer.text, nil];
}
@end
