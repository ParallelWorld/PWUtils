//
//  UIColor+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (PWAdd)

+ (UIColor *)pw_randomColor;

/// 颜色值范围是0~255
+ (UIColor *)pw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor *)pw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;

+ (UIColor *)pw_colorWithHex:(UInt32)hex;
+ (UIColor *)pw_colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

@end
