//
//  UIColor+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIColor+PWAdd.h"

@implementation UIColor (PWAdd)

+ (UIColor *)pw_randomColor {
    return [UIColor colorWithRed:arc4random() % 255
                           green:arc4random() % 255
                            blue:arc4random() % 255
                           alpha:1];
}

+ (UIColor *)pw_colorWithRed:(CGFloat)red
                       green:(CGFloat)green
                        blue:(CGFloat)blue
                       alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red/255.0f
                           green:green/255.0f
                            blue:blue/255.0f
                           alpha:alpha];
}

+ (UIColor *)pw_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    return [self colorWithRed:red green:green blue:blue alpha:1];
}

+ (UIColor *)pw_colorWithHex:(UInt32)hex {
    return [self pw_colorWithHex:hex alpha:1];
}

+ (UIColor *)pw_colorWithHex:(UInt32)hex alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:(((hex)&0xFF0000)>>16)/255.0
                           green:(((hex)&0xFF00)>>8)/255.0
                            blue:((hex)&0xFF)/255.0
                           alpha:alpha];
}

@end
