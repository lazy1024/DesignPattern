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
                Game[row][line] = NobodyValue;
        }
        
        [self GameInit];
    }
    
    return self;
}

- (void)GameInit
{
    BYTE row = 0;
    BYTE line = 0;
    
    NSLog(@"Game Init");
    
    // Nobody ---
    for(row=0; row<GameRow; row++)
    {
        for(line=0; line<GameLine; line++)
            Game[row][line] = NobodyValue;
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

- (void)GameTouchRow:(BYTE)row Line:(BYTE)line
{
    // Touch---
    static BYTE preRow = 0;
    static BYTE preLine = 0;
    
    if(Game[preRow][preLine] == FootmanValue)
    {
        Game[row][line] = FootmanValue;
        Game[preRow][preLine] = NobodyValue;
    }
    else if(Game[preRow][preLine] == CannonValue)
    {
        Game[row][line] = CannonValue;
        Game[preRow][preLine] = NobodyValue;
    }
    
    
    // ---
    preRow = row;
    preLine = line;
}

@end
