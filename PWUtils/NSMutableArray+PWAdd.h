//
//  NSMutableArray+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/20.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (PWAdd)

- (void)pw_insertObject:(id)anObject atIndex:(NSUInteger)index;

- (void)pw_insertObjects:(NSArray *)objects atIndex:(NSUInteger)index;

- (void)pw_reverse;

#pragma mark - Stack & Queue

- (void)pw_push:(id)anObject;

- (id)pw_pop;

- (id)pw_shift;

- (void)pw_unshift:(id)anObject;

@end
