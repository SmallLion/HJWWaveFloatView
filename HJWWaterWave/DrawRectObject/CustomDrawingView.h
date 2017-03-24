//
//  CustomDrawingView.h
//  YiMath
//
//  Created by Lemon_Mr.H on 2016/12/29.
//  Copyright © 2016年 Lemon_Mr.H. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawRectObject.h"

@interface CustomDrawingView : UIView
/**
 *  The Draw rect object, used by subClass.
 */
@property (nonatomic, strong) DrawRectObject *drawRectObject;

/**
 *  Setup the drawing styles, used by subClass.
 */
- (void)setupDrawingStyles;
@end
