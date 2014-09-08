//
//  Player.h
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/15/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (strong,nonatomic) NSString *name;
@property (nonatomic) NSInteger hp;
@property (nonatomic) NSInteger totalHp;
@property (nonatomic) NSInteger strength;
@property (nonatomic) NSInteger potions;
@property (nonatomic) NSInteger stamina;
@property (nonatomic) NSInteger defense;
@property (nonatomic) NSInteger experience;
@property (nonatomic) NSInteger score;
@property (nonatomic) NSInteger armorDefense;
@property (nonatomic) NSString  *armor;
@property (nonatomic) NSInteger weaponDamage;
@property (nonatomic) NSString  *weapon;
@property (nonatomic) NSString  *special;

-(id) initWithName:(NSString *) aName andTotalHp:(NSInteger) aTotalHp andHp:(NSInteger) aHp  andStrength:(NSInteger) aStrength andPotions:(NSInteger)aPotions andStamina:(NSInteger) aStamina andDefense:(NSInteger)aDefense andExperience:(NSInteger) aExpereince andScore:(NSInteger) aScore andArmor:(NSString *) aArmor andArmorDefense: (NSInteger) aArmorDefense andWeaponDamage:(NSInteger) aWeaponDamage andWeapon:(NSString *) aWeapon andSpecial:(NSString *) aSpecial;
@end
