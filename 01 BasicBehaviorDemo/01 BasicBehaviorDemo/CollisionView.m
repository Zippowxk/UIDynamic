//
//  CollisionView.m
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import "CollisionView.h"
#import "BallView.h"
@implementation CollisionView


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    
    BallView *ball0 = [[BallView alloc] initWithFrame:CGRectMake(p.x, p.y, 50, 50)];
    
    [self addSubview:ball0];
    
    

    
    for (UIDynamicItemBehavior*b in animator.behaviors) {
        [b addItem:ball0];
    }

}


-(void)addBehavior{
    

    
    BallView *ball0 = [[BallView alloc] initWithFrame:CGRectMake(80, 300, 50, 50)];
    
    [self addSubview:ball0];
    
    
    //    重力行为
    
    UIGravityBehavior *behavior  = [[UIGravityBehavior alloc] initWithItems:@[ball,ball0]];
    [animator addBehavior:behavior];
    
    

    
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:@[ball,ball0]];
    
    collision.collisionMode = UICollisionBehaviorModeEverything;
    
    //设置边缘碰撞
    collision.translatesReferenceBoundsIntoBoundary = YES;
    
    [animator addBehavior:collision];
    
    
    //    item 的行为描述
    UIDynamicItemBehavior *itemBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[ball,ball0]];
    //    设置弹性
    itemBehavior.elasticity = 0.2;
    [animator addBehavior:itemBehavior];
    
}


@end
