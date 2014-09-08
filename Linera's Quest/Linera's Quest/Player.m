//
//  Player.m
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/15/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "Player.h"

@implementation Player
-(id) initWithName:(NSString *) aName andTotalHp:(NSInteger) aTotalHp andHp:(NSInteger) aHp  andStrength:(NSInteger) aStrength andPotions:(NSInteger)aPotions andStamina:(NSInteger) aStamina andDefense:(NSInteger)aDefense andExperience:(NSInteger) aExpereince andScore:(NSInteger) aScore andArmor:(NSString *) aArmor andArmorDefense: (NSInteger) aArmorDefense andWeaponDamage:(NSInteger) aWeaponDamage andWeapon:(NSString *) aWeapon andSpecial:(NSString *) aSpecial{
    if(self = [super init]){
        self.name = aName;
        self.totalHp = aTotalHp;
        self.hp = aHp;
        self.strength = aStrength;
        self.defense = aDefense;
        self.stamina = aStamina;
        self.experience = aExpereince;
        self.score = aScore;
        self.potions = aPotions;
        self.armorDefense = aArmorDefense;
        self.armor = aArmor;
        self.weaponDamage = aWeaponDamage;
        self.weapon = aWeapon;
        self.special = aSpecial;
    }
    return self;
}
@end
