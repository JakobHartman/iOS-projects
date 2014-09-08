//
//  Options.m
//  TipWaiter
//
//  Created by Jakob Hartman on 6/28/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "Options.h"
#import "userOptions.h"

@interface Options ()
@property (weak, nonatomic) IBOutlet UIStepper *foodStepper;
@property (weak, nonatomic) IBOutlet UIStepper *drinkStepper;
@property (weak, nonatomic) IBOutlet UIStepper *checkStepper;
@property (weak, nonatomic) IBOutlet UIStepper *personableStepper;
@property (weak, nonatomic) IBOutlet UIStepper *integrityStepper;
@property (weak, nonatomic) IBOutlet UIStepper *accuracyStepper;
@property (weak, nonatomic) IBOutlet UIStepper *atmosStepper;
@property (weak, nonatomic) IBOutlet UIStepper *feelingStepper;
@property (weak, nonatomic) IBOutlet UIStepper *min;
@property (weak, nonatomic) IBOutlet UIStepper *max;
@property (weak, nonatomic) IBOutlet UILabel *foodLabel;
@property (weak, nonatomic) IBOutlet UILabel *drinkLabel;
@property (weak, nonatomic) IBOutlet UILabel *checkLabel;
@property (weak, nonatomic) IBOutlet UILabel *personableLabel;
@property (weak, nonatomic) IBOutlet UILabel *integrityLabel;
@property (weak, nonatomic) IBOutlet UILabel *accuracyLabel;
@property (weak, nonatomic) IBOutlet UILabel *atmosLabel;
@property (weak, nonatomic) IBOutlet UILabel *feelingLabel;
@property (weak, nonatomic) IBOutlet UILabel *miniPercent;
@property (weak, nonatomic) IBOutlet UILabel *maxiPercentLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;


@end

@implementation Options

@synthesize foodStepper;
@synthesize drinkStepper;
@synthesize checkStepper;
@synthesize personableLabel;
@synthesize integrityStepper;
@synthesize accuracyStepper;
@synthesize atmosStepper;
@synthesize feelingStepper;
@synthesize personableStepper;

@synthesize foodLabel;
@synthesize drinkLabel;
@synthesize checkLabel;
@synthesize integrityLabel;
@synthesize accuracyLabel;
@synthesize atmosLabel;
@synthesize feelingLabel;
@synthesize maxiPercentLabel;
@synthesize miniPercent;
@synthesize totalLabel;
@synthesize min;
@synthesize max;


NSUserDefaults *defaults;
userOptions *options;

- (void)viewDidLoad
{
    options = [[userOptions alloc] init];
    defaults = [NSUserDefaults standardUserDefaults];
    
    foodStepper.value = options.foodWeight;
    drinkStepper.value = options.drinkWeight;
    checkStepper.value = options.checkWeight;
    personableStepper.value = options.personWeight;
    integrityStepper.value = options.integrityWeight;
    accuracyStepper.value = options.accuracyWeight;
    feelingStepper.value = options.feelingWeight;
    atmosStepper.value = options.atmosWeight;
    [self refreshNumbers];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)refreshNumbers{
    
    
    
    
    foodStepper.maximumValue = foodStepper.value + options.leftOverWeight;
    foodStepper.minimumValue = 0;
    foodStepper.stepValue = .5;
    
    
    drinkStepper.maximumValue = drinkStepper.value + options.leftOverWeight;
    drinkStepper.minimumValue = 0;
    drinkStepper.stepValue = .5;
    
    
    checkStepper.maximumValue = options.leftOverWeight + checkStepper.value;
    checkStepper.minimumValue = 0;
    checkStepper.stepValue = .5;
    
    
    personableStepper.maximumValue = options.leftOverWeight + personableStepper.value;
    personableStepper.minimumValue = 0;
    personableStepper.stepValue = .5;
    
    
    integrityStepper.maximumValue = options.leftOverWeight + integrityStepper.value;
    integrityStepper.minimumValue = 0;
    integrityStepper.stepValue = .5;
    
    
    accuracyStepper.maximumValue = options.leftOverWeight + accuracyStepper.value;
    accuracyStepper.minimumValue = 0;
    accuracyStepper.stepValue = .5;
    
    
    atmosStepper.maximumValue = options.leftOverWeight + atmosStepper.value;
    atmosStepper.minimumValue = 0;
    atmosStepper.stepValue = .5;
    
    
    feelingStepper.maximumValue = options.leftOverWeight + feelingStepper.value;
    feelingStepper.minimumValue = 0;
    feelingStepper.stepValue = .5;
    
    
    min.stepValue = .5;
    min.minimumValue = .5;
    min.maximumValue = options.maxPercent - .5;
    min.value = options.minPercent;
    
    max.minimumValue = options.minPercent + .5;
    max.stepValue = .5;
    max.value = options.maxPercent;
    
    
    foodLabel.text = [NSString stringWithFormat:@"%.1f",options.foodWeight];
    drinkLabel.text = [NSString stringWithFormat:@"%.1f",options.drinkWeight];
    checkLabel.text = [NSString stringWithFormat:@"%.1f",options.checkWeight];
    personableLabel.text = [NSString stringWithFormat:@"%.1f",options.personWeight];
    integrityLabel.text = [NSString stringWithFormat:@"%.1f",options.integrityWeight];
    accuracyLabel.text = [NSString stringWithFormat:@"%.1f",options.accuracyWeight];
    atmosLabel.text = [NSString stringWithFormat:@"%.1f",options.atmosWeight];
    feelingLabel.text = [NSString stringWithFormat:@"%.1f",options.feelingWeight];
    miniPercent.text = [NSString stringWithFormat:@"%.1f%%",options.minPercent];
    maxiPercentLabel.text = [NSString stringWithFormat:@"%.1f%%",options.maxPercent];
    
    
    totalLabel.text = [NSString stringWithFormat:@"%.1f",options.totalWeight];
    if (options.totalWeight == 100) {
        totalLabel.textColor = [UIColor greenColor];
    }
    else{
        totalLabel.textColor = [UIColor redColor];
    }
}

