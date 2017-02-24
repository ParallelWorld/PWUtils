//
//  NSObject+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSObject+PWAdd.h"
#import <objc/runtime.h>

@implementation NSObject (PWAdd)

- (NSArray<NSString *> *)pw_propertyNames {
    NSMutableArray *names = [NSMutableArray new];
    unsigned int propertyCount = 0;
    objc_property_t *properties = class_copyPropertyList([self class], &propertyCount);
    if (properties) {
        for (unsigned int i = 0; i < propertyCount; i++) {
            const char *name = property_getName(properties[i]);
            if (name) {
                [names addObject:[NSString stringWithUTF8String:name]];
            }
        }
        free(properties);
    }
    return names;
}

- (void)pw_encodeWithCoder:(NSCoder *)aCoder {
    NSArray *names = [self pw_propertyNames];
    for (NSString *name in names) {
        id value = [self valueForKey:name];
        if (!value) {
            return;
        }
        [aCoder encodeObject:value forKey:name];
    }
}

- (void)pw_decodeWithCoder:(NSCoder *)aCoder {
    NSArray *names = [self pw_propertyNames];
    for (NSString *name in names) {
        id value = [aCoder decodeObjectForKey:name];
        if (!value) {
            return;
        }
        [self setValue:value forKey:name];
    }
}

@end
