//
//  ViewController.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/20.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "ViewController.h"
#import "PWUtils.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDate *date = [NSDate date];
    NSString *s = [date pw_stringWithFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSLog(@"%@", @(date.pw_year));
}

- (IBAction)click:(id)sender {
    [self pw_dismissKeyboard];
}

@end
