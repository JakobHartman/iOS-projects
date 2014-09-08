//
//  rollDice.m
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/18/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "rollDice.h"

@implementation rollDice

CMMotionManager *motionManager;
@synthesize spinTime;
@synthesize stillSpinning;
@synthesize currentDieValue;
@synthesize dieSides;

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - accelerometer delegate methods


- (void)accelerometer:(CMMotionManager *)accelerometer didAccelerate:(CMAcceleration)acceleration{
    float threshold = 1.0f;
    if(acceleration.x > threshold){
        spinTime = acceleration.x;
        stillSpinning = YES;
    }
    else if(acceleration.y >threshold){
        spinTime = acceleration.y;
        stillSpinning = YES;
    }
    else if(acceleration.z >threshold){
        spinTime = acceleration.z;
        stillSpinning = YES;
    }
}

#pragma mark - accelerometer helper methods

- (void)startAccelerometer {
    motionManager = [[CMMotionManager alloc]init];
    motionManager.accelerometerUpdateInterval = 0.25;
}

- (void)stopAccelerometer {
    [motionManager stopAccelerometerUpdates];
     motionManager = nil;
}

#pragma mark - spin loop methods
- (void) spinLoop:(rollDice *)rolled :(UILabel *)label{
    if (stillSpinning){
        spinTime -= 0.05f;
        if(spinTime <=0){
            spinTime =0;
            stillSpinning = NO;
            [rolled stopDie:label];
        }
        else{
            [rolled spinDie:label];
        }
    }
}

- (void) spinDie:(UILabel *)label{
    [label setText:@"Rolling Die!"];
    currentDieValue = arc4random()%dieSides +1;
    [label setText:[NSString stringWithFormat:@"%d", currentDieValue]];
}

- (void) stopDie:(UILabel*) label{
    [label setText:@"Shake to Roll!"];
    currentDieValue = arc4random()%dieSides +1;
    [label setText:[NSString stringWithFormat:@"%d", currentDieValue]];
    if(currentDieValue == dieSides){
        [label setText:@"Natural 20!"];
    }
    else if(currentDieValue == 1){
        [label setText:@"Epic FAIL!!!!!!"];
    }
}

- (void) changeDieSides:(int)sides{
    dieSides = sides;
}
@end
