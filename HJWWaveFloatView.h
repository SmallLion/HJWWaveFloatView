//
//  HJWWaveFloatView.h
//  HJWWaveFloatView
//
//  Created by Lemon_Mr.H on 2017/3/24.
//  Copyright © 2017年 Lemon_Mr.H. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HJWWaveFloatView : UIView
/**
 * 主填充颜色
 */
@property (nonatomic, copy) NSString * MainColor;
/**
 * 次填充颜色
 */
@property (nonatomic, copy) NSString * MainSecondColor;

/**
 * 气泡主填充颜色
 */
@property (nonatomic, copy) NSString * CircleFillColor;

/**
 * 气泡次填充颜色
 */
@property (nonatomic, copy) NSString * CircleSecondFillColor;

- (instancetype)initWithFrame:(CGRect)frame
            MainColor:(NSString *)mainColor
MainSecondColor:(NSString *)mainSecondColor
      CircleFillColor:(NSString *)circleFillColor
CircleSecondFillColor:(NSString *)circleSecondFillColor;

- (void)startWave;
- (void)randomCircle;
@end
