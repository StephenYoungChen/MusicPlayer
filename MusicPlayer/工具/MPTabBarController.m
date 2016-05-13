//
//  MPTabBarController.m
//  MusicPlayer
//
//  Created by 杨状状 on 16/5/12.
//  Copyright © 2016年 杨状状. All rights reserved.
//

#import "MPTabBarController.h"
#import "MPPlayerVC.h"
#import "ViewController.h"
#import "MPListTableVC.h"

@interface MPTabBarController ()

@end

@implementation MPTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"this is why we play!");
    ViewController *homeVC = [[ViewController alloc]init];
    UINavigationController *navHome = [[UINavigationController alloc]initWithRootViewController:homeVC];
    navHome.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"home"] selectedImage:[UIImage imageNamed:@"home-select"]];
    
    MPListTableVC *listVC = [[MPListTableVC alloc]init];
    UINavigationController *navList = [[UINavigationController alloc]initWithRootViewController:listVC];
    navList.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"列表" image:[UIImage imageNamed:@"me"] selectedImage:[UIImage imageNamed:@"me-select"]];
    self.viewControllers = @[navHome,navList];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
