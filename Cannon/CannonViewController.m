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
    
    cannon = [[Cannon alloc] init];
    
    [self Update];
}

- (void)Update{
    
#if 0
    BYTE i = 0;
    BYTE j = 0;
    BYTE footmanIndex = 0;
    BYTE cannonIndex = 0;
    
    CGFloat positionX = 0;
    CGFloat positionY = 0;
    CGFloat sizeX = _Footman1Btn.frame.size.width;
    CGFloat sizeY = _Footman1Btn.frame.size.height;
    
    
    const UIButton *Footman[FootmanMaxNum] =
    {
        _Footman1Btn,
        _Footman2Btn,
        _Footman3Btn,
        _Footman4Btn,
        _Footman5Btn,
        _Footman6Btn,
        _Footman7Btn,
        _Footman8Btn,
        _Footman9Btn,
        _Footman10Btn,
        _Footman11Btn,
        _Footman12Btn,
        _Footman13Btn,
        _Footman14Btn,
        _Footman15Btn,
    };
    
    const UIButton *Cannon[CannonMaxNum] =
    {
        _Cannon1Btn,
        _Cannon2Btn,
        _Cannon3Btn,
    };
    
    for(i=0; i<FootmanMaxNum; i++)
        Footman[i].hidden = YES;
    
    for(i=0; i<CannonMaxNum; i++)
        Cannon[i].hidden = YES;
    
    for(i=0; i<GameRow; i++)
    {
        for(j=0; j<GameLine; j++)
        {
           if(cannon->Game[i][j] == FootmanValue)
           {
               positionX = cannon->Position[i][j].h;
               positionY = cannon->Position[i][j].v;
               
               Footman[footmanIndex].frame = CGRectMake(positionY, positionX, sizeX, sizeY);
               Footman[footmanIndex++].hidden = NO;
               
               
           }
            
            if(cannon->Game[i][j] == CannonValue)
            {
                positionX = cannon->Position[i][j].h;
                positionY = cannon->Position[i][j].v;
                
                
                Cannon[cannonIndex].frame = CGRectMake(positionY, positionX, sizeX, sizeY);
                Cannon[cannonIndex++].hidden = NO;
            }
        }
    }
#endif
}

- (IBAction)Test1:(id)sender {
}

- (IBAction)Test2:(id)sender {
     //[self Update];
    /*
    [_Cannon1Btn setImage:[UIImage imageNamed:@"footman.png"] forState:UIControlStateNormal];
    [_Cannon2Btn setImage:[UIImage imageNamed:@"footman.png"] forState:UIControlStateNormal];
    [_Cannon3Btn setImage:[UIImage imageNamed:@"footman.png"] forState:UIControlStateNormal];
     */
}
- (IBAction)button1:(id)sender {
    NSLog(@"button1");
    
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
