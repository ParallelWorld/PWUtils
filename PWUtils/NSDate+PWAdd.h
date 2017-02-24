//
//  NSDate+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (PWAdd)

@property (nonatomic, readonly) NSInteger pw_year;
@property (nonatomic, readonly) NSInteger pw_month; ///< 1~12
@property (nonatomic, readonly) NSInteger pw_day; ///< 1~31
@property (nonatomic, readonly) NSInteger pw_hour; ///< 0~24
@property (nonatomic, readonly) NSInteger pw_minute; ///< 0~60
@property (nonatomic, readonly) NSInteger pw_second; ///< 0~60
@property (nonatomic, readonly) NSInteger pw_nanosecond;

@property (nonatomic, readonly) NSInteger pw_quarter; ///< 刻钟单位，也就是15分钟。范围是1~4

@property (nonatomic, readonly) NSInteger pw_weekday; ///< 1-7，用户设置决定了第1天是周日还是周一
@property (nonatomic, readonly) NSInteger pw_weekdayOrdinal; ///< 以7天为单位，范围是1~5，1~7号为第1个7天，8~14号为第2个7天...
@property (nonatomic, readonly) NSInteger pw_weekOfMonth; ///< 1个月包含的周数，最多6周
@property (nonatomic, readonly) NSInteger pw_weekOfYear; ///< 1年包含的周数，最多53周

@property (nonatomic, readonly) BOOL pw_isLeapYear; ///< 是否是闰年

@property (nonatomic, readonly) BOOL pw_isToday; ///< 是否是今天
@property (nonatomic, readonly) BOOL pw_isYesterday; ///< 是否是昨天
@property (nonatomic, readonly) BOOL pw_isTomorrow; ///< 是否是明天


- (NSDate *)pw_dateByAddingYears:(NSInteger)years;
- (NSDate *)pw_dateByAddingMonths:(NSInteger)months;
- (NSDate *)pw_dateByAddingWeeks:(NSInteger)weeks;
- (NSDate *)pw_dateByAddingDays:(NSInteger)days;
- (NSDate *)pw_dateByAddingHours:(NSInteger)hours;
- (NSDate *)pw_dateByAddingMinutes:(NSInteger)minutes;
- (NSDate *)pw_dateByAddingSeconds:(NSInteger)seconds;


/// http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
/// e.g. @"yyyy-MM-dd HH:mm:ss"
- (NSString *)pw_stringWithFormat:(NSString *)format;

+ (NSDate *)pw_dateWithString:(NSString *)dateString format:(NSString *)format;

@end
