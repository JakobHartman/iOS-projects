//
//  Monster.m
//  Linera's Quest
//
//  Created by Jakob Hartman on 3/13/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

#import "Monster.h"

@implementation Monster
@synthesize name;
@synthesize startingHp;
@synthesize hp;
@synthesize strength;
@synthesize naturalArmor;
@synthesize givenExperience;
@synthesize scoreModifier;
@synthesize item;
@synthesize armorDefense;
@synthesize weaponDamage;
@synthesize special;
@synthesize image;

-(id) initWithName:(NSString *) aName andstartingHp:(NSInteger) aStartingHp andHp:(NSInteger) aHp  andStrength:(NSInteger) aStrength andNaturalArmor:(NSInteger)aNaturalArmor andGivenExperience:(NSInteger) aGivenExpereince andScoreModifier:(NSInteger) aScoreModifier andItem:(NSString *) aItem andArmorDefense: (NSInteger) aArmorDefense andWeaponDamage:(NSInteger) aWeaponDamage andSpecial:(NSString *) aSpecial andImage:(NSString *) aImage;{
    if(self = [super init]){
        self.name = aName;
        self.startingHp = aStartingHp;
        self.hp = aHp;
        self.strength = aStrength;
        self.naturalArmor = aNaturalArmor;
        self.givenExperience = aGivenExpereince;
        self.scoreModifier = aScoreModifier;
        self.item = aItem;
        self.armorDefense = aArmorDefense;
        self.weaponDamage = aWeaponDamage;
        self.special = aSpecial;
        self.image = aImage;
    }
    return self;
};

