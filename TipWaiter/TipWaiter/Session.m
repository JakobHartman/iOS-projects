//
//  Session.m
//  TipWaiter
//
//  Created by Jakob Hartman on 6/28/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "Session.h"
#import "userOptions.h"

@interface Session ()
@property (weak, nonatomic) IBOutlet UIStepper *foodStepper;
@property (weak, nonatomic) IBOutlet UIStepper *drinkStepper;
@property (weak, nonatomic) IBOutlet UIStepper *checkStepper;
@property (weak, nonatomic) IBOutlet UIStepper *personableStepper;
@property (weak, nonatomic) IBOutlet UIStepper *integrityStepper;
@property (weak, nonatomic) IBOutlet UIStepper *accuracyStepper;
@property (weak, nonatomic) IBOutlet UIStepper *atmosStepper;
@property (weak, nonatomic) IBOutlet UIStepper *feelingStepper;
@property (weak, nonatomic) IBOutlet UITextField *checkAmount;
@property (weak, nonatomic) IBOutlet UILabel *percentLabel;
@property (weak, nonatomic) IBOutlet UILabel *finalCostLabel;
@property (weak, nonatomic) IBOutlet UILabel *foodLabel;
@property (weak, nonatomic) IBOutlet UILabel *drinkLabel;
@property (weak, nonatomic) IBOutlet UILabel *checkLabel;
@property (weak, nonatomic) IBOutlet UILabel *personableLabel;
@property (weak, nonatomic) IBOutlet UILabel *integrityLabel;
@property (weak, nonatomic) IBOutlet UILabel *accuracyLabel;
@property (weak, nonatomic) IBOutlet UILabel *atmosLabel;
@property (weak, nonatomic) IBOutlet UILabel *feelingLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTotalLabel;

@end

@implementation Session

@synthesize foodStepper;
@synthesize drinkStepper;
@synthesize checkStepper;
@synthesize personableLabel;
@synthesize integrityStepper;
@synthesize accuracyStepper;
@synthesize atmosStepper;
@synthesize feelingStepper;
@synthesize checkAmount;
@synthesize percentLabel;
@synthesize personableStepper;
@synthesize finalCostLabel;
@synthesize foodLabel;
@synthesize drinkLabel;
@synthesize checkLabel;
@synthesize integrityLabel;
@synthesize accuracyLabel;
@synthesize atmosLabel;
@synthesize feelingLabel;
@synthesize subTotalLabel;

-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    
}

- (IBAction)amountChanged:(id)sender {
    [self getAmount];
}

- (IBAction)foodChanged:(id)sender {
    foodLabel.text = [NSString stringWithFormat:@"%.0f",foodStepper.value];
    [self getAmount];
}
- (IBAction)drinksChanged:(id)sender {
    drinkLabel.text = [NSString stringWithFormat:@"%.0f",drinkStepper.value];
    [self getAmount];
}

- (IBAction)checkChanged:(id)sender {
    checkLabel.text = [NSString stringWithFormat:@"%.0f",checkStepper.value];
    [self getAmount];
}
- (IBAction)personChanged:(id)sender {
    personableLabel.text = [NSString stringWithFormat:@"%.0f",personableStepper.value];
    [self getAmount];
}
- (IBAction)intChanged:(id)sender {
    integrityLabel.text = [NSString stringWithFormat:@"%.0f",integrityStepper.value];
    [self getAmount];
}
- (IBAction)acuChanged:(id)sender {
    accuracyLabel.text = [NSString stringWithFormat:@"%.0f",accuracyStepper.value];
    [self getAmount];
}
- (IBAction)atmosChanged:(id)sender {
    atmosLabel.text = [NSString stringWithFormat:@"%.0f",atmosStepper.value];
    [self getAmount];
}
- (IBAction)feelChanged:(id)sender {
    feelingLabel.text = [NSString stringWithFormat:@"%.0f",feelingStepper.value];
    [self getAmount];
}

