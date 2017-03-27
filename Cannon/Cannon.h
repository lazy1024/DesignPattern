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

#define FootmanMaxNum       15
#define CannonMaxNum        3


@interface Cannon : NSObject
{
    @public
    BYTE Game[GameRow][GameLine];
}

- (void)GameInit;

@end



#endif /* Cannon_h */
