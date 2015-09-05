//
//  DynamicViewController.h
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
typedef enum {
    DynamicViewControllerTypeGravity = 0,
    DynamicViewControllerTypeCollision,
    DynamicViewControllerTypeAttachment,
    DynamicViewControllerTypeSnap
}DynamicViewControllerType;


@interface DynamicViewController : UIViewController
{
    BaseView *_baseView;
    
}
@property (nonatomic) DynamicViewControllerType type;

@property (nonatomic,copy) NSString *viewClass;

@end
