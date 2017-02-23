//
//  NSArray+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSArray+PWAdd.h"

@implementation NSArray (PWAdd)

- (id)pw_objectAtIndex:(NSUInteger)index {
    return index < self.count ? self[index] : nil;
}

@end