- (IBAction)foodWeightChanged:(id)sender {
    options.foodWeight = foodStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:foodStepper.value];
    foodLabel.text = [NSString stringWithFormat:@"%.1f",foodStepper.value];
    [defaults setObject:number forKey:@"food_weight"];
    [self refreshNumbers];
}

- (IBAction)drinkWeightChanged:(id)sender {
    options.drinkWeight = drinkStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:drinkStepper.value];
    drinkLabel.text = [NSString stringWithFormat:@"%.1f%%",drinkStepper.value];
    [defaults setObject:number forKey:@"drink_weight"];
    [self refreshNumbers];
}
- (IBAction)checkWeightChanged:(id)sender {
    options.checkWeight = checkStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:checkStepper.value];
    checkLabel.text = [NSString stringWithFormat:@"%.1f%%",checkStepper.value];
    [defaults setObject:number forKey:@"check_weight"];
    [self refreshNumbers];
}
- (IBAction)personWeightChanged:(id)sender {
    options.personWeight = personableStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:personableStepper.value];
    personableLabel.text = [NSString stringWithFormat:@"%.1f%%",personableStepper.value];
    [defaults setObject:number forKey:@"person_weight"];
    [self refreshNumbers];
}
- (IBAction)integWeightChanged:(id)sender {
    options.integrityWeight = integrityStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:integrityStepper.value];
    integrityLabel.text = [NSString stringWithFormat:@"%.1f%%",integrityStepper.value];
    [defaults setObject:number forKey:@"integ_weight"];
    [self refreshNumbers];
}
- (IBAction)accuWeightChanged:(id)sender {
    options.accuracyWeight = accuracyStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:accuracyStepper.value];
    accuracyLabel.text = [NSString stringWithFormat:@"%.1f%%",accuracyStepper.value];
    [defaults setObject:number forKey:@"accu_weight"];
    [self refreshNumbers];
}
- (IBAction)atmosWeightChanged:(id)sender {
    options.atmosWeight = atmosStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:atmosStepper.value];
    atmosLabel.text = [NSString stringWithFormat:@"%.1f%%",atmosStepper.value];
    [defaults setObject:number forKey:@"atmos_weight"];
    [self refreshNumbers];
}
- (IBAction)feelWeightChanged:(id)sender {
    options.feelingWeight = feelingStepper.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:feelingStepper.value];
    feelingLabel.text = [NSString stringWithFormat:@"%.1f%%",feelingStepper.value];
    [defaults setObject:number forKey:@"feel_weight"];
    [self refreshNumbers];
}
- (IBAction)minWeightChanged:(id)sender {
    options.minPercent = min.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:min.value];
    miniPercent.text = [NSString stringWithFormat:@"%.1f%%",min.value];
    [defaults setObject:number forKey:@"min_percent"];
    [self refreshNumbers];
}
- (IBAction)maxWeightChanged:(id)sender {
    options.maxPercent = max.value;
    [options update];
    NSNumber *number = [NSNumber numberWithFloat:max.value];
    maxiPercentLabel.text = [NSString stringWithFormat:@"%.1f%%",max.value];
    [defaults setObject:number forKey:@"max_percent"];
    [self refreshNumbers];
}


 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
     
 }

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if([identifier isEqualToString: @"goToMenuFromOptions"] && options.totalWeight != 100){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:[NSString stringWithFormat:@"%.1f is too low.",options.totalWeight] message:@"Your Weighted Scores are under 100%" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
                                                              }];
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        return NO;
        
    }
    else{
        return YES;
    }
}

@end
