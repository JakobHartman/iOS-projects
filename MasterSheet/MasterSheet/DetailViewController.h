//
//  DetailViewController.h
//  MasterSheet
//
//  Created by Jakob Hartman on 4/13/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
