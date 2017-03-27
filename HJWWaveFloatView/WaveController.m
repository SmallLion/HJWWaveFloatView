//
//  WaveController.m
//  HJWWaveFloatView
//
//  Created by Lemon_Mr.H on 2017/3/27.
//  Copyright © 2017年 Lemon_Mr.H. All rights reserved.
//

#import "WaveController.h"
#import "HJWWaveView.h"
#import "ReplicatorLineAnimationView.h"
#import "UIView+HJW.h"

@interface WaveController ()

@end

@implementation WaveController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    [self setup];
}

- (void)setup {
    /**
     Use:
     1. New A HJWWaveView Class
        · set phase, waveCrest, waveCount, type...
     2. New DrawingStyle of fillStyle and DrawingStyle of strokeStyle
        · set fillColor, fillStyle/ storkeColor, storkeStyle...
     3. New A ReplicatorLineAnimationView Class,
        · set direction, speed, contentView...
        · startAnimation
     
     Description:
     - DrawRectObject 
       This is a tool, to help you draw shapes faster.
     
     - ReplicatorLineAnimationView
       This is a tool, to help you realize the effects what is repeat moving.
     */

    // Wave 1
    {
        HJWWaveView *waveView = [[HJWWaveView alloc] initWithFrame:CGRectMake(0, 0, Width, Height)];
        waveView.phase     = 0.f;
        waveView.waveCrest = 5.f;
        waveView.waveCount = 1;
        waveView.type      = kStrokeWave | kFillWave;
        
        {
            DrawingStyle *fillStyle = [DrawingStyle new];
            fillStyle.fillColor     = [DrawingColor colorWithUIColor:[[UIColor redColor] colorWithAlphaComponent:0.25f]];
            waveView.fillStyle      = fillStyle;
            
            DrawingStyle *strokeStyle = [DrawingStyle new];
            strokeStyle.strokeColor   = [DrawingColor colorWithUIColor:[[UIColor redColor] colorWithAlphaComponent:0.5f]];
            strokeStyle.lineWidth     = 0.5f;
            waveView.strokeStyle      = strokeStyle;
        }
        
        ReplicatorLineAnimationView *replicatorLineView = [[ReplicatorLineAnimationView alloc] initWithFrame:waveView.bounds];
        replicatorLineView.direction   = kReplicatorLeft;
        replicatorLineView.speed       = 0.1f;
        replicatorLineView.contentView = waveView;
        [replicatorLineView startAnimation];
        [self.view addSubview:replicatorLineView];
    }
    
    // Wave 2
    {
        HJWWaveView *waveView = [[HJWWaveView alloc] initWithFrame:CGRectMake(0, 0, Width, Height)];
        waveView.phase     = 0.f;
        waveView.waveCrest = 10.f;
        waveView.waveCount = 1;
        waveView.type      = kStrokeWave | kFillWave;
        
        {
            DrawingStyle *fillStyle = [DrawingStyle new];
            fillStyle.fillColor     = [DrawingColor colorWithUIColor:[[UIColor redColor] colorWithAlphaComponent:0.5f]];
            waveView.fillStyle      = fillStyle;
            
            DrawingStyle *strokeStyle = [DrawingStyle new];
            strokeStyle.strokeColor   = [DrawingColor colorWithUIColor:[UIColor redColor]];
            strokeStyle.lineWidth     = 0.5f;
            waveView.strokeStyle      = strokeStyle;
        }
        
        ReplicatorLineAnimationView *replicatorLineView = [[ReplicatorLineAnimationView alloc] initWithFrame:waveView.bounds];
        replicatorLineView.direction = kReplicatorLeft;
        replicatorLineView.speed     = 0.3f;
        replicatorLineView.contentView = waveView;
        [replicatorLineView startAnimation];
        [self.view addSubview:replicatorLineView];
    }
    
    // Wave 3
    {
        HJWWaveView *waveView = [[HJWWaveView alloc] initWithFrame:CGRectMake(0, 0, Width, Height)];
        waveView.phase     = 10.f;
        waveView.waveCrest = 15.f;
        waveView.waveCount = 1;
        waveView.type      = kFillWave;
        
        {
            DrawingStyle *fillStyle = [DrawingStyle new];
            fillStyle.fillColor     = [DrawingColor colorWithUIColor:[UIColor redColor]];
            waveView.fillStyle      = fillStyle;
        }
        
        ReplicatorLineAnimationView *replicatorLineView = [[ReplicatorLineAnimationView alloc] initWithFrame:waveView.bounds];
        replicatorLineView.direction   = kReplicatorLeft;
        replicatorLineView.speed       = 0.5f;
        replicatorLineView.contentView = waveView;
        [replicatorLineView startAnimation];
        [self.view addSubview:replicatorLineView];
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
