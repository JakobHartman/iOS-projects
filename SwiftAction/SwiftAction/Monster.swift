//
//  Monster.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/9/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit


class Monster{
    
    var mname:String;
    var mtemphp:Int;
    var mhp:Int;
    var marmor:Int;
    var mweapon:Int;
    var mstrength:Int;
    var mdefense:Int;
    var mexp:Int;
    var mitem:String;
    var scmod:Int;
    var carry:String;
    init(mname:String, mtemphp:Int,mhp:Int,marmor:Int,mweapon:Int,mstrength:Int,mdefense:Int,mexp:Int,mitem:String,scmod:Int,carry:String,player:Player){
        self.mname = mname;
        self.mtemphp = mtemphp;
        self.mhp = mhp;
        self.marmor = marmor;
        self.mweapon = mweapon;
        self.mstrength = mstrength;
        self.mdefense = mdefense;
        self.mexp = mexp;
        self.mitem = mitem;
        self.scmod = scmod;
        self.carry = carry;
    }
}


class Zombie:Monster{
    init(){
        super.init(mname: "Zombie",
            mtemphp: 13,
            mhp: 8,
            marmor: 1,
            mweapon: 1,
            mstrength: 2,
            mdefense: 2,
            mexp: 1,
            mitem: "padding",
            scmod: 1,
            carry: "padded armor"
            ,player:Player());
    }
}

class Goblin:Monster{
    init(){
       super.init( mname:"Goblin",
        mtemphp:17,
        mhp:12,
        marmor:1,
        mweapon:1,
        mstrength:2,
        mdefense:1,
        mexp:3,
        mitem:"potion",
        scmod:1,
        carry:"potion."
        ,player:Player());
    }
}

class Kobold:Monster{
    init(){
        super.init(mname:"Kobold",
        mtemphp:20,
        mhp:15,
        marmor:1,
        mweapon:1,
        mstrength:2,
        mdefense:2,
        mexp:5,
        mitem:"sword",
        scmod:1,
        carry:"short Sword.",player:Player());
    }
}

class Skeleton:Monster{
    init(){
        super.init(mname:"Skeleton",
        mtemphp:23,
        mhp:18,
        marmor:2,
        mweapon:1,
        mstrength:2,
        mdefense:2,
        mexp:8,
        mitem:"potion",
        scmod:2,
        carry:"potion.",player:Player());
    }
}

class Orc:Monster{
    init(){
       super.init( mname:"Orc",
        mtemphp:25,
        mhp:20,
        marmor:2,
        mweapon:1,
        mstrength:3,
        mdefense:2,
        mexp:13,
        mitem:"long",
        scmod:2,
        carry:"long sword",player:Player());
    }
}

class Lizardman:Monster{
    init(){
        super.init(mname:"Lizardman",
        mtemphp:30,
        mhp:25,
        marmor:2,
        mweapon:1,
        mstrength:3,
        mdefense:4,
        mexp:18,
        mitem:"leather",
        scmod:2,
            carry:"leather armor",player:Player());
    }
}

class Ogre:Monster{
    init(){
        super.init(mname:"Ogre",
        mtemphp:45,
        mhp:40,
        marmor:1,
        mweapon:2,
        mstrength:5,
        mdefense:1,
        mexp:27,
        mitem:"leather",
        scmod:3,
            carry:"leather armor",player:Player());
    }
}
class Mummy:Monster{
    init(){
        super.init(mname:"Mummy",
        mtemphp:50,
        mhp:45,
        marmor:2,
        mweapon:2,
        mstrength:5,
        mdefense:2,
        mexp:42,
        mitem:"potion",
        scmod:3,
            carry:"potion",player:Player());
    }
}
class Vampire:Monster{
    init(){
        super.init(mname:"Vampire",
        mtemphp:50,
        mhp:45,
        marmor:3,
        mweapon:3,
        mstrength:5,
        mdefense:1,
        mexp:57,
        mitem:"vampire",
        scmod:3,
            carry:"vampires blood",player:Player());
    }
}

