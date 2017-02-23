//
//  UIResponder+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (PWAdd)

/// UIView和UIViewController都是继承自UIResponder，所以将键盘消失的方法放在该类实例方法中。
- (void)pw_dismissKeyboard;

@end
