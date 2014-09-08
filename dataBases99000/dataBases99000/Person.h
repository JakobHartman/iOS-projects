//
//  Person.h
//  dataBases99000
//
//  Created by Jakob Hartman on 3/13/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * score;

@end
