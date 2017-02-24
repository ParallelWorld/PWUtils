//
//  NSMutableDictionary+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (PWAdd)

- (id)pw_removeObjectForKey:(id <NSCopying>)aKey;

- (void)pw_setObject:(id)anObject forKey:(id <NSCopying>)aKey;

@end
