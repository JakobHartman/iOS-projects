//
//  ViewController.m
//  tableCrap
//
//  Created by Jakob Hartman on 3/27/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//Names
@property (strong,nonatomic) NSArray *healthCenterContactNames;
@property (strong,nonatomic) NSArray *healthCenterContactName;
@property (strong,nonatomic) NSArray *fronDeskContactName;
@property (strong,nonatomic) NSArray *studentManagementContactName;
@property (strong,nonatomic) NSArray *otherStudentContactName;
@property (strong,nonatomic) NSArray *providersContactName;
@property (strong,nonatomic) NSArray *professionalStaffContactName;
@property (strong,nonatomic) NSArray *faxContactName;
@property (strong,nonatomic) NSArray *campusContactName;
@property (strong,nonatomic) NSArray *otherContactName;
//Numbers
@property (strong,nonatomic) NSArray *healthCenterContactNumber;
@property (strong,nonatomic) NSArray *fronDeskContactNumber;
@property (strong,nonatomic) NSArray *studentManagementContactNumber;
@property (strong,nonatomic) NSArray *otherStudentContactNumber;
@property (strong,nonatomic) NSArray *providersContactNumber;
@property (strong,nonatomic) NSArray *professionalStaffContactNumber;
@property (strong,nonatomic) NSArray *faxContactNumber;
@property (strong,nonatomic) NSArray *campusContactNumber;
@property (strong,nonatomic) NSArray *otherContactNumber;
@end

@implementation ViewController
@synthesize healthCenterContactNames;
@synthesize healthCenterContactName;
@synthesize fronDeskContactName;
@synthesize studentManagementContactName;
@synthesize otherStudentContactName;
@synthesize providersContactName;
@synthesize professionalStaffContactName;
@synthesize faxContactName;
@synthesize campusContactName;
@synthesize otherContactName;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 57;
}

int person = 0;

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"playerCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
  
    cell.textLabel.text = [healthCenterContactNames objectAtIndex:person];
    if(person < 56){
        person++;
    }
    NSLog([NSString stringWithFormat:@"%d",person]);
    
    
    return cell;
}

- (void)viewDidLoad
{
    healthCenterContactName =@[ @"Health Desk Number",@"Fax",@"Conference Room"];
    fronDeskContactName = @[@"Check Out",@"Check In",@"Insurance 1",@"Insurance 2",@"Office Assistants",@"Walk-In"];
    studentManagementContactName = @[@"Area Director",@"Clinical Care Manager",@"Operations Manager"];
    otherStudentContactName = @[@"IT/Communications/HR",@"Lab",@"Patient Flow",@"Pharmacy",@"Public Health",@"Wellness"];
    providersContactName = @[@"Christy Goodman",@"Dr. Bradbury",@"Dr. Rammell",@"Lori Parker",@"Nichole Robson",@"Steve Lemons",@"Terry Anderson"];
    professionalStaffContactName = @[@"Stephanie Potter (Lab)",@"Marilyn Walker (Nurse)",@"Tiffany Paepke (Nurse)",@"Nurse's Station",@"Ruth Clark (Billing)",@"Shaun Orr (Director)",@"Shawn Andreason",@"Tammy Einerson",@"Lisa Nelson (X-Ray)",@"Vickie Christensen (X-Ray) "];
    faxContactName = @[@"Lab",@"Pharmacy",@"Public Health",@"X-Ray"];
    campusContactName = @[@"Counseling Center",@"Accounting Office",@"Admissions",@"Cashiers Office",@"Lab",@"Ask BYU-I",@"Financial Aid Office",@"Human Resource",@"Help Desk",@"Mary Ivie (Phones)",@"Records and Registration",@"Security",@"Wellness Center"];
    otherContactName = @[@"Matt Tilton",@"Wayne Buckwalter",@"Kerry Stanger",@"DMBA"];

    healthCenterContactNames = [healthCenterContactName arrayByAddingObjectsFromArray:fronDeskContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray:studentManagementContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray:otherStudentContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray:providersContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray:professionalStaffContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray:faxContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray: campusContactName];
    healthCenterContactNames = [healthCenterContactNames arrayByAddingObjectsFromArray:otherContactName];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
