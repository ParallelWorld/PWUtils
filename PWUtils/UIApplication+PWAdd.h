//
//  UIApplication+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/25.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (PWAdd)

+ (NSString *)pw_appBundleName;
+ (NSString *)pw_appBundleID;
+ (NSString *)pw_appVersion;
+ (NSString *)pw_appBuildVersion;

@end
