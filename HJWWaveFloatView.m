//
//  HJWWaveFloatView.m
//  HJWWaveFloatView
//
//  Created by Lemon_Mr.H on 2017/3/24.
//  Copyright © 2017年 Lemon_Mr.H. All rights reserved.
//

#import "HJWWaveFloatView.h"
#import "HJWCircleView.h"
#import "HJWWaveView.h"
#import "ReplicatorLineAnimationView.h"
#import "UIColor+HJWColor.h"
#import "UIView+HJW.h"

/** 设备是否为iPhone 4/4S 分辨率320x480，像素640x960，@2x */
#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)

/** 设备是否为iPhone 5C/5/5S 分辨率320x568，像素640x1136，@2x */
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

/** 设备是否为iPhone 6 分辨率375x667，像素750x1334，@2x */
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

/** 设备是否为iPhone 6 Plus 分辨率414x736，像素1242x2208，@3x */
#define iPhone6P ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)

#define kScreenBounds ([[UIScreen mainScreen] bounds])
#define kScreenWidth (kScreenBounds.size.width)
#define kScreenHeight (kScreenBounds.size.height)


@implementation HJWWaveFloatView

- (instancetype)initWithFrame:(CGRect)frame
            MainColor:(NSString *)mainColor
      MainSecondColor:(NSString *)mainSecondColor
      CircleFillColor:(NSString *)circleFillColor
CircleSecondFillColor:(NSString *)circleSecondFillColor
{
    self = [super initWithFrame:frame];
    if (self) {
        _MainColor = mainColor;
        _MainSecondColor = mainSecondColor;
        _CircleFillColor = circleFillColor;
        _CircleSecondFillColor = circleSecondFillColor;
        
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    {
        // Color Declarations
        UIColor* fillColor = [UIColor colorWithHexString:@"c7f3f0" alpha:.5f];
        //// Rectangle Drawing
        UIBezierPath* rectanglePath =
        [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, rect.size.width, self.height / 8)];
        [fillColor setFill];
        [rectanglePath fill];
    }
    
    {
        CGFloat point1 = 35;
        CGFloat point2 = 270;
        
        if (iPhone4 || iPhone5) {
            point1 = 30;
            point2 = 230;
        }else if (iPhone6P) {
            point1 = 40;
            point2 = 300;
        }
        
        // Color Declarations
        UIColor* fillColor = [UIColor colorWithHexString:_MainColor alpha:1.0f];
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint:CGPointMake(0, self.height / 8 - 1)];
        [bezierPath addLineToPoint:CGPointMake(0, rect.size.height - 50)];
        [bezierPath addCurveToPoint:CGPointMake(rect.size.width / 2, rect.size.height)
                      controlPoint1:CGPointMake(point1, rect.size.height - 25)
                      controlPoint2:CGPointMake(rect.size.width - point2, rect.size.height)];
        
        [bezierPath addCurveToPoint:CGPointMake(rect.size.width, rect.size.height - 50)
                      controlPoint1:CGPointMake(point2, rect.size.height)
                      controlPoint2:CGPointMake(rect.size.width - point1, rect.size.height - 25)];
        
        [bezierPath addLineToPoint:CGPointMake(rect.size.width, self.height / 8 - 1)];
        [bezierPath addLineToPoint:CGPointMake(0, self.height / 8 - 1)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
    }
}


- (void)startWave {
    self.layer.masksToBounds = YES;
    
    for (id view in self.subviews) {
        if ([view isKindOfClass:[ReplicatorLineAnimationView class]]) {
            ReplicatorLineAnimationView * waveView = (ReplicatorLineAnimationView *)view;
            [waveView removeFromSuperview];
        }
    }
    [self setup];
}

