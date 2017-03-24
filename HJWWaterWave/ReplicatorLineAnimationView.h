//
//  ReplicatorLineAnimationView.h
//  YiMath
//
//  Created by Lemon_Mr.H on 2016/12/29.
//  Copyright © 2016年 Lemon_Mr.H. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    
    kReplicatorLeft,
    kReplicatorRight,
    kReplicatorUp,
    kReplicatorDown
    
} EReplicatorLineDirection;

@interface ReplicatorLineAnimationView : UIView
/**
 *  Animation's direction.
 */
@property (nonatomic) EReplicatorLineDirection  direction;

/**
 *  Animation's speed.
 */
@property (nonatomic) CGFloat speed;

/**
 *  The show view.
 */
@property (nonatomic, strong) UIView *contentView;

/**
 *  Start animation.
 */
- (void)startAnimation;

@end
