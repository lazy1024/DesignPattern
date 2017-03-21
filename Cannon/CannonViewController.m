//
//  CannonViewController.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import "CannonViewController.h"
#import "Cannon.h"


@interface CannonViewController ()

@end

@implementation CannonViewController

Cannon *cannon;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Short: %lu", sizeof(short));
    NSLog(@"Short: %lu", sizeof(int));
    
    cannon = [[Cannon alloc] init];
}
- (IBAction)Test1:(id)sender {
    [cannon PositionInit];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
