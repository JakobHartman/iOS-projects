//
//  MasterViewController.h
//  corefat
//
//  Created by Jakob Hartman on 3/11/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
