//
//  BaseView.h
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BallView;
@interface BaseView : UIView
{
    //item
    BallView *ball;
    //animator
    UIDynamicAnimator *animator;
    
}

-(void)addBehavior;
@end
