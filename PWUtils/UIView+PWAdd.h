//
//  UIView+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PWAdd)

- (void)pw_removeAllSubviews;

- (UIViewController *)pw_viewController;

@property (nonatomic, assign) CGFloat pw_left;
@property (nonatomic, assign) CGFloat pw_top;
@property (nonatomic, assign) CGFloat pw_right;
@property (nonatomic, assign) CGFloat pw_bottom;

@property (nonatomic, assign) CGFloat pw_width;
@property (nonatomic, assign) CGFloat pw_height;

@property (nonatomic, assign) CGFloat pw_centerX;
@property (nonatomic, assign) CGFloat pw_centerY;
@property (nonatomic, assign) CGPoint pw_origin;
@property (nonatomic, assign) CGSize pw_size;

@end
