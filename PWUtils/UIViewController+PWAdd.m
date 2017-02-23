//
//  UIViewController+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIViewController+PWAdd.h"

@implementation UIViewController (PWAdd)

- (void)pw_backAnimated:(BOOL)animated {
    if (self.navigationController) {
        if (self.navigationController.viewControllers.count == 1) {
            [self.navigationController dismissViewControllerAnimated:animated completion:nil];
        } else {
            [self.navigationController popViewControllerAnimated:animated];
        }
    } else {
        [self dismissViewControllerAnimated:animated completion:nil];
    }
}

@end
