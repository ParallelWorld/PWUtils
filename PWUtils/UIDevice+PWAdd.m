//
//  UIDevice+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIDevice+PWAdd.h"

@implementation UIDevice (PWAdd)

+ (double)pw_systemVersion {
    static double version;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        version = [[UIDevice currentDevice].systemVersion doubleValue];
    });
    return version;
}

- (BOOL)pw_isPad {
    static BOOL pad;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        pad = self.userInterfaceIdiom == UIUserInterfaceIdiomPad;
    });
    return pad;
}

- (BOOL)pw_isSimulator {
    static BOOL simulator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        simulator = [self.model rangeOfString:@"Simulator"].location != NSNotFound;
    });
    return simulator;
}

- (NSDate *)pw_systemStartupTime {
    NSTimeInterval time = [NSProcessInfo processInfo].systemUptime;
    return [[NSDate alloc] initWithTimeIntervalSinceNow:-time];
}

- (long long)pw_diskSpace {
    NSError *error;
    NSDictionary<NSFileAttributeKey, id> *attributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];
    if (error) {
        return -1;
    }
    long long space = [attributes[NSFileSystemSize] longLongValue];
    if (space < 0) {
        space = -1;
    }
    return space;
}

- (long long)pw_freeDiskSpace {
    NSError *error;
    NSDictionary<NSFileAttributeKey, id> *attributes = [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];
    if (error) {
        return -1;
    }
    long long space = [attributes[NSFileSystemFreeSize] longLongValue];
    if (space < 0) {
        space = -1;
    }
    return space;
}

- (long long)pw_usedDiskSpace {
    long long total = self.pw_diskSpace;
    long long free = self.pw_freeDiskSpace;
    if (total < 0 || free < 0) {
        return -1;
    }
    long long used = total - free;
    if (used < 0) {
        used = -1;
    }
    return used;
}

@end