class Lilith:Monster{
    init(){
        super.init(mname:"Lilith",
        mtemphp:55,
        mhp:50,
        marmor:3,
        mweapon:4,
        mstrength:2,
        mdefense:4,
        mexp:60,
        mitem:"scale",
        scmod:4,
            carry:"scale armor",player:Player());
    }
}

class Demon:Monster{
    init(){
        super.init(mname:"Demon",
        mtemphp:70,
        mhp:65,
        marmor:1,
        mweapon:5,
        mstrength:2,
        mdefense:2,
        mexp:105,
        mitem:"demon",
        scmod:4,
            carry:"demon sword",player:Player());
    }
}
class Wyvern:Monster{
    init(){
       super.init( mname:"Wyvern",
        mtemphp:75,
        mhp:70,
        marmor:2,
        mweapon:4,
        mstrength:5,
        mdefense:4,
        mexp:105,
        mitem:"potion",
        scmod:4,
        carry:"potion",player:Player());
    }
}
class Chimera:Monster{
    init(){
        super.init(mname:"Chimera",
        mtemphp:75,
        mhp:70,
        marmor:3,
        mweapon:3,
        mstrength:5,
        mdefense:4,
        mexp:110,
        mitem:"potion",
        scmod:5,
            carry:"potion",player:Player());
    }
}
class GiantWorm:Monster{
    init(){
        super.init(mname:"Giant Worm",
        mtemphp:80,
        mhp:75,
        marmor:6,
        mweapon:0,
        mstrength:5,
        mdefense:4,
        mexp:115,
        mitem:"potion",
        scmod:5,
            carry:"potion",player:Player());
    }
}
class WereWolf:Monster{
    init(){
        super.init(mname:"Were-Wolf",
        mtemphp:80,
        mhp:75,
        marmor:1,
        mweapon:0,
        mstrength:5,
        mdefense:4,
        mexp:120,
        mitem:"potion",
        scmod:5,
            carry:"potion",player:Player());
    }
}
class DoppleGanger:Monster{
    
    init(player:Player){
        super.init(mname:"DoppleGanger",
        mtemphp:player.hp,
        mhp:player.hp,
        marmor:player.armor,
        mweapon:player.weapon,
        mstrength:player.strength,
        mdefense:player.defense,
        mexp:50,
        mitem:"plate",
        scmod:6,
        carry:"plate mail",player:Player());
    }
}

class GiantSpider:Monster{
    init(){
        super.init(mname:"Giant Spider",
        mtemphp:85,
        mhp:80,
        marmor:3,
        mweapon:3,
        mstrength:3,
        mdefense:4,
        mexp:190,
        mitem:"poison",
        scmod:6,
        carry:"venom",player:Player());
    }
}

class GreenDragon:Monster{
    init(){
        super.init(mname:"Great Green Dragon",
        mtemphp:130,
        mhp:120,
        marmor:6,
        mweapon:6,
        mstrength:6,
        mdefense:12,
        mexp:240,
        mitem:"dragon",
        scmod:6,
            carry:"dragon sword",player:Player());
    }
}

class SeaSerpant:Monster{
    init(){
        super.init(mname:"Sea Serpant",
        mtemphp:160,
        mhp:150,
        marmor:6,
        mweapon:7,
        mstrength:9,
        mdefense:12,
        mexp:330,
        mitem:"scale",
        scmod:7,
            carry:"dragon sword",player:Player());
    }
}

class Horror:Monster{
    init(){
       super.init( mname:"Horror",
        mtemphp:235,
        mhp:210,
        marmor:14,
        mweapon:7,
        mstrength:7,
        mdefense:2,
        mexp:430,
        mitem:"potion",
        scmod:7,
        carry:"potion",player:Player());
    }
}

