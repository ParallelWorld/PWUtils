//
//  UIViewController+PWSwipeBack.m
//  Demo
//
//  Created by Huang Wei on 2017/3/6.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIViewController+PWSwipeBack.h"
#import "Aspects.h"
#import <objc/runtime.h>





@interface UINavigationController (PWSwipeBack) <UIGestureRecognizerDelegate>

- (void)pw_addControllerClass:(Class)clazz swipeBackEnabled:(BOOL)enabled;

@end

@implementation UINavigationController (PWSwipeBack)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self aspect_hookSelector:@selector(viewDidLoad) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo) {
            UINavigationController *nav = aspectInfo.instance;
            nav.interactivePopGestureRecognizer.delegate = nav;
        } error:NULL];
    });
}

- (void)pw_addControllerClass:(Class)clazz swipeBackEnabled:(BOOL)enabled {
    if (enabled) {
        [self.pw_noSwipeBackControllerClasses removeObject:clazz];
        return;
    }
    [self.pw_noSwipeBackControllerClasses addObject:clazz];
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        
        // 判断是否是根控制器，如果是，则返回NO，否则会造成app假死
        BOOL isRoot = self.viewControllers.count <= 1;
        if (isRoot) {
            return NO;
        }
        
        // 判断用户是否禁止当前controller的手势
        Class currentViewControllerClass = self.topViewController.class;
        NSMutableSet *classSet = self.pw_noSwipeBackControllerClasses;
        if ([classSet containsObject:currentViewControllerClass]) {
            return NO;
        }
        
        return YES;
    }
    return YES;
}

/// 不能左滑返回的controllerClass集合
- (NSMutableSet<Class> *)pw_noSwipeBackControllerClasses {
    NSMutableSet *classes = objc_getAssociatedObject(self, _cmd);
    if (!classes) {
        classes = [NSMutableSet new];
        objc_setAssociatedObject(self, _cmd, classes, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return classes;
}

@end







@implementation UIViewController (PWSwipeBack)

- (void)setPw_swipeBackEnabled:(BOOL)enabled {
    objc_setAssociatedObject(self, @selector(pw_swipeBackEnabled), @(enabled), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self.navigationController pw_addControllerClass:self.class swipeBackEnabled:enabled];
}

- (BOOL)pw_swipeBackEnabled {
    NSNumber *enabled = objc_getAssociatedObject(self, _cmd);
    if (!enabled) {
        return YES;
    }
    return enabled.boolValue;
}

@end

