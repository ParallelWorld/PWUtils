//
//  NSString+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (PWAdd)

/// URL encode
- (NSString *)pw_stringByURLEncode;

/// URL decode
- (NSString *)pw_stringByURLDecode;

/// 整体的size
- (CGSize)pw_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

/// 单行的宽度
- (CGFloat)pw_widthForFont:(UIFont *)font;

/// 字符串可换行，给定宽度，求高度
- (CGFloat)pw_heightForFont:(UIFont *)font width:(CGFloat)width;

@end