+ (NSDictionary *)createMonsters{
    
    Monster *zombie = [[Monster alloc] initWithName:@"Zombie" andstartingHp:8 andHp:13 andStrength:2 andNaturalArmor:2 andGivenExperience:1 andScoreModifier:1 andItem:@"Padded Armor" andArmorDefense:1 andWeaponDamage:1 andSpecial:@"poison" andImage:@"person.jpg"];
    
    Monster *goblin = [[Monster alloc] initWithName:@"Goblin" andstartingHp:12 andHp:17 andStrength:2 andNaturalArmor:1 andGivenExperience:3 andScoreModifier:1 andItem:@"Potion" andArmorDefense:1 andWeaponDamage:1 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *kobold = [[Monster alloc] initWithName:@"Kobold" andstartingHp:15 andHp:20 andStrength:2 andNaturalArmor:2 andGivenExperience:5 andScoreModifier:1 andItem:@"Short Sword" andArmorDefense:1 andWeaponDamage:1 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *skeleton = [[Monster alloc] initWithName:@"Skeleton" andstartingHp:18 andHp:23 andStrength:2 andNaturalArmor:2 andGivenExperience:8 andScoreModifier:2 andItem:@"Potion" andArmorDefense:2 andWeaponDamage:1 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *orc = [[Monster alloc] initWithName:@"Orc" andstartingHp:20 andHp:25 andStrength:3 andNaturalArmor:2 andGivenExperience:13 andScoreModifier:2 andItem:@"Long Sword" andArmorDefense:2 andWeaponDamage:1 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *lizardman = [[Monster alloc] initWithName:@"Lizardman" andstartingHp:25 andHp:30 andStrength:3 andNaturalArmor:4 andGivenExperience:18 andScoreModifier:2 andItem:@"Leather Armor" andArmorDefense:2 andWeaponDamage:1 andSpecial:@"powerstrike" andImage:@"person.jpg"];
    
    Monster *orge = [[Monster alloc] initWithName:@"Orge" andstartingHp:40 andHp:45 andStrength:5 andNaturalArmor:1 andGivenExperience:27 andScoreModifier:3 andItem:@"Leather Armor" andArmorDefense:1 andWeaponDamage:5 andSpecial:@"staminadrain" andImage:@"person.jpg"];
    
    Monster *mummy = [[Monster alloc] initWithName:@"Mummy" andstartingHp:45 andHp:50 andStrength:5 andNaturalArmor:2 andGivenExperience:42 andScoreModifier:3 andItem:@"Potion" andArmorDefense:2 andWeaponDamage:2 andSpecial:@"curse" andImage:@"person.jpg"];
    
    Monster *vampire = [[Monster alloc] initWithName:@"Vampire" andstartingHp:45 andHp:50 andStrength:5 andNaturalArmor:3 andGivenExperience:57 andScoreModifier:3 andItem:@"Vampires Blood" andArmorDefense:3 andWeaponDamage:3 andSpecial:@"sap" andImage:@"person.jpg"];
    
    Monster *lilith = [[Monster alloc] initWithName:@"Lilith" andstartingHp:50 andHp:55 andStrength:2 andNaturalArmor:4 andGivenExperience:60 andScoreModifier:4 andItem:@"Scale Armor" andArmorDefense:3 andWeaponDamage:4 andSpecial:@"confusion" andImage:@"person.jpg"];
    
    Monster *demon = [[Monster alloc] initWithName:@"Demon" andstartingHp:65 andHp:70 andStrength:2 andNaturalArmor:2 andGivenExperience:105 andScoreModifier:4 andItem:@"Demon Blade" andArmorDefense:1 andWeaponDamage:5 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *wyvern = [[Monster alloc] initWithName:@"Wyvern" andstartingHp:70 andHp:75 andStrength:5 andNaturalArmor:4 andGivenExperience:105 andScoreModifier:4 andItem:@"Potion" andArmorDefense:2 andWeaponDamage:4 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *chimera = [[Monster alloc] initWithName:@"Chimera" andstartingHp:70 andHp:75 andStrength:5 andNaturalArmor:4 andGivenExperience:110 andScoreModifier:5 andItem:@"Potion" andArmorDefense:3 andWeaponDamage:3 andSpecial:@"elementblast" andImage:@"person.jpg"];
    
    Monster *giantWorm = [[Monster alloc] initWithName:@"Giant Worm" andstartingHp:75 andHp:80 andStrength:5 andNaturalArmor:4 andGivenExperience:115 andScoreModifier:5 andItem:@"Potion" andArmorDefense:6 andWeaponDamage:0 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *wereWolf = [[Monster alloc] initWithName:@"Were Wolf" andstartingHp:75 andHp:80 andStrength:5 andNaturalArmor:4 andGivenExperience:120 andScoreModifier:5 andItem:@"Potion" andArmorDefense:1 andWeaponDamage:0 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *doppleGanger = [[Monster alloc] initWithName:@"Dopple Ganger" andstartingHp:0 andHp:0 andStrength:0 andNaturalArmor:0 andGivenExperience:50 andScoreModifier:6 andItem:@"Plate Mail" andArmorDefense:0 andWeaponDamage:0 andSpecial:@"copy" andImage:@"person.jpg"];
    
    Monster *giantSpider = [[Monster alloc]initWithName:@"Giant Spider" andstartingHp:80 andHp:85 andStrength:3 andNaturalArmor:4 andGivenExperience:190 andScoreModifier:6 andItem:@"Venom Sack" andArmorDefense:3 andWeaponDamage:3 andSpecial:@"poison" andImage:@"person.jpg"];
    
    Monster *greenDragon = [[Monster alloc] initWithName:@"Green Dragon" andstartingHp:120 andHp:130 andStrength:6 andNaturalArmor:12 andGivenExperience:240 andScoreModifier:6 andItem:@"Dragon Sword" andArmorDefense:6 andWeaponDamage:6 andSpecial:@"firebreath" andImage:@"person.jpg"];
    
    Monster *seaSerpant = [[Monster alloc]initWithName:@"Sea Serpant" andstartingHp:150 andHp:160 andStrength:9 andNaturalArmor:12 andGivenExperience:330 andScoreModifier:7 andItem:@"Dragon sword" andArmorDefense:6 andWeaponDamage:7 andSpecial:@"Tsunami" andImage:@"person.jpg"];
    
    Monster *horror = [[Monster  alloc]initWithName:@"Horror" andstartingHp:210 andHp:235 andStrength:7 andNaturalArmor:14 andGivenExperience:430 andScoreModifier:7 andItem:@"Potions" andArmorDefense:14 andWeaponDamage:7 andSpecial:@"incorpreal" andImage:@"person.jpg"];
    
    Monster *redDragon = [[Monster alloc] initWithName:@"Great Red Dragon" andstartingHp:275 andHp:290 andStrength:8 andNaturalArmor:14 andGivenExperience:570 andScoreModifier:8 andItem:@"Dragon Sword" andArmorDefense:8 andWeaponDamage:8 andSpecial:@"firebreath" andImage:@"person.jpg"];
    
    Monster *iceGiant = [[Monster alloc] initWithName:@"Ice Giant" andstartingHp:300 andHp:320 andStrength:6 andNaturalArmor:13 andGivenExperience:720 andScoreModifier:8 andItem:@"Frosts Might" andArmorDefense:10 andWeaponDamage:8 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *blackDragon = [[Monster alloc] initWithName:@"Great Black Dragon" andstartingHp:400 andHp:425 andStrength:12 andNaturalArmor:16 andGivenExperience:840 andScoreModifier:8 andItem:@"Dragon Sword" andArmorDefense:12 andWeaponDamage:12 andSpecial:@"lightingbreath" andImage:@"person.jpg"];
    
    Monster *pitFiend = [[Monster alloc] initWithName:@"Pit Fiend" andstartingHp:500 andHp:530 andStrength:12 andNaturalArmor:12 andGivenExperience:1040 andScoreModifier:8 andItem:@"Potion" andArmorDefense:12 andWeaponDamage:20 andSpecial:@"darkness" andImage:@"person.jpg"];
    
    Monster *platinumGolem = [[Monster alloc] initWithName:@"Platinum Golem" andstartingHp:700 andHp:740 andStrength:15 andNaturalArmor:15 andGivenExperience:1320 andScoreModifier:9 andItem:@"Platinum Mail" andArmorDefense:15 andWeaponDamage:20 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *titan = [[Monster alloc]initWithName:@"Titan" andstartingHp:800 andHp:850 andStrength:15 andNaturalArmor:20 andGivenExperience:1620 andScoreModifier:9 andItem:@"Potion" andArmorDefense:10 andWeaponDamage:25 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *behemoth = [[Monster alloc] initWithName:@"Behemoth" andstartingHp:900 andHp:960 andStrength:15 andNaturalArmor:20 andGivenExperience:1720 andScoreModifier:9 andItem:@"Slayer" andArmorDefense:10 andWeaponDamage:25 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *chaosFiend = [[Monster alloc] initWithName:@"Chaos Fiend" andstartingHp:1000 andHp:1100 andStrength:17 andNaturalArmor:25 andGivenExperience:1920 andScoreModifier:10 andItem:@"Potion" andArmorDefense:7 andWeaponDamage:30 andSpecial:@"darkness" andImage:@"person.jpg"];
    
    Monster *tRex = [[Monster alloc] initWithName:@"T-Rex" andstartingHp:900 andHp:960 andStrength:20 andNaturalArmor:40 andGivenExperience:2000 andScoreModifier:10 andItem:@"Potion" andArmorDefense:4 andWeaponDamage:40 andSpecial:@"none" andImage:@"person.jpg"];
    
    Monster *hydra = [[Monster alloc] initWithName:@"Hydra" andstartingHp:1200 andHp:1250 andStrength:20 andNaturalArmor:30 andGivenExperience:2100 andScoreModifier:10 andItem:@"Dragon Sword" andArmorDefense:10 andWeaponDamage:40 andSpecial:@"regenerate" andImage:@"peron.jpg"];
    
    Monster *goldDragon = [[Monster alloc] initWithName:@"Grand Gold Dragon" andstartingHp:2200 andHp:2250 andStrength:30 andNaturalArmor:50 andGivenExperience:2500 andScoreModifier:11 andItem:@"Gold plate" andArmorDefense:40 andWeaponDamage:45 andSpecial:@"dragonmight" andImage:@"person.jpg"];
    
    NSDictionary *monsterDictionary = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:zombie,goblin,kobold,skeleton,orc,lizardman,orge,mummy,vampire,lilith,demon,wyvern,chimera,giantWorm,wereWolf,doppleGanger,giantSpider,greenDragon,seaSerpant,horror,redDragon,iceGiant,blackDragon,pitFiend,platinumGolem,titan,behemoth,chaosFiend,tRex,hydra,goldDragon, nil] forKeys:[NSArray arrayWithObjects:zombie.name,goblin.name,kobold.name,skeleton.name,orc.name,lizardman.name,orge.name,mummy.name,vampire.name,lilith.name,demon.name,wyvern.name,chimera.name,giantWorm.name,wereWolf.name,doppleGanger.name,giantSpider.name,greenDragon.name,seaSerpant.name,horror.name,redDragon.name,iceGiant.name,blackDragon.name,pitFiend.name,platinumGolem.name,titan.name,behemoth.name,chaosFiend.name,tRex.name,hydra.name,goldDragon.name, nil]];
    
    return monsterDictionary;
}

@end


