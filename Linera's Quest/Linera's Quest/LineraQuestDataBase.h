//
//  LineraQuestDataBase.h
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/19/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface LineraQuestDataBase : NSManagedObject

@property (nonatomic, retain) NSNumber * strengthDice;
@property (nonatomic, retain) NSNumber * defenseDice;
@property (nonatomic, retain) NSNumber * healthDice;
@property (nonatomic, retain) NSNumber * score1;
@property (nonatomic, retain) NSNumber * score2;
@property (nonatomic, retain) NSNumber * score3;
@property (nonatomic, retain) NSNumber * score4;
@property (nonatomic, retain) NSNumber * score5;
@property (nonatomic, retain) NSNumber * score6;
@property (nonatomic, retain) NSNumber * score7;
@property (nonatomic, retain) NSNumber * score8;
@property (nonatomic, retain) NSNumber * score9;
@property (nonatomic, retain) NSNumber * score10;
@property (nonatomic, retain) NSString * name5;
@property (nonatomic, retain) NSString * name1;
@property (nonatomic, retain) NSString * name2;
@property (nonatomic, retain) NSString * name3;
@property (nonatomic, retain) NSString * name4;
@property (nonatomic, retain) NSString * name6;
@property (nonatomic, retain) NSString * name7;
@property (nonatomic, retain) NSString * name8;
@property (nonatomic, retain) NSString * name9;
@property (nonatomic, retain) NSString * name10;

@end
