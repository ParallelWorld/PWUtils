//
//  UIDevice+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (PWAdd)

/// iOS系统版本
+ (double)pw_systemVersion;

@property (nonatomic, readonly) BOOL pw_isPad;
@property (nonatomic, readonly) BOOL pw_isSimulator;

/// 系统启动的时间
@property (nonatomic, readonly) NSDate *pw_systemStartupTime;

@property (nonatomic, readonly) long long pw_diskSpace;     ///< 硬盘总空间，单位byte，发生错误时返回-1
@property (nonatomic, readonly) long long pw_freeDiskSpace; ///< 硬盘可用空间，单位byte，发生错误时返回-1
@property (nonatomic, readonly) long long pw_usedDiskSpace; ///< 硬盘已用空间，单位byte，发生错误时返回-1

@end


/// 判断系统版本
#define PW_SYSTEM_VERSION [UIDevice pw_systemVersion]
#define PW_SYSTEM_VERSION_LESS_THAN(v) ([UIDevice pw_systemVersion] <= v)
#define PW_SYSTEM_VERSION_MORE_THAN(v) ([UIDevice pw_systemVersion] >= v)
