//
//  BallView.m
//  01 BasicBehaviorDemo
//
//  Created by wang xinkai on 15/9/5.
//  Copyright (c) 2015年 wxk. All rights reserved.
//

#import "BallView.h"

@implementation BallView


-(id)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        CGRect new = self.frame;
        new.size.width = new.size.height;
        self.frame = new;
        
        //边框
        self.layer.borderWidth = 2;
        self.layer.borderColor = [UIColor blackColor].CGColor;
        //背景色和圆角
//        self.layer.cornerRadius = new.size.height/2;
        self.layer.backgroundColor = [UIColor groupTableViewBackgroundColor].CGColor;
        
        
    }
    return self;
}


@end
