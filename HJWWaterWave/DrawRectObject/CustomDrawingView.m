//
//  CustomDrawingView.m
//  YiMath
//
//  Created by Lemon_Mr.H on 2016/12/29.
//  Copyright © 2016年 Lemon_Mr.H. All rights reserved.
//

#import "CustomDrawingView.h"

@implementation CustomDrawingView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.drawRectObject  = [DrawRectObject new];
        self.backgroundColor = [UIColor clearColor];
        [self setupDrawingStyles];
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    [self.drawRectObject bindWithCGContext:UIGraphicsGetCurrentContext()];
}

- (void)setupDrawingStyles {
    
}

@end
