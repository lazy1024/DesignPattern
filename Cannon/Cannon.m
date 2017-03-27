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
    }
    
    return self;
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
