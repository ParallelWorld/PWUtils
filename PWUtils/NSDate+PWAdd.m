//
//  NSDate+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSDate+PWAdd.h"

@implementation NSDate (PWAdd)

- (NSInteger)pw_year {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitYear fromDate:self];
}

- (NSInteger)pw_month {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitMonth fromDate:self];
}

- (NSInteger)pw_day {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitDay fromDate:self];
}

- (NSInteger)pw_hour {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitHour fromDate:self];
}

- (NSInteger)pw_minute {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitMinute fromDate:self];
}

- (NSInteger)pw_second {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitSecond fromDate:self];
}

- (NSInteger)pw_nanosecond {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitNanosecond fromDate:self];
}

- (NSInteger)pw_quarter {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitQuarter fromDate:self];
}

- (NSInteger)pw_weekday {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitWeekday fromDate:self];
}

- (NSInteger)pw_weekdayOrdinal {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitWeekdayOrdinal fromDate:self];
}

- (NSInteger)pw_weekOfMonth {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitWeekOfMonth fromDate:self];
}

- (NSInteger)pw_weekOfYear {
    return [[NSCalendar currentCalendar] component:NSCalendarUnitWeekOfYear fromDate:self];
}

- (BOOL)pw_isLeapYear {
    NSInteger year = self.pw_year;
    return (year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0));
}

- (BOOL)pw_isToday {
    if (fabs(self.timeIntervalSinceNow) >= 3600 * 24) {
        return NO;
    }
    return [NSDate date].pw_day == self.pw_day;
}

- (BOOL)pw_isYesterday {
    NSDate *date = [self pw_dateByAddingDays:1];
    return [date pw_isToday];
}

- (BOOL)pw_isTomorrow {
    NSDate *date = [self pw_dateByAddingDays:-1];
    return [date pw_isToday];
}

- (NSDate *)pw_dateByAddingYears:(NSInteger)years {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.year = years;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}

- (NSDate *)pw_dateByAddingMonths:(NSInteger)months {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.month = months;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}

- (NSDate *)pw_dateByAddingWeeks:(NSInteger)weeks {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.weekOfYear = weeks;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}
- (NSDate *)pw_dateByAddingDays:(NSInteger)days {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.day = days;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}
- (NSDate *)pw_dateByAddingHours:(NSInteger)hours {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.hour = hours;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}
- (NSDate *)pw_dateByAddingMinutes:(NSInteger)minutes {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.minute = minutes;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}
- (NSDate *)pw_dateByAddingSeconds:(NSInteger)seconds {
    NSCalendar *calendar =  [NSCalendar currentCalendar];
    NSDateComponents *components = [NSDateComponents new];
    components.second = seconds;
    return [calendar dateByAddingComponents:components toDate:self options:0];
}

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
