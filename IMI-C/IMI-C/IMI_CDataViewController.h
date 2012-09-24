//
//  IMI_CDataViewController.h
//  IMI-C
//
//  Created by Jiankai Dang on 9/18/12.
//  Copyright (c) 2012 Jiankai Dang. All rights reserved.
//

#import <UIKit/UIKit.h>
@class IMI_CModelController;
@interface IMI_CDataViewController : UIViewController
@property (strong, nonatomic) id dataObject;
@property (weak,nonatomic) IMI_CModelController *imi_cModelController;
@property (weak, nonatomic)NSArray *dataArray;
-(void)setImi_cResults;
@end
