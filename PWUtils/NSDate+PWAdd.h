//
//  NSDate+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (PWAdd)

/// http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
/// e.g. @"yyyy-MM-dd HH:mm:ss"
- (NSString *)pw_stringWithFormat:(NSString *)format;

+ (NSDate *)pw_dateWithString:(NSString *)dateString format:(NSString *)format;

@end
