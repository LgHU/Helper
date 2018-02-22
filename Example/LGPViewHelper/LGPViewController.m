//
//  LGPViewController.m
//  LGPViewHelper
//
//  Created by 2997559549@qq.com on 02/07/2018.
//  Copyright (c) 2018 2997559549@qq.com. All rights reserved.
//

#import "LGPViewController.h"
#import "UIView+ViewHelper.h"

@interface LGPViewController ()

@property (nonatomic, strong) UIView *view_movable;//移动视图
@property (nonatomic, strong) UIView *view_contrast;//对照视图

@end

@implementation LGPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGFloat screenWidth = DeviceScreenWidth();
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"移动" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 30, screenWidth, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    CGFloat left = (screenWidth - 150.)/ 2.;
    self.view_movable = [UIView new];
    self.view_movable.frame = CGRectMake(left, 150, 150, 150);
    self.view_movable.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.view_movable];
    
    self.view_contrast = [UIView new];
    self.view_contrast.frame = CGRectMake(left, 150, 150, 150);
    self.view_contrast.backgroundColor = [UIColor blueColor];
    self.view_contrast.alpha = .5;
    [self.view addSubview:self.view_contrast];
}

- (void)btnClick
{
    self.view_movable.midX = -10;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
