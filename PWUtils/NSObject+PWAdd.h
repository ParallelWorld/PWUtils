//
//  NSObject+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PWAdd)

/// 属性名数组
- (NSArray<NSString *> *)pw_propertyNames;

/// 序列化
- (void)pw_encodeWithCoder:(NSCoder *)aCoder;
- (void)pw_decodeWithCoder:(NSCoder *)aCoder;

@end

/// NSObject自动序列化
#define PW_CODING_IMPLEMENTATION \
- (instancetype)initWithCoder:(NSCoder *)aDecoder { \
    self = [super init]; \
    if (self) { \
        [self pw_decodeWithCoder:aDecoder]; \
    } \
    return self; \
} \
- (void)encodeWithCoder:(NSCoder *)aCoder { \
    [self pw_encodeWithCoder:aCoder]; \
}
