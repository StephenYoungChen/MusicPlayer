//
//  ViewController.m
//  MusicPlayer
//
//  Created by 杨状状 on 16/5/9.
//  Copyright © 2016年 杨状状. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setHeaderView];
}
#pragma mark 创建导航条
- (void)setHeaderView
{
    self.navigationItem.title = @"聆听音乐";
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:124.0/255.0 green:34.0/255.0 blue:104.0/255.0 alpha:1.0];
    //self.view.backgroundColor = [UIColor colorWithRed:219.0/255.0 green:81/255.0 blue:133.0/255.0 alpha:1.0];
    [tools setNavBar:self LeftBtnWithImageFile:nil orTitle:@"列表" andSEL:@selector(gotoMPListTableVC) RightBtnWithImageFile:nil orRightTitle:@"播放" andSEL:@selector(gotoPlayerVC)];
    
}

- (void)gotoMPListTableVC
{
    
}

- (void)gotoPlayerVC
{
    
}
@end
