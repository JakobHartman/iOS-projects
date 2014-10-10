//
//  ViewController.h
//  WalkingDistances
//
//  Created by Jakob Hartman on 1/16/14.
//  Copyright (c) 2014 WhirlingPanguins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"


@interface ViewController :  UIViewController <UIWebViewDelegate>
{
    Reachability *internetReachable;
}
@end
