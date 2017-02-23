
//
//  UIScreen+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIScreen+PWAdd.h"

@implementation UIScreen (PWAdd)

+ (CGFloat)pw_screenScale {
    static CGFloat screenScale = 0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [UIScreen mainScreen].scale;
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                screenScale = [UIScreen mainScreen].scale;
            });
        }
    });
    return screenScale;
}

@end
