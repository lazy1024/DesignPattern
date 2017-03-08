//
//  GoodBodyViewController.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/8.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import "GoodBodyViewController.h"

@interface GoodBodyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *MainBtn;

@end

@implementation GoodBodyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.MainBtn.layer.cornerRadius = self.MainBtn.frame.size.width / 2.0;
    self.MainBtn.clipsToBounds = TRUE;

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
