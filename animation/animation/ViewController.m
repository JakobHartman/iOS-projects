//
//  ViewController.m
//  animation
//
//  Created by Jakob Hartman on 3/6/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIImageView *doge;
@property (strong, nonatomic) IBOutlet UIImageView *doge2;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UIView *view;
@property (strong, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController
- (IBAction)showDoge:(id)sender {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    [UIView animateWithDuration:1 animations:
     ^{
         _doge.center = CGPointMake(150, 481);
     } completion:^(BOOL finished) {
         
         self.view.backgroundColor = [UIColor whiteColor];
         _doge.hidden = YES;
         _doge2.hidden = NO;
         _label.hidden = NO;
         [_button removeFromSuperview];
     }];
    
    [UIView animateWithDuration:.25 animations:^{
        [UIView setAnimationRepeatCount:3];
        self.view.backgroundColor = [UIColor colorWithRed:1.0 green:.45 blue:.45 alpha:.5];
    } completion:^(BOOL finished) {
        self.view.backgroundColor = [UIColor whiteColor];
    } ];
    
    
    _label.text = @"wow doge!";
}
- (IBAction)patDoge:(id)sender {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
    _label.text = @"Much pet";
    _label2.text = @"such love";
    _label2.hidden = NO;
    [UIView animateWithDuration:.5 animations:^{
        
        _doge2.center = CGPointMake(150, 590);
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 animations:^{
            _doge2.center = CGPointMake(150, 481);
        }];
    }];
    [UIView animateWithDuration:.25 animations:^{
        [UIView setAnimationRepeatCount:2];
        self.view.backgroundColor = [UIColor colorWithRed:.45 green:1.0 blue:.45 alpha:.5];
    } completion:^(BOOL finished) {
        self.view.backgroundColor = [UIColor whiteColor];
    }];
}
- (IBAction)spinDoge:(id)sender {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
    [UIView animateWithDuration:.25 animations:^{
        [UIView setAnimationRepeatCount:8];
        self.view.backgroundColor = [UIColor colorWithRed:1.0 green:.45 blue:.45 alpha:.5];
    } completion:^(BOOL finished) {
        self.view.backgroundColor = [UIColor whiteColor];
    }];
    
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:
     ^{
         [_doge2 setTransform:(CGAffineTransformRotate(_doge2.transform, M_PI_2))];
         _label.text = @"Very Spin";
         _label2.text = @"wow lol";
         _label2.textColor = [UIColor yellowColor];
     } completion:^(BOOL finished) {
         if (finished && !CGAffineTransformEqualToTransform(_doge2.transform, CGAffineTransformIdentity)){
            [self spinDoges];
         }
     }];
}
int count = 0;
- (void)spinDoges {
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    
    if(count < 2){
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:
     ^{
         [_doge2 setTransform:(CGAffineTransformRotate(_doge2.transform, M_PI_2))];
     } completion:^(BOOL finished) {
         if (finished && !CGAffineTransformEqualToTransform(_doge2.transform, CGAffineTransformIdentity)){
             [self spinDoges];
         }
         count++;
     }];
    }
    else{
        count = -(1);
    }
    
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
