//
//  ViewController.m
//  HJWWaveFloatView
//
//  Created by Lemon_Mr.H on 2017/3/24.
//  Copyright © 2017年 Lemon_Mr.H. All rights reserved.
//

#import "ViewController.h"
#import "HJWWaveFloatView.h"

@interface ViewController ()
@property (nonatomic, strong) HJWWaveFloatView * waveFloatView;

@end

@implementation ViewController

- (HJWWaveFloatView *)waveFloatView {
    if (!_waveFloatView) {
        _waveFloatView = [[HJWWaveFloatView alloc] initWithFrame:
                          CGRectMake(0, 0, self.view.frame.size.width, 200)
                                                       MainColor:@"53cac4"
                                                 MainSecondColor:@"ace6e2"
                                                 CircleFillColor:@"57d0c9"
                                           CircleSecondFillColor:@"5bd6ce"];
        _waveFloatView.center = self.view.center;
    }
    return _waveFloatView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.waveFloatView];
}

- (void)viewWillAppear:(BOOL)animated {
    [self.waveFloatView startWave];
    [self.waveFloatView randomCircle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
