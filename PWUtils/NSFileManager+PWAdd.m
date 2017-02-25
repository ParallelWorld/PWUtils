//
//  NSFileManager+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/25.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "NSFileManager+PWAdd.h"

@implementation NSFileManager (PWAdd)

+ (NSURL *)pw_documentURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)pw_documentPath {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSURL *)pw_cachesURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)pw_cachesPath {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
}

+ (NSURL *)pw_libraryURL {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)pw_libraryPath {
    return [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
}

@end
