//
//  CALayer+PauseAndStart.m
//  DrBei-Mall
//
//  Created by 田洋 on 2019/6/25.
//  Copyright © 2019 田洋. All rights reserved.
//

#import "CALayer+PauseAndStart.h"

@implementation CALayer (PauseAndStart)

#pragma mark 暂停
-(void)pauseAnimat{
	CFTimeInterval pausetime = [self convertTime:CACurrentMediaTime() fromLayer:nil];
	self.timeOffset = pausetime;
	self.speed = 0;
}

-(void)startAnimat{
	CFTimeInterval time = self.timeOffset;
	self.speed = 1;
	self.timeOffset = 0;
	self.beginTime = 0;
	CFTimeInterval sincePuse = [self convertTime:CACurrentMediaTime() fromLayer:nil] - time;
	self.beginTime = sincePuse;
}
@end