- (void)getAmount{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    float foodWeight = [defaults floatForKey:@"food_weight"];
    float drinkWeight = [defaults floatForKey:@"drink_weight"];
    float checkWeight = [defaults floatForKey:@"check_weight"];
    float personWeight = [defaults floatForKey:@"person_weight"];
    float integrityWeight = [defaults floatForKey:@"integ_weight"];
    float accuracyWeight = [defaults floatForKey:@"accu_weight"];
    float atmosWeight = [defaults floatForKey:@"atmos_weight"];
    float feelingWeight = [defaults floatForKey:@"feel_weight"];
    float minPercent = [defaults floatForKey:@"min_percent"];
    float maxPercent = [defaults floatForKey:@"max_percent"];

    
    float whole = maxPercent - minPercent;
    
    float foodAmount = foodStepper.value;
    float drinkAmount = drinkStepper.value;
    float cheAmount = checkStepper.value;
    float personAmount = personableStepper.value;
    float intAmount = integrityStepper.value;
    float accuAmount = accuracyStepper.value;
    float atmosAmount = atmosStepper.value;
    float feelAmount = feelingStepper.value;
    
    float amount = [checkAmount.text floatValue];
    
    
    float foodPercent = foodAmount / 10;
    float drinkPercent = drinkAmount / 10;
    float checkpercent = cheAmount / 10;
    float personPercent = personAmount / 10;
    float integrityPercent = intAmount / 10;
    float accuPercent = accuAmount / 10;
    float atmosPercent = atmosAmount / 10;
    float feelPercent = feelAmount / 10;
    
    float foodWhole = foodWeight * foodPercent;
    float drinkWhole = drinkWeight * drinkPercent;
    float checkWhole = checkWeight * checkpercent;
    float personWhole = personWeight * personPercent;
    float integrityWhole = integrityWeight * integrityPercent;
    float accuWhole = accuracyWeight * accuPercent;
    float atmosWhole = atmosWeight * atmosPercent;
    float feelWhole = feelingWeight * feelPercent;
    
    float totalWeight = (foodWhole + drinkWhole + checkWhole + personWhole + integrityWhole + accuWhole + atmosWhole + feelWhole) / 100;
    
   
    
    float totalPercent = (totalWeight * (whole)) + minPercent;
    float percentAsWhole = totalPercent;
    
    percentLabel.text = [NSString stringWithFormat:@"%.2f",percentAsWhole];
    
    float subtotal = amount * (totalPercent / 100);
    subTotalLabel.text = [NSString stringWithFormat:@"$%.2f",subtotal];
          amount += subtotal;
    
    finalCostLabel.text = [NSString stringWithFormat:@"$%.2f",amount];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return NO;
}

- (void)viewDidLoad
{
    NSUserDefaults  *defaults = [NSUserDefaults standardUserDefaults];
    [super viewDidLoad];
    foodStepper.maximumValue = 10;
    foodStepper.minimumValue = 0;
    drinkStepper.maximumValue = 10;
    drinkStepper.minimumValue = 0;
    checkStepper.maximumValue = 10;
    checkStepper.minimumValue = 0;
    personableStepper.maximumValue = 10;
    personableStepper.minimumValue = 0;
    integrityStepper.maximumValue = 10;
    integrityStepper.minimumValue = 0;
    accuracyStepper.maximumValue = 10;
    accuracyStepper.minimumValue = 0;
    atmosStepper.maximumValue = 10;
    atmosStepper.minimumValue = 0;
    feelingStepper.maximumValue = 10;
    feelingStepper.minimumValue = 0;
    
    foodLabel.text = @"0";
    drinkLabel.text = @"0";
    checkLabel.text = @"0";
    personableLabel.text = @"0";
    integrityLabel.text = @"0";
    accuracyLabel.text = @"0";
    atmosLabel.text = @"0";
    feelingLabel.text = @"0";
    percentLabel.text  = [NSString stringWithFormat:@"%.2f",[defaults floatForKey:@"min_percent"]];
    NSString *sign = @"$";
    subTotalLabel.text = @"$0.00";
    finalCostLabel.text = [sign stringByAppendingString:checkAmount.text];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
