//
//  BaseView.m
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import "BaseView.h"
#import "BallView.h"
@implementation BaseView


-(id)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        
        [self createKits];
        self.backgroundColor = [UIColor lightGrayColor];
        
        [self addBehavior];
    }
    return self;
}

-(void)createKits{
    
    animator = [[UIDynamicAnimator alloc] initWithReferenceView:self];
    
    ball = [[BallView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    
    [self addSubview:ball];
    
    
}

//安全实现
-(void)addBehavior{

}
@end
