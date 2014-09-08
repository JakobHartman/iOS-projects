//
//  ViewController.h
//  tableCrap
//
//  Created by Jakob Hartman on 3/27/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UILabel *playerName;
@property (strong,nonatomic) NSArray *playerNameList;
@end
