//
//  IMI_CModelController.m
//  IMI-C
//
//  Created by Jiankai Dang on 9/18/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import "IMI_CModelController.h"

#import "IMI_CDataViewController.h"
#import "CHCSVWriter.h"
#import "NetworkManager.h"
/*
 A controller object that manages a simple model -- a collection of month names.
 
 The controller serves as the data source for the page view controller; it therefore implements pageViewController:viewControllerBeforeViewController: and pageViewController:viewControllerAfterViewController:.
 It also implements a custom method, viewControllerAtIndex: which is useful in the implementation of the data source methods, and in the initial configuration of the application.
 
 There is no need to actually create view controllers for each page in advance -- indeed doing so incurs unnecessary overhead. Given the data model, these methods create, configure, and return a new view controller on demand.
 */

@interface IMI_CModelController()
@property (readonly, strong, nonatomic) NSArray *pageData;
@end

@implementation IMI_CModelController

- (id)init
{
    self = [super init];
    if (self) {
        // Create the data model.
        _pageData = [NSArray arrayWithObjects:@"Setting",@"Community", @"Submit", nil ];
        self.pageDataViewController=[NSMutableArray arrayWithCapacity:[_pageData count]];
    }
    return self;
}

- (IMI_CDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard
{   
    // Return the data view controller for the given index.
    IMI_CDataViewController *dataViewController;
    if (([self.pageDataViewController count] == 0) || (index >= [self.pageDataViewController count])) {
        // Create a new view controller and pass suitable data.
        NSString * imc_cPageData = [self.pageData objectAtIndex:index];
        dataViewController = [storyboard instantiateViewControllerWithIdentifier:[[@"IMI_C" stringByAppendingString:imc_cPageData] stringByAppendingString:@"DataViewController"]];
        dataViewController.dataObject = imc_cPageData;
        dataViewController.imi_cModelController = self;
        [self.pageDataViewController setObject:dataViewController atIndexedSubscript:index];
        return dataViewController;
    }
    return [self.pageDataViewController objectAtIndex:index];
}

- (NSUInteger)indexOfViewController:(IMI_CDataViewController *)viewController
{   
     // Return the index of the given data view controller.
     // For simplicity, this implementation uses a static array of model objects and the view controller stores the model object; you can therefore use the model object to identify the index.
    return [self.pageData indexOfObject:viewController.dataObject];
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(IMI_CDataViewController *)viewController];
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = [self indexOfViewController:(IMI_CDataViewController *)viewController];
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageData count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index storyboard:viewController.storyboard];
}

-(void)submitResults {
    NSMutableArray *controllers = self.pageDataViewController;
    NSMutableArray *results = [NSMutableArray arrayWithCapacity:[controllers count]];
    for (IMI_CDataViewController *controller in controllers) {
        [results addObjectsFromArray:controller.dataArray];
    }
    
    [[[CHCSVWriter alloc] initWithCSVFile:[[NetworkManager sharedInstance] resultsFilePath] atomic:NO] writeLineWithFields:results];
}
+(void)initResultsFile{
    /*
    [[NSFileManager defaultManager] removeItemAtPath:[[[NetworkManager sharedInstance] resultsDir] path] error:nil];
    return;
     */
    NetworkManager * manager=[NetworkManager sharedInstance];
    if ([manager isResultsDirExisted]) {
        return;
    }
    int capacity=230;
    NSMutableArray * questionNumbers=[NSMutableArray arrayWithCapacity:capacity];
    for (int i = 1; i < capacity; i++) {
        [questionNumbers addObject:[NSString stringWithFormat:@"%u", i]];
    }
    NSMutableArray * titleRow=(NSMutableArray *)[NSMutableArray arrayWithObjects:@"Date", @"Time",@"Setting",@"Observer",@"Segment",@"Block",@"Intersection", nil];
    [titleRow addObjectsFromArray:questionNumbers];
    [[[CHCSVWriter alloc] initWithCSVFile:[manager resultsFilePath] atomic:NO] writeLineWithFields:titleRow];
}

@end
