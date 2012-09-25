//
//  IMI_CModelController.h
//  IMI-C
//
//  Created by Jiankai Dang on 9/18/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IMI_CDataViewController;

@interface IMI_CModelController : NSObject <UIPageViewControllerDataSource>
@property (strong, nonatomic) NSMutableArray *pageDataViewController;
- (IMI_CDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(IMI_CDataViewController *)viewController;
@end
