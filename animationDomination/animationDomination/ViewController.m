//
//  ViewController.m
//  animationDomination
//
//  Created by Jakob Hartman on 3/6/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *doge;

@end

@implementation ViewController
- (IBAction)showDoge:(id)sender {
    [UIView animateWithDuration:1 animations:
     ^{
         _doge.center = CGPointMake(150,150);
     }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
