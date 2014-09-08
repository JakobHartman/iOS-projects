//
//  userOptions.m
//  TipWaiter
//
//  Created by Jakob Hartman on 6/30/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "userOptions.h"

@implementation userOptions
@synthesize foodWeight;
@synthesize drinkWeight;
@synthesize checkWeight;
@synthesize personWeight;
@synthesize integrityWeight;
@synthesize accuracyWeight;
@synthesize atmosWeight;
@synthesize feelingWeight;
@synthesize minPercent;
@synthesize maxPercent;
@synthesize totalWeight;
@synthesize leftOverWeight;
@synthesize defaults;

- (id)init
{
    self = [super init];
    if (self) {
        defaults = [NSUserDefaults standardUserDefaults];
        foodWeight = [defaults floatForKey:@"food_weight"];
        drinkWeight = [defaults floatForKey:@"drink_weight"];
        checkWeight = [defaults floatForKey:@"check_weight"];
        personWeight = [defaults floatForKey:@"person_weight"];
        integrityWeight = [defaults floatForKey:@"integ_weight"];
        accuracyWeight = [defaults floatForKey:@"accu_weight"];
        atmosWeight = [defaults floatForKey:@"atmos_weight"];
        feelingWeight = [defaults floatForKey:@"feel_weight"];
        minPercent = [defaults floatForKey:@"min_percent"];
        maxPercent = [defaults floatForKey:@"max_percent"];
        
        totalWeight = foodWeight + drinkWeight + checkWeight + integrityWeight + accuracyWeight + atmosWeight + feelingWeight + personWeight;
        leftOverWeight = 100 - totalWeight;
        NSLog(@"%.2f",totalWeight);
        
        NSLog(@"%.2f",leftOverWeight);
    }
    return self;
}

-(void)update{
    self.totalWeight = foodWeight + drinkWeight + checkWeight + integrityWeight + accuracyWeight + atmosWeight + feelingWeight + personWeight;
    self.leftOverWeight = 100 - totalWeight;
}





@end
