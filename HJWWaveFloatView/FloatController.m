//
//  FloatController.m
//  HJWWaveFloatView
//
//  Created by Lemon_Mr.H on 2017/3/27.
//  Copyright © 2017年 Lemon_Mr.H. All rights reserved.
//

#import "FloatController.h"
#import "HJWCircleView.h"
#import "UIView+HJW.h"

@interface FloatController ()

@end

@implementation FloatController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self addFloatViews];
}

- (void)addFloatViews {
    /**
        Use:
        1. New A HJWCircleView Class,
        2. Set Color,
        3. AddAniamtionLikeGameCenterBubble
     */
    {
        HJWCircleView * circle = [[HJWCircleView alloc] initWithFrame:CGRectMake(80, self.view.centerY / 2 + 80, 35, 35)];
        circle.color = @"57d0c9";
        [circle addAniamtionLikeGameCenterBubble];
        [self.view addSubview:circle];
    }
    
    {
        HJWCircleView * circle1 = [[HJWCircleView alloc] initWithFrame:CGRectMake(-35 / 2, self.view.centerY / 2 + 44, 35, 35)];
        circle1.color = @"57d0c9";
        [circle1 addAniamtionLikeGameCenterBubble];
        [self.view addSubview:circle1];
    }
    
    {
        HJWCircleView * circle2 = [[HJWCircleView alloc] initWithFrame:CGRectMake(120, self.view.centerY / 2 + 40, 20, 20)];
        circle2.color = @"5bd6ce";
        [circle2 addAniamtionLikeGameCenterBubble];
        [self.view addSubview:circle2];
    }
    
    {
        HJWCircleView * circle3 = [[HJWCircleView alloc] initWithFrame:CGRectMake(Width / 2 - 25 / 2, self.view.centerY / 2 + 175, 25, 25)];
        circle3.color = @"57d0c9";
        [circle3 addAniamtionLikeGameCenterBubble];
        [self.view addSubview:circle3];
    }
    
    {
        HJWCircleView * circle4 = [[HJWCircleView alloc] initWithFrame:CGRectMake(Width - 45, self.view.centerY / 2 + 50, 90, 90)];
        circle4.color = @"5bd6ce";
        [circle4 addAniamtionLikeGameCenterBubble];
        [self.view addSubview:circle4];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController popViewControllerAnimated:YES];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
