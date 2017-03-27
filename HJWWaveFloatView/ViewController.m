//
//  ViewController.m
//  HJWWaveFloatView
//
//  Created by Lemon_Mr.H on 2017/3/27.
//  Copyright © 2017年 Lemon_Mr.H. All rights reserved.
//

#import "ViewController.h"
#import "GroupController.h"
#import "FloatController.h"
#import "WaveController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - BtnsAction
- (IBAction)GroupAction:(UIButton *)sender {
    GroupController * group = [GroupController new];
    [self.navigationController pushViewController:group animated:YES];
}

- (IBAction)WaveBtnAction:(id)sender {
    WaveController * wave = [WaveController new];
    [self.navigationController pushViewController:wave animated:YES];
}

- (IBAction)FloatBtnAction:(id)sender {
    FloatController * singleFolat = [FloatController new];
    [self.navigationController pushViewController:singleFolat animated:YES];
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
