//
//  SetStrokeColorCommand.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/18.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "SetStrokeColorCommand.h"

@implementation SetStrokeColorCommand

@synthesize delegate = _delegate;

-(void) execute
{
}


#pragma  mark -
#pragma  mark <SetStrokeColorCommandDelegate>
-(void) command:(SetStrokeColorCommand *)command
didRequestColorComponentsForRed:(CGFloat *)red
          green:(CGFloat *)green
           blue:(CGFloat *)blue
{}

-(void) command:(SetStrokeColorCommand *)command
didFinishColorUpdateWithColor:(UIColor *)color
{}

@end
