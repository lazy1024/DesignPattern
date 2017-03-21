//
//  Cannon.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#define GameRow   5
#define GameLine  5

#define CannonValue     2
#define FootmanValue    1
#define SpaceValue       0

#define FirstPointX        16
#define FirstPointY         212

#define Distance            70

BYTE Game[GameRow][GameLine] = {0};
Point Position[GameRow][GameLine] =
{
    0
};

@interface Cannon : NSObject

@end


@implementation Cannon : NSObject

- (void)PositionInit
{
    BYTE i = 0;
    BYTE j = 0;
    for(i=0; i<GameRow; i++)
    {
        for(j=0; j<GameLine; j++)
        {
            Position[i][j].h = FirstPointX + i*Distance;
            Position[i][j].v = FirstPointY + i*Distance;
        }
    }
    
    NSLog(@"PositionInit");
}

- (void)GameInit
{
    BYTE row = 0;
    BYTE line = 0;
    
    // Space ---
    for(row=0; row<GameRow; row++)
    {
        for(line=0; line<GameLine; line++)
            Game[row][line] = SpaceValue;
    }
    
    // FootMan ---
    for(row=0; row<3; row++)
    {
        for(line=0; line<GameLine; line++)
            Game[row][line] = FootmanValue;
    }
    
    // Cannon ---
    Game[GameRow-1][0] = CannonValue;
    Game[GameRow-1][1] = CannonValue;
    Game[GameRow-1][2] = CannonValue;
}

@end
