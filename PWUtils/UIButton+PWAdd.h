//
//  UIButton+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, PWButtonAlignmentType) {
    PWButtonLeftImageRightTitle, // 这个是UIButton的默认实现
    PWButtonRightImageLeftTitle,
    PWButtonTopImageBottomTitle,
    PWButtonBottomImageTopTitle,
};

@interface UIButton (PWAdd)

/// 生成一张具有该颜色的图片，调用`setBackgroundImage:forState:`方法实现
- (void)pw_setBackgroundColor:(UIColor *)color forState:(UIControlState)state;

/// 设置button的image和title的位置关系
- (void)pw_setContentWithSpace:(CGFloat)space forType:(PWButtonAlignmentType)type;

@end
