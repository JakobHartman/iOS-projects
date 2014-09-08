//
//  Monster.h
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/13/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface Monster : NSObject
@property (strong,nonatomic) NSString *name;
@property (nonatomic) NSInteger startingHp;
@property (nonatomic) NSInteger hp;
@property (nonatomic) NSInteger strength;
@property (nonatomic) NSInteger naturalArmor;
@property (nonatomic) NSInteger givenExperience;
@property (nonatomic) NSInteger scoreModifier;
@property (nonatomic) NSString *item;
@property (nonatomic) NSInteger armorDefense;
@property (nonatomic) NSInteger weaponDamage;
@property (nonatomic) NSString  *special;
@property (strong,nonatomic) NSString *image;


-(id) initWithName:(NSString *) aName andstartingHp:(NSInteger) aStartingHp andHp:(NSInteger) aHp  andStrength:(NSInteger) aStrength andNaturalArmor:(NSInteger)aNaturalArmor andGivenExperience:(NSInteger) aGivenExpereince andScoreModifier:(NSInteger) aScoreModifier andItem:(NSString *) aItem andArmorDefense: (NSInteger) aArmorDefense andWeaponDamage:(NSInteger) aWeaponDamage andSpecial:(NSString *) aSpecial andImage:(NSString *) aImage;

+ (NSDictionary *)createMonsters;
@end
