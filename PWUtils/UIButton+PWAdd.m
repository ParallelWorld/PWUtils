//
//  UIButton+PWAdd.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/24.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "UIButton+PWAdd.h"
#import "UIImage+PWAdd.h"


@implementation UIButton (PWAdd)

- (void)pw_setBackgroundColor:(UIColor *)color forState:(UIControlState)state {
    UIImage *image = [UIImage pw_imageWithColor:color];
    [self setBackgroundImage:image forState:state];
}

- (void)pw_setContentWithSpace:(CGFloat)space forType:(PWButtonAlignmentType)type {
    
    [self setContentEdgeInsets:UIEdgeInsetsZero];
    [self setImageEdgeInsets:UIEdgeInsetsZero];
    [self setTitleEdgeInsets:UIEdgeInsetsZero];
    [self layoutIfNeeded];
    
    CGRect contentRect = [self contentRectForBounds:self.bounds];
    CGSize titleSize = [self titleRectForContentRect:contentRect].size;
    CGSize imageSize = [self imageRectForContentRect:contentRect].size;
    
    CGFloat halfWidth = (titleSize.width + imageSize.width)/2;
    CGFloat halfHeight = (titleSize.height + imageSize.height)/2;
    
    switch (type) {
            
        case PWButtonLeftImageRightTitle: {
            
            [self setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, space)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, space, 0, -space)];
            break;
        }
            
        case PWButtonRightImageLeftTitle: {
            
            [self setContentEdgeInsets:UIEdgeInsetsMake(0, 0, 0, space)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imageSize.width, 0, imageSize.width)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, titleSize.width+space, 0, -titleSize.width-space)];
            break;
        }
            
        case PWButtonTopImageBottomTitle: {
            
            CGFloat contentTopInset = (titleSize.height > imageSize.height ? imageSize.height : halfHeight) + space;
            CGFloat contentLeftInset = titleSize.width > imageSize.width ? -imageSize.width : -halfWidth;
            CGFloat contentBottomInset = titleSize.height > imageSize.height ? 0 : -(imageSize.height - titleSize.height)/2;
            CGFloat contentRightInset = titleSize.width > imageSize.width ? 0 : (imageSize.width - titleSize.width)/2;
            
            CGFloat imageTopInset = -halfHeight-space;
            CGFloat imageLeftInset = halfWidth;
            CGFloat imageBottomInset = -imageTopInset;
            CGFloat imageRightInset = -imageLeftInset;
            
            [self setContentEdgeInsets:UIEdgeInsetsMake(contentTopInset, contentLeftInset, contentBottomInset, contentRightInset)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(imageTopInset, imageLeftInset, imageBottomInset, imageRightInset)];
            
            break;
        }
            
        case PWButtonBottomImageTopTitle: {
            
            CGFloat contentTopInset = titleSize.height > imageSize.height ? 0 : -(imageSize.height - titleSize.height)/2;
            CGFloat contentLeftInset = titleSize.width > imageSize.width ? -imageSize.width : -halfWidth;
            CGFloat contentBottomInset = (titleSize.height > imageSize.height ? imageSize.height : halfHeight) + space;
            CGFloat contentRightInset = titleSize.width > imageSize.width ? 0 : (imageSize.width - titleSize.width)/2;
            
            CGFloat imageTopInset = halfHeight+space;
            CGFloat imageLeftInset = halfWidth;
            CGFloat imageBottomInset = -imageTopInset;
            CGFloat imageRightInset = -imageLeftInset;
            
            [self setContentEdgeInsets:UIEdgeInsetsMake(contentTopInset, contentLeftInset, contentBottomInset, contentRightInset)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(imageTopInset, imageLeftInset, imageBottomInset, imageRightInset)];
            
            break;
        }
    }
    [self layoutIfNeeded];
}

@end
