//
//  NSObject+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PWAdd)

- (NSArray<NSString *> *)pw_propertyNames;

- (void)pw_encodeWithCoder:(NSCoder *)aCoder;
- (void)pw_decodeWithCoder:(NSCoder *)aCoder;

- (NSString *)pw_toString;

@end
