//
//  ViewController.m
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/13/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"
#import "Monster.h"
#import "Player.h"
#import "dataLayer.h"
#import "rollDice.h"
#import "LineraQuestDataBase.h"


@implementation ViewController
@synthesize startButton;
@synthesize characterLabel;
@synthesize characterName;
@synthesize continueFromCharacter;
@synthesize storyLine;
@synthesize continueToCreate;
@synthesize Skview;
@synthesize diceLabel;
@synthesize continueToStrength;

Player *player;
SKScene * scene;
LineraQuestDataBase *game;
rollDice *roll;

- (IBAction)rollStrength:(id)sender {
    storyLine.hidden = YES;
    [continueToStrength removeFromSuperview];
    roll.dieSides = [game.strengthDice intValue];
    [roll spinLoop:roll :diceLabel];
}

- (IBAction)getCharacterName:(id)sender {
    characterName.hidden = YES;
    continueFromCharacter.hidden = YES;
    NSString *welcomeText = [NSString stringWithFormat:@"Welcome, %@ to the Old Linera, You are a Linera Fighter, now a slave in the new country of Kresha, ready to fight the next best thing, hoping one day that it will earn your freedom. It may be tough, but with skill and LUCK you can do it. You're stuck fighting in the colosseum, in servitude to the country of Kresha. You are contemplating your new life when the arena attendant tells you to get suited up. You look around you for gear and find nothing.  It seems that you will be fighting dressed in the meager rags on your back and with nothing more than a bleak-looking rusty dagger that looks none too sharp. You hope to prevail against the hordes of monsters that await you in the arena.",characterName.text];
    characterLabel.hidden = YES;
    SKSpriteNode *scroll = [SKSpriteNode spriteNodeWithImageNamed:@"scroll.png"];
    scroll.position = CGPointMake(CGRectGetMidX(scene.frame),
                                  280);
    [scene addChild:scroll];
    
    storyLine.hidden = NO;
    storyLine.font = [UIFont fontWithName:@"Trajan Pro 3" size:17];
    storyLine.textColor = [UIColor colorWithRed:.1 green:.1 blue:.1 alpha:1];
    storyLine.text = welcomeText;
    player = [[Player alloc]init];
    player.name = characterName.text;
    continueToCreate.hidden = NO;
    [characterName resignFirstResponder];
    [roll startAccelerometer];
}

- (IBAction)goToMainMenu:(id)sender {
    characterLabel.text = @"What is your characters name?";
    if(![startButton isDescendantOfView:self.view]){
        [self.view addSubview:startButton];
    }
    characterName.text = @"";
    if(![characterName isHidden]){
        characterName.hidden = YES;
    }
    if(![characterLabel isHidden]){
        characterLabel.hidden = YES;
    }
    if(![continueFromCharacter isHidden]){
        continueFromCharacter.hidden = YES;
    }
    if (![storyLine isHidden]) {
        storyLine.hidden = YES;
    }
    if(![continueToCreate isHidden]){
        continueToCreate.hidden = YES;
    }
    [scene removeAllChildren];
}


- (IBAction)startAnewGame:(id)sender {
    [startButton  removeFromSuperview];
     characterName.hidden = NO;
     characterLabel.hidden = NO;
     continueFromCharacter.hidden = NO;
     game = [NSEntityDescription insertNewObjectForEntityForName:@"LineraQuestDataBase" inManagedObjectContext:[dataLayer sharedInstance].managedObjectContext];
     game.strengthDice = [NSNumber numberWithInt:5];
     game.healthDice = [NSNumber numberWithInt:15];
     game.defenseDice = [NSNumber numberWithInt:5];
}


- (void)viewDidLoad{
    [[UIApplication sharedApplication] setIdleTimerDisabled:YES];
    
    [super viewDidLoad];
    
    // Configure the view.
     SKView *skView = (SKView *)self.view;
    
    // Create and configure the scene.
    scene = [MyScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
