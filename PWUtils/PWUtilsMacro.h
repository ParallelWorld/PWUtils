//
//  PWUtilsMacro.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/23.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "PWUtilsFunction.h"

#ifndef PWUtilsMacro_h
#define PWUtilsMacro_h

/// 将任意类型的变量转化成字符串
#define PW_TOSTRING(var) [NSString stringWithFormat:@"%@", pw_box(@encode(__typeof__((var))), (var))]


/// 单例
#define PW_SINGLETON_INTERFACE(className) \
+ (instancetype)shared##className##Instance;

#define PW_SINGLETON_IMPLEMENTATION(className) \
static className *_instanceOf##className; \
+ (id)allocWithZone:(NSZone *)zone { \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instanceOf##className = [super allocWithZone:zone]; \
    }); \
    return _instanceOf##className; \
} \
+ (instancetype)shared##className##Instance { \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        _instanceOf##className = [[self alloc] init]; \
    }); \
    return _instanceOf##className; \
}


/// 打印变量
#ifdef DEBUG
    #define PW_LOG(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
    #define PW_LOG_VAR(var) PW_LOG(@"%@", pw_box(@encode(__typeof__((var))), (var)))
#else
    #define PW_LOG(...)
    #define PW_LOG_VAR(var)
#endif



/// 对象的强引用和弱引用
#define PW_WEAKIFY(object) __weak __typeof__(object) weak##_##object = object;
#define PW_STRONGIFY(object) __typeof__(object) object = weak##_##object;


#endif /* PWUtilsMacro_h */
