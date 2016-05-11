//
//  tools.m
//  MusicPlayer
//
//  Created by 杨状状 on 16/5/11.
//  Copyright © 2016年 杨状状. All rights reserved.
//

#import "tools.h"

@implementation tools

+(void)setNavBar:(UIViewController *)controller LeftBtnWithImageFile:(NSString *)imgFile orTitle:(NSString *)title andSEL:(SEL)select RightBtnWithImageFile:(NSString *)rightImgFile orRightTitle:(NSString *)rightTitle andSEL:(SEL)rightSelect
{
    UIBarButtonItem *btn = nil;
    if (title !=nil && title.length>0) {
        btn = [[UIBarButtonItem alloc]initWithTitle:title style:UIBarButtonItemStylePlain target:controller action:select];
        [btn setTintColor:[UIColor colorWithHexString:@"#FF7800"]];
        controller.navigationItem.leftBarButtonItem = btn;
    }
    else if (imgFile && imgFile.length >0)
    {
        btn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:imgFile] style:UIBarButtonItemStylePlain target:controller action:select];
        [btn setTintColor:[UIColor colorWithHexString:@"#FF7800"]];
        controller.navigationItem.leftBarButtonItem = btn;
    }else{
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 55, 55);
        [btn setImage:[UIImage imageNamed:imgFile] forState:UIControlStateNormal];
        [btn addTarget:controller action:select forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
        controller.navigationItem.leftBarButtonItem = leftBtn;
    }
    
    UIBarButtonItem *rbtn = nil;
    if (rightTitle !=nil && rightTitle.length>0) {
        rbtn = [[UIBarButtonItem alloc]initWithTitle:rightTitle style:UIBarButtonItemStylePlain target:controller action:rightSelect];
        [rbtn setTintColor:[UIColor colorWithHexString:@"#FF7800"]];
        controller.navigationItem.rightBarButtonItem = rbtn;
    }
    else if (rightImgFile && rightImgFile.length>0){
        rbtn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:rightImgFile] style:UIBarButtonItemStylePlain target:controller action:rightSelect];
        [rbtn setTintColor:[UIColor colorWithHexString:@"#FF7800"]];
        controller.navigationItem.rightBarButtonItem = rbtn;
    }
    else{
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, 40, 40);
        [btn setImage:[UIImage imageNamed:rightImgFile] forState:UIControlStateNormal];
        [btn addTarget:controller action:select forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithCustomView:btn];
        controller.navigationItem.rightBarButtonItem = leftBtn;
    }
}

@end
