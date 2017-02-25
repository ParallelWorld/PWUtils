//
//  UIApplication+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/25.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIApplication+PWAdd.h"

@implementation UIApplication (PWAdd)

+ (NSString *)pw_appBundleName {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleName"];
}

+ (NSString *)pw_appBundleID {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}

+ (NSString *)pw_appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)pw_appBuildVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

@end
