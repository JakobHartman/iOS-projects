//
//  ViewController.m
//  Camera
//
//  Created by Jakob Hartman on 3/27/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    UIImagePickerController *camera = [[UIImagePickerController alloc] init];
    
    [camera isCameraDeviceAvailable:<#(UIImagePickerControllerCameraDevice)#>];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)takePhoto:(id)sender {
}
- (IBAction)getPhoto:(id)sender {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
