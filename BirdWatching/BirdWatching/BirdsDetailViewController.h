//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Jiankai Dang on 9/16/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BirdsDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
