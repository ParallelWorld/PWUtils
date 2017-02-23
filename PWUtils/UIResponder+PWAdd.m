//
//  UIResponder+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIResponder+PWAdd.h"

@implementation UIResponder (PWAdd)

- (void)pw_dismissKeyboard {
    // http://stackoverflow.com/questions/741185/easy-way-to-dismiss-keyboard
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

@end
