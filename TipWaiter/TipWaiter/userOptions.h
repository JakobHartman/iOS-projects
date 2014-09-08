//
//  userOptions.h
//  TipWaiter
//
//  Created by Jakob Hartman on 6/30/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface userOptions : NSObject
@property float foodWeight;
@property float drinkWeight;
@property float checkWeight;
@property float personWeight;
@property float integrityWeight;
@property float accuracyWeight;
@property float atmosWeight;
@property float feelingWeight;
@property float minPercent;
@property float maxPercent;
@property float totalWeight;
@property float leftOverWeight;
@property NSUserDefaults * defaults;

-(void) update;
@end