class RedDragon:Monster{
    init(){
        super.init(mname:"Great Red Dragon",
        mtemphp:290,
        mhp:275,
        marmor:8,
        mweapon:8,
        mstrength:8,
        mdefense:14,
        mexp:570,
        mitem:"dragon",
        scmod:8,
            carry:"dragon sword",player:Player());
    }
}

class IceGiant:Monster{
    init(){
        super.init(mname:"Ice Giant",
        mtemphp:320,
        mhp:300,
        marmor:10,
        mweapon:8,
        mstrength:6,
        mdefense:13,
        mexp:720,
        mitem:"ice",
        scmod:8,
            carry:"frost strength",player:Player());
    }
}

class BlackDragon:Monster{
    init(){
        super.init(mname:"Great Black Dragon",
        mtemphp:425,
        mhp:400,
        marmor:12,
        mweapon:12,
        mstrength:12,
        mdefense:16,
        mexp:840,
        mitem:"dragon",
        scmod:8,
            carry:"dragon sword",player:Player());
    }
}

class PitFiend:Monster{
    init(){
        super.init(mname:"Pit Fiend",
        mtemphp:530,
        mhp:500,
        marmor:12,
        mweapon:20,
        mstrength:12,
        mdefense:12,
        mexp:1040,
        mitem:"potion",
        scmod:8,
            carry:"potion",player:Player());
    }
}

class PlatinumGolem:Monster{
    init(){
        super.init(mname:"Platinum Golem",
        mtemphp:740,
        mhp:700,
        marmor:15,
        mweapon:20,
        mstrength:15,
        mdefense:15,
        mexp:1320,
        mitem:"platinum",
        scmod:9,
            carry:"platinum mail",player:Player());
    }
}

class Titan:Monster{
    init(){
        super.init(mname:"Titan",
        mtemphp:850,
        mhp:800,
        marmor:10,
        mweapon:25,
        mstrength:15,
        mdefense:20,
        mexp:1620,
        mitem:"potion",
        scmod:9,
            carry:"potion",player:Player());
    }
}

class Behemoth:Monster{
    init(){
        super.init(mname:"Behemoth",
        mtemphp:960,
        mhp:900,
        marmor:10,
        mweapon:25,
        mstrength:15,
        mdefense:20,
        mexp:1720,
        mitem:"slayer",
        scmod:9,
            carry:"slayer",player:Player());
    }
}

class ChaosFiend:Monster{
    init(){
        super.init(mname:"Chaos Fiend",
        mtemphp:1100,
        mhp:1000,
        marmor:7,
        mweapon:30,
        mstrength:17,
        mdefense:25,
        mexp:1920,
        mitem:"potion",
        scmod:10,
            carry:"potion",player:Player());
    }
}

class TRex:Monster{
    init(){
        super.init(mname:"T-Rex",
        mtemphp:960,
        mhp:900,
        marmor:4,
        mweapon:40,
        mstrength:20,
        mdefense:40,
        mexp:2000,
        mitem:"potion",
        scmod:10,
            carry:"potion",player:Player());
    }
}
class Hydra:Monster{
    init(){
        super.init(mname:"Hydra",
        mtemphp:1250,
        mhp:1200,
        marmor:10,
        mweapon:40,
        mstrength:20,
        mdefense:30,
        mexp:2100,
        mitem:"dragon",
        scmod:10,
            carry:"dragon sword",player:Player());
    }
}

class Shadow:Monster{
    init(){
        super.init(mname:"Shadow",
        mtemphp:250,
        mhp:200,
        marmor:0,
        mweapon:45,
        mstrength:30,
        mdefense:50,
        mexp:2200,
        mitem:"shadow",
        scmod:11,
            carry:"shadow blade",player:Player());
    }
}
class GoldDragon:Monster{
    init(){
        super.init(mname:"Gold Dragon",
        mtemphp:2250,
        mhp:2200,
        marmor:40,
        mweapon:45,
        mstrength:30,
        mdefense:50,
        mexp:2500,
        mitem:"gold",
        scmod:11,
            carry:"gold plate",player:Player());
    }
}
