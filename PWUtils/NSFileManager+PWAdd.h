//
//  NSFileManager+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/25.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (PWAdd)

+ (NSURL *)pw_documentURL;
+ (NSString *)pw_documentPath;

+ (NSURL *)pw_cachesURL;
+ (NSString *)pw_cachesPath;

+ (NSURL *)pw_libraryURL;
+ (NSString *)pw_libraryPath;

@end
