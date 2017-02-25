//
//  UITableView+PWAdd.h
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/25.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (PWAdd)

/// 如果nib文件存在，则会注册nib，否则注册class
- (void)pw_registerCellClassOrNib:(NSString *)classNameOrNibName forCellReuseIdentifier:(NSString *)identifier;

- (void)pw_scrollToRow:(NSUInteger)row inSection:(NSUInteger)section atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated;

- (void)pw_insertRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;
- (void)pw_reloadRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;
- (void)pw_deleteRow:(NSUInteger)row inSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

- (void)pw_insertRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;
- (void)pw_reloadRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;
- (void)pw_deleteRowAtIndexPath:(NSIndexPath *)indexPath withRowAnimation:(UITableViewRowAnimation)animation;

- (void)pw_insertSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;
- (void)pw_reloadSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;
- (void)pw_deleteSection:(NSUInteger)section withRowAnimation:(UITableViewRowAnimation)animation;

@end
