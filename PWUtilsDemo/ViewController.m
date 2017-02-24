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
    NSLog(@"%@", @(333).pw_toString);
    
    self.view.backgroundColor = [UIColor pw_colorWithHex:0xff552e];
}

- (IBAction)click:(id)sender {
    [self pw_dismissKeyboard];
}

@end
