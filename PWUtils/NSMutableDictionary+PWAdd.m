//
//  NSMutableDictionary+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSMutableDictionary+PWAdd.h"

@implementation NSMutableDictionary (PWAdd)

- (id)pw_removeObjectForKey:(id <NSCopying>)aKey {
    if (!aKey) {
        return nil;
    }
    id value = self[aKey];
    [self removeObjectForKey:aKey];
    return value;
}

- (void)pw_setObject:(id)anObject forKey:(id <NSCopying>)aKey {
    if (!aKey) {
        return;
    }
    if (!anObject) {
        return;
    }
    [self setObject:anObject forKey:aKey];
}

@end
