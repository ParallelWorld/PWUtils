//
//  ViewController.m
//  PWUtilsDemo
//
//  Created by Huang Wei on 2017/2/20.
//  Copyright © 2017年 Parallel World. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+PWAdd.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSUInteger index = 2;
    NSMutableArray *array = [NSMutableArray new];
    [array pw_push:@1];
    [array pw_push:@2];
    
    [array pw_insertObjects:@[@3,@4] atIndex:index];
    NSLog(@"%@", @(index));
    [array pw_reverse];
    NSLog(@"");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
