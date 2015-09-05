//
//  GravityView.m
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import "GravityView.h"

@implementation GravityView

-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        
     
    }
    
    return self;
}

-(void)addBehavior{
    
//    item 的行为描述
    UIDynamicItemBehavior *itemBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[ball]];
//    设置阻尼
    itemBehavior.resistance = 1;
    [animator addBehavior:itemBehavior];
    
    
//    重力行为
    
    UIGravityBehavior *behavior  = [[UIGravityBehavior alloc] initWithItems:@[ball]];
    
    behavior.gravityDirection = CGVectorMake(0, 1);
    
    NSLog(@"%f",behavior.angle);
//    x正方向和 重力方向的夹角
//    behavior.angle = 0;
    
    [animator addBehavior:behavior];
    
}

@end
