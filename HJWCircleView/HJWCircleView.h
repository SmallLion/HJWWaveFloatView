//
//  HJWCircleView.h
//  StudyChat
//
//  Created by Lemon_Mr.H on 2017/2/8.
//  Copyright © 2017年 Lion_Lemon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HJWCircleView : UIView
/**
 *  Cicle Color.
 */
@property (nonatomic, strong) UIColor * color;
/**
 *  add Aniamtion, LikeGameCenterBubble.
 */
- (void)addAniamtionLikeGameCenterBubble;
/**
 *  Remove Aniamtion, LikeGameCenterBubble.
 */
- (void)RemoveAniamtionLikeGameCenterBubble;
@end
