//
//  ViewController.h
//  Linera's Quest
//

//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *characterLabel;
@property (strong, nonatomic) IBOutlet UITextField *characterName;
@property (strong, nonatomic) IBOutlet UIButton *startButton;
@property (strong, nonatomic) IBOutlet UIButton *continueFromCharacter;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *characterSheetButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addPotionsButton;
@property (strong, nonatomic) IBOutlet UILabel *storyLine;
@property (strong, nonatomic) IBOutlet SKView *Skview;
@property (strong, nonatomic) IBOutlet UIButton *continueToCreate;
@property (strong, nonatomic) IBOutlet UIButton *continueToStrength;
@property (strong, nonatomic) IBOutlet UILabel *diceLabel;

@end
