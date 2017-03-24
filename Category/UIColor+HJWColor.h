//
//  UIColor+HJWColor.h
//  AF_Pods
//
//  Created by Lion_Lemon on 16/1/15.
//  Copyright © 2016年 Lion_Lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HJWColor)

/**
 * RGB transform to Color (eg:#255, 255, 255 -> [UIColor whiteColor])
 *
 *  @param red   red_Number.
 *  @param green red_Number.
 *  @param blue  red_Number.
 *
 *  @return UIColor.
 */
+ (UIColor *)colorWithRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;

/**
 * HexString transform to Color (eg:#FFFFFF -> [UIColor whiteColor])
 *
 *  @param color ColorWithHex.
 *  @param alpha Color_Alpha.
 *
 *  @return UIColor.
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

/**
 *  UIColor transform to UIImage.
 *
 *  @param color Color.
 *
 *  @return UIImage.
 */
+ (UIImage*)imageWithColor: (UIColor*) color;
@end
