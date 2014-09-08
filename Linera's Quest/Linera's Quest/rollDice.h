//
//  rollDice.h
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/18/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>

@interface rollDice : NSObject

@property (strong,nonatomic) CMMotionManager *motionMangager;

@property (nonatomic) double spinTime;
@property (nonatomic) BOOL stillSpinning;
@property (nonatomic) int dieSides;
@property (nonatomic) int currentDieValue;


- (void) startAccelerometer;
- (void) stopAccelerometer;
- (void) spinLoop:(rollDice *)rolled :(UILabel *)label;
- (void) spinDie:(UILabel *) label;
- (void) stopDie:(UILabel *) label;

@end

