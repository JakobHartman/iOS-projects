//
//  DetailViewController.h
//  D100MasterSheet
//
//  Created by Jakob Hartman on 4/26/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>
//Sheet - Character - Character
@property (strong, nonatomic) IBOutlet UINavigationItem *characterNameLabel;
@property (strong, nonatomic) IBOutlet UITextField *NameField;
@property (strong, nonatomic) IBOutlet UITextField *RaceField;
@property (strong, nonatomic) IBOutlet UITextField *careerPathField;
//Sheet - Character - Personal Details
@property (strong, nonatomic) IBOutlet UITextField *ageField;
@property (strong, nonatomic) IBOutlet UITextField *EyeField;
@property (strong, nonatomic) IBOutlet UITextField *GenderField;
@property (strong, nonatomic) IBOutlet UITextField *HairField;
@property (strong, nonatomic) IBOutlet UITextField *WeightField;
@property (strong, nonatomic) IBOutlet UITextField *FeetField;
@property (strong, nonatomic) IBOutlet UITextField *InchesField;
@property (strong, nonatomic) IBOutlet UITextField *SiblingsField;
@property (strong, nonatomic) IBOutlet UITextField *StarSignField;
@property (strong, nonatomic) IBOutlet UITextField *BirthField;
@property (strong, nonatomic) IBOutlet UITextField *MarksField;
//Sheet - Character - Armor
@property (strong, nonatomic) IBOutlet UILabel *HeadLabel;
@property (strong, nonatomic) IBOutlet UILabel *BodyLabel;
@property (strong, nonatomic) IBOutlet UILabel *LeftAlabel;
@property (strong, nonatomic) IBOutlet UILabel *RightAlabel;
@property (strong, nonatomic) IBOutlet UILabel *LeftLLabel;
@property (strong, nonatomic) IBOutlet UILabel *RightLLabel;
//Sheet - Character - Movement - Movement
@property (strong, nonatomic) IBOutlet UILabel *MBaselabel;
@property (strong, nonatomic) IBOutlet UILabel *MDisengageLabel;
@property (strong, nonatomic) IBOutlet UILabel *MChargeLabel;
@property (strong, nonatomic) IBOutlet UILabel *MRunLabel;
@property (strong, nonatomic) IBOutlet UILabel *MRunningLeapLabel;
@property (strong, nonatomic) IBOutlet UILabel *MStandingLabel;
@property (strong, nonatomic) IBOutlet UILabel *MFlyLabel;
//Sheet - Character - Movement - ArmoredMovement
@property (strong, nonatomic) IBOutlet UILabel *ABaseLabel;
@property (strong, nonatomic) IBOutlet UILabel *ADisengageLabel;
@property (strong, nonatomic) IBOutlet UILabel *AChargeLabel;
@property (strong, nonatomic) IBOutlet UILabel *ARunLabel;
@property (strong, nonatomic) IBOutlet UILabel *ARunningLeapLabel;
@property (strong, nonatomic) IBOutlet UILabel *AStandingLabel;
@property (strong, nonatomic) IBOutlet UILabel *AFlyLabel;
//Sheet - Character - Character Profile - Main - Starting
@property (strong, nonatomic) IBOutlet UITextField *weaponSkillField;
@property (strong, nonatomic) IBOutlet UITextField *ballisticSkillField;
@property (strong, nonatomic) IBOutlet UITextField *strengthField;
@property (strong, nonatomic) IBOutlet UITextField *toughnessField;
@property (strong, nonatomic) IBOutlet UITextField *agilityField;
@property (strong, nonatomic) IBOutlet UITextField *inteligenceField;
@property (strong, nonatomic) IBOutlet UITextField *fellowshipField;
//Sheet - Character - Character Profile - Main - Advanced
@property (strong, nonatomic) IBOutlet UITextField *aWeaponSkillField;
@property (strong, nonatomic) IBOutlet UITextField *aBallisticSkillField;
@property (strong, nonatomic) IBOutlet UITextField *aStrengthField;
@property (strong, nonatomic) IBOutlet UITextField *aToughnessField;
@property (strong, nonatomic) IBOutlet UITextField *aAgilityField;
@property (strong, nonatomic) IBOutlet UITextField *aIntelligenceField;
@property (strong, nonatomic) IBOutlet UITextField *aFellowshipField;
//Sheet - Character - Character Profile - Main - Current
@property (strong, nonatomic) IBOutlet UITextField *cWeaponSkillField;
@property (strong, nonatomic) IBOutlet UITextField *cBallisticSkillField;
@property (strong, nonatomic) IBOutlet UITextField *cStengthField;
@property (strong, nonatomic) IBOutlet UITextField *cToughnessField;
@property (strong, nonatomic) IBOutlet UITextField *cAgilityField;
@property (strong, nonatomic) IBOutlet UITextField *cIntelligenceField;
@property (strong, nonatomic) IBOutlet UITextField *cFellowshipField;
//Sheet - Character - Character Profile - Secondary - Starting
@property (strong, nonatomic) IBOutlet UITextField *attacksField;
@property (strong, nonatomic) IBOutlet UITextField *woundsField;
@property (strong, nonatomic) IBOutlet UILabel *strengthBonusLabel;
@property (strong, nonatomic) IBOutlet UILabel *toughnessBonusLabel;
@property (strong, nonatomic) IBOutlet UITextField *movementField;
@property (strong, nonatomic) IBOutlet UITextField *magicField;
@property (strong, nonatomic) IBOutlet UITextField *fatePointField;
//Sheet - Character - Character Profile - Secondary - Advanced
@property (strong, nonatomic) IBOutlet UITextField *aAttackField;
@property (strong, nonatomic) IBOutlet UITextField *aWoundsField;
@property (strong, nonatomic) IBOutlet UITextField *aMovementField;
@property (strong, nonatomic) IBOutlet UITextField *aMagicField;
@property (strong, nonatomic) IBOutlet UITextField *aFatePointField;
//Sheet - Character - Character Profile - Secondary - Current
@property (strong, nonatomic) IBOutlet UITextField *cAttackField;
@property (strong, nonatomic) IBOutlet UITextField *cWoundsField;
@property (strong, nonatomic) IBOutlet UILabel *cStrengthBonusLabel;
@property (strong, nonatomic) IBOutlet UILabel *cToughnessBonusField;
@property (strong, nonatomic) IBOutlet UITextField *cMovementField;
@property (strong, nonatomic) IBOutlet UITextField *cMagicField;
@property (strong, nonatomic) IBOutlet UITextField *cFatePoint;
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
