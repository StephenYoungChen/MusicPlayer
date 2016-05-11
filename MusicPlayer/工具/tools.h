//
//  tools.h
//  MusicPlayer
//
//  Created by 杨状状 on 16/5/11.
//  Copyright © 2016年 杨状状. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tools : NSObject

+(void)setNavBar:(UIViewController *)controller LeftBtnWithImageFile:(NSString *)imgFile orTitle:(NSString *)title andSEL:(SEL)select RightBtnWithImageFile:(NSString *)rightImgFile orRightTitle:(NSString *)rightTitle andSEL:(SEL)rightSelect;

@end
