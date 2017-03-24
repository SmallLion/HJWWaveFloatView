//
//  HJWWaveView.h
//  YiMath
//
//  Created by Lemon_Mr.H on 2016/12/29.
//  Copyright © 2016年 Lemon_Mr.H. All rights reserved.
//

#import "CustomDrawingView.h"

typedef enum : NSUInteger {
    
    kStrokeWave = 1 << 2,
    kFillWave   = 1 << 3 ,
    
} EWaveViewType;

@interface HJWWaveView : CustomDrawingView
/**
 *  Wave type, default is kFillWave.
 */
@property (nonatomic) EWaveViewType type;

/**
 *  Sine phase, default is 0.
 */
@property (nonatomic) CGFloat  phase;

/**
 *  Wave crest height, Default is 10.
 */
@property (nonatomic) CGFloat  waveCrest;

/**
 *  Full wave count,  default is 1.
 */
@property (nonatomic) NSInteger waveCount;

/**
 *  The fill style.
 */
@property (nonatomic, strong) DrawingStyle *fillStyle;

/**
 *  The stroke style.
 */
@property (nonatomic, strong) DrawingStyle *strokeStyle;

@end
