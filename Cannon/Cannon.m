//
//  Cannon.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Cannon.h"



@implementation Cannon : NSObject

- (id)init
{
    self = [super init];
    if(self)
    {
        BYTE row = 0;
        BYTE line = 0;
        
        // Space ---
        for(row=0; row<GameRow; row++)
        {
            for(line=0; line<GameLine; line++)
                Game[row][line] = SpaceValue;
        }
        
        [self GameInit];
        [self PositionInit];
    }
    
    return self;
}

- (void)PositionInit
{
    BYTE i = 0;
    BYTE j = 0;
    for(i=0; i<GameRow; i++)
    {
        for(j=0; j<GameLine; j++)
        {
            Position[i][j].h = FirstPointX + i*Distance;
            Position[i][j].v = FirstPointY + j*Distance;
        }
    }
    
    //NSLog(@"PositionInit");
}

- (void)GameInit
{
    BYTE row = 0;
    BYTE line = 0;
    
    NSLog(@"Game Init");
    
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
