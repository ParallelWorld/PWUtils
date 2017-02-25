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
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    PW_LOG_VAR(CGSizeMake(32, 23323));
    [self.button pw_setBackgroundColor:UIColor.redColor forState:UIControlStateNormal];
    BOOL isLargerThan7 = PW_SYSTEM_VERSION_MORE_THAN(7.0);
    PW_LOG_VAR(isLargerThan7);
    
    long long space = [UIDevice currentDevice].pw_diskSpace;
}

- (IBAction)click:(id)sender {
    [self pw_dismissKeyboard];
}

@end
