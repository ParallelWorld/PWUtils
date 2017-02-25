//
//  UIScrollView+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/25.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (PWAdd)

- (void)pw_scrollToTopAnimated:(BOOL)animated;

- (void)pw_scrollToBottomAnimated:(BOOL)animated;

- (void)pw_scrollToLeftAnimated:(BOOL)animated;

- (void)pw_scrollToRightAnimated:(BOOL)animated;

@end
