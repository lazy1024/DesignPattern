//
//  Cannon.h
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#ifndef Cannon_h
#define Cannon_h

#define GameRow   5
#define GameLine  5

#define CannonValue     2
#define FootmanValue    1
#define SpaceValue       0

#define FirstPointX        212 //16
#define FirstPointY         16 //212

#define Distance            70

#define FootmanMaxNum       15
#define CannonMaxNum        3


@interface Cannon : NSObject
{
    @public
    BYTE Game[GameRow][GameLine];
    Point Position[GameRow][GameLine];
}

- (void)PositionInit;
- (void)GameInit;

@end



#endif /* Cannon_h */
