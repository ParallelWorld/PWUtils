//
//  NSData+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (PWAdd)

/// Returns the content type as string for an image data, such as image/jpeg, image/gif.
+ (NSString *)pw_contentTypeForImageData:(NSData *)data;

@end
