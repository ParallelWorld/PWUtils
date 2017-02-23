//
//  NSMutableArray+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/20.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSMutableArray+PWAdd.h"

@implementation NSMutableArray (PWAdd)

- (void)pw_insertObject:(id)anObject atIndex:(NSUInteger)index {
    if (!anObject || index > self.count) {
        return;
    }
    [self insertObject:anObject atIndex:index];
}

- (void)pw_insertObjects:(NSArray *)objects atIndex:(NSUInteger)index {
    for (id anObject in objects) {
        [self pw_insertObject:anObject atIndex:index++];
    }
}

- (void)pw_reverse {
    NSUInteger count = self.count;
    NSUInteger exchangeCount = count / 2;
    for (NSUInteger i = 0; i < exchangeCount; i++) {
        [self exchangeObjectAtIndex:i withObjectAtIndex:(count - 1 - i)];
    }
}

- (void)pw_push:(id)anObject {
    if (!anObject) {
        return;
    }
    [self addObject:anObject];
}

- (id)pw_pop {
    id lastObject = [self lastObject];
    [self removeLastObject];
    return lastObject;
}

- (id)pw_shift {
    id firstObject = self.firstObject;
    if (firstObject) {
        [self removeObjectAtIndex:0];
    }
    return firstObject;
}

- (void)pw_unshift:(id)anObject {
    if (!anObject) {
        return;
    }
    [self insertObject:anObject atIndex:0];
}

@end