- (void)setup {
    // WaveOne
    {
        HJWWaveView *waveView =
        [[HJWWaveView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth * 2, self.height / 8)];
        
        waveView.phase     = 0.f;
        waveView.waveCrest = 9.f;
        waveView.waveCount = 2;
        waveView.type      = kStrokeWave | kFillWave;
        {
            DrawingStyle *fillStyle = [DrawingStyle new];
            fillStyle.fillColor     = [DrawingColor colorWithUIColor:
                                       [UIColor colorWithHexString:_MainColor alpha:1.0f]];
            waveView.fillStyle      = fillStyle;
            
            DrawingStyle *strokeStyle = [DrawingStyle new];
            strokeStyle.strokeColor   = [DrawingColor colorWithUIColor:[UIColor colorWithHexString:_MainColor alpha:1.f]];
            strokeStyle.lineWidth     = 0.5f;
            waveView.strokeStyle      = strokeStyle;
        }
        
        ReplicatorLineAnimationView *replicatorLineView = [[ReplicatorLineAnimationView alloc] initWithFrame:waveView.bounds];
        replicatorLineView.direction   = kReplicatorLeft;
        replicatorLineView.speed       = 0.1f;
        replicatorLineView.contentView = waveView;
        [replicatorLineView startAnimation];
        [self addSubview:replicatorLineView];
        [self sendSubviewToBack:replicatorLineView];
    }
    
    // WaveTwo
    {
        HJWWaveView *waveView =
        [[HJWWaveView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth * 2, self.height / 8)];
        
        waveView.phase     = 5.f;
        waveView.waveCrest = 6.f;
        waveView.waveCount = 2;
        waveView.type      = kStrokeWave | kFillWave;
        {
            DrawingStyle *fillStyle = [DrawingStyle new];
            fillStyle.fillColor     = [DrawingColor colorWithUIColor:[UIColor colorWithHexString:_MainSecondColor alpha:1.f]];
            waveView.fillStyle      = fillStyle;
            
            DrawingStyle *strokeStyle = [DrawingStyle new];
            strokeStyle.strokeColor   = [DrawingColor colorWithUIColor:[UIColor colorWithHexString:_MainSecondColor alpha:1.f]];
            strokeStyle.lineWidth     = 0.5f;
            waveView.strokeStyle      = strokeStyle;
        }
        ReplicatorLineAnimationView *replicatorLineView = [[ReplicatorLineAnimationView alloc] initWithFrame:waveView.bounds];
        replicatorLineView.direction = kReplicatorLeft;
        replicatorLineView.speed     = 0.05f;
        replicatorLineView.contentView = waveView;
        [replicatorLineView startAnimation];
        [self addSubview:replicatorLineView];
        [self sendSubviewToBack:replicatorLineView];
    }
    
    // waveView Three
    {
        HJWWaveView *waveView =
        [[HJWWaveView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth * 2, self.height / 8)];
        
        waveView.phase     = 7.5f;
        waveView.waveCrest = 3.f;
        waveView.waveCount = 2;
        waveView.type      = kStrokeWave | kFillWave;
        {
            DrawingStyle *fillStyle = [DrawingStyle new];
            fillStyle.fillColor     = [DrawingColor colorWithUIColor:
                                       [UIColor colorWithHexString:_MainSecondColor alpha:.5f]];
            waveView.fillStyle      = fillStyle;
            
            DrawingStyle *strokeStyle = [DrawingStyle new];
            strokeStyle.strokeColor   = [DrawingColor colorWithUIColor:[UIColor colorWithHexString:_MainSecondColor alpha:.5f]];
            strokeStyle.lineWidth     = 0.5f;
            waveView.strokeStyle      = strokeStyle;
        }
        ReplicatorLineAnimationView *replicatorLineView = [[ReplicatorLineAnimationView alloc] initWithFrame:waveView.bounds];
        replicatorLineView.direction   = kReplicatorLeft;
        replicatorLineView.speed       = 0.2f;
        replicatorLineView.contentView = waveView;
        [replicatorLineView startAnimation];
        [self addSubview:replicatorLineView];
        
        [self sendSubviewToBack:replicatorLineView];
    }
}

- (void)randomCircle {
    for (id view in self.subviews) {
        if ([view isKindOfClass:[HJWCircleView class]]) {
            HJWCircleView * waveView = (HJWCircleView *)view;
            [waveView removeFromSuperview];
        }
    }
    
    HJWCircleView * circle = [[HJWCircleView alloc] initWithFrame:CGRectMake(80, 80, 35, 35)];
    circle.backgroundColor = [UIColor clearColor];
    circle.color = _CircleFillColor;
    [circle addAniamtionLikeGameCenterBubble];
    [self addSubview:circle];
    
    HJWCircleView * circle1 = [[HJWCircleView alloc] initWithFrame:CGRectMake(-35 / 2, 44, 35, 35)];
    circle1.backgroundColor = [UIColor clearColor];
    circle1.color = _CircleFillColor;
    [circle1 addAniamtionLikeGameCenterBubble];
    [self addSubview:circle1];
    
    HJWCircleView * circle2 = [[HJWCircleView alloc] initWithFrame:CGRectMake(120, 40, 20, 20)];
    circle2.backgroundColor = [UIColor clearColor];
    circle2.color = _CircleSecondFillColor;
    [circle2 addAniamtionLikeGameCenterBubble];
    [self addSubview:circle2];
    
    HJWCircleView * circle3 = [[HJWCircleView alloc] initWithFrame:CGRectMake(kScreenWidth / 2 - 25 / 2, 200 - 25, 25, 25)];
    circle3.backgroundColor = [UIColor clearColor];
    circle3.color = _CircleFillColor;
    [circle3 addAniamtionLikeGameCenterBubble];
    [self addSubview:circle3];
    
    HJWCircleView * circle4 = [[HJWCircleView alloc] initWithFrame:CGRectMake(kScreenWidth - 45, 50, 90, 90)];
    circle4.backgroundColor = [UIColor clearColor];
    circle4.color = _CircleSecondFillColor;
    [circle4 addAniamtionLikeGameCenterBubble];
    [self addSubview:circle4];
}

@end
