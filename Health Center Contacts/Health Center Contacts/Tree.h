//
//  Tree.h
//  Health Center Contacts
//
//  Created by Jakob Hartman on 6/25/14.
//  Copyright (c) 2014 BYU-Idaho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tree : UIViewController <UITableViewDataSource,UITableViewDataSource>
@property (strong,nonatomic) NSMutableArray* people;
@end
