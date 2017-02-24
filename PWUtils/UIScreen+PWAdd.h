//
//  UIScreen+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (PWAdd)

+ (CGFloat)pw_screenScale;

@end


#define PW_SCREEN_BOUNDS [UIScreen mainScreen].bounds
#define PW_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define PW_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
