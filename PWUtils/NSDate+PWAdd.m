//
//  NSDate+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSDate+PWAdd.h"

@implementation NSDate (PWAdd)

- (NSString *)pw_stringWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = format;
    return [formatter stringFromDate:self];
}

+ (NSDate *)pw_dateWithString:(NSString *)dateString format:(NSString *)format {
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = format;
    return [formatter dateFromString:dateString];
}

@end
