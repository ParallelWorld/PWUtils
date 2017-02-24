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


#define PW_COLOR_RGB(r, g, b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0]
#define PW_COLOR_RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define PW_COLOR_HEX(v) [UIColor colorWithRed:(((v)&0xFF0000)>>16)/255.0 green:(((v)&0xFF00)>>8)/255.0 blue:((v)&0xFF)/255.0 alpha:1.0]
#define PW_COLOR_HEXA(v, a) [UIColor colorWithRed:(((v)&0xFF0000)>>16)/255.0 green:(((v)&0xFF00)>>8)/255.0 blue:((v)&0xFF)/255.0 alpha:(a)]
