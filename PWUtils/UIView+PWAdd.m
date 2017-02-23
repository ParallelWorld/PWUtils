//
//  UIView+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIView+PWAdd.h"

@implementation UIView (PWAdd)

- (void)pw_removeAllSubviews {
    while (self.subviews.count != 0) {
        [self.subviews.lastObject removeFromSuperview];
    }
}

- (UIViewController *)pw_viewController {
    for (UIView *view = self; view; view = view.superview) {
        UIResponder *nextResponder = view.nextResponder;
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

- (CGFloat)pw_left {
    return self.frame.origin.x;
}

- (CGFloat)pw_top {
    return self.frame.origin.y;
}

- (CGFloat)pw_right {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)pw_bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)pw_width {
    return self.frame.size.width;
}

- (CGFloat)pw_height {
    return self.frame.size.height;
}

- (CGFloat)pw_centerX {
    return self.center.x;
}

- (CGFloat)pw_centerY {
    return self.center.y;
}

- (CGPoint)pw_origin {
    return self.frame.origin;
}

- (CGSize)pw_size {
    return self.frame.size;
}

- (void)setPw_left:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (void)setPw_top:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (void)setPw_right:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (void)setPw_bottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)setPw_width:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setPw_height:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setPw_centerX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (void)setPw_centerY:(CGFloat)centerY {
    self.center = CGPointMake(self .center.x, centerY);
}

- (void)setPw_origin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (void)setPw_size:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

@end
