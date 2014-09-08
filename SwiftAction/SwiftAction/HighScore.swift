//
//  HighScore.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/9/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit

class HighScore{
    var name:String;
    var score:Int;
    var totalExp:Int;
    var level:Int;
    var mname:String;
    
    init(name:String,score:Int,totalExp:Int,level:Int,mname:String){
        self.name = name;
        self.score = score;
        self.totalExp = totalExp;
        self.level = level;
        self.mname = mname;
    }
    
    
}

class  beginScores:HighScore{
    init(){
        super.init(
            name:rMonster(),
            score:0,
            totalExp:0,
            level:1,
            mname:rMonster());
    }
    
    func rMonster()->(String){
        var randomCounter = (arc4random()%27)+1;
        var randomMonster:String = "";
        switch(randomCounter){
        case 1:
            randomMonster = "Zombie"
            break;
        case 2:
            randomMonster = "Goblin"
            break;
        case 3:
            randomMonster = "Kobold"
            break;
        case 4:
            randomMonster = "Skeleton"
            break;
        case 5:
            randomMonster = "Orc"
            break;
        case 6:
            randomMonster = "Lizardman"
            break;
        case 7:
            randomMonster = "Ogre"
            break;
        case 8:
            randomMonster = "Mummy"
            break;
        case 9:
            randomMonster = "Vampire"
            break;
        case 10:
            randomMonster = "Lilith"
            break;
        case 11:
            randomMonster = "Demon"
            break;
        case 12:
            randomMonster = "Wyvern"
            break;
        case 13:
            randomMonster = "Chimera"
            break;
        case 14:
            randomMonster = "Giant Worm"
            break;
        case 15:
            randomMonster = "WereWolf"
            break;
        case 16:
            randomMonster = "Dopple Ganger"
            break;
        case 17:
            randomMonster = "Giant Spider"
            break;
        case 18:
            randomMonster = "Green Dragon"
            break;
        case 19:
            randomMonster = "Sea Serpant"
            break;
        case 20:
            randomMonster = "Horror"
            break;
        case 21:
            randomMonster = "Red Dragon"
            break;
        case 22:
            randomMonster = "Ice Giant"
            break;
        case 23:
            randomMonster = "Black Dragon"
            break;
        case 24:
            randomMonster = "Chaos Fiend"
            break;
        case 25:
            randomMonster = "Platinum Golem"
            break;
        case 26:
            randomMonster = "Titan"
            break;
        case 27:
            randomMonster = "Behemoth"
            break;
        default:
            break;
        }
        return randomMonster;
    }
}

class playerScore:HighScore{
    
    init(player:Player,monster:Monster){
        
       super.init( name:player.name,
        score:player.score,
        totalExp:player.totalExp,
        level:player.level,
        mname:monster.mname);
    }
}
