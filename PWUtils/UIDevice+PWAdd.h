//
//  UIDevice+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (PWAdd)

@end


/// 判断系统版本
#define PW_SYSTEM_VERSION [[UIDevice currentDevice].systemVersion doubleValue]
#define PW_SYSTEM_VERSION_LESS_THAN(v) ([[UIDevice currentDevice].systemVersion doubleValue] <= v)
#define PW_SYSTEM_VERSION_MORE_THAN(v) ([[UIDevice currentDevice].systemVersion doubleValue] >= v)
