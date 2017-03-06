//
//  UIViewController+PWSwipeBack.h
//  Demo
//
//  Created by Huang Wei on 2017/3/6.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PWSwipeBack)

/// 如果controller自定义返回按钮，则出现无法左滑返回的情况。
/// 设置此值，确定是否可以左滑返回。
@property (nonatomic) BOOL pw_swipeBackEnabled; ///< 是否可以左滑返回，默认是`YES`

@end
