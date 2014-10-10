// Playground - noun: a place where people can play

import Cocoa

class diceRoller{
    
    var strSides:Int;
    var hSides:Int;
    var dSides:Int;
    
    init(){
        strSides = 3;
        hSides = 30;
        dSides = 3;
        
    }
    
    
    func rollStrength() ->(Int){
        var roll:UInt32 = (arc4random() % strSides) + 1;
        return roll;
    }
    
    func rollDefense() ->(Int){
        var roll = (random()%(dSides - 1))+1;
        return roll;
    }
    
    func rollHealth() ->(Int){
        var roll = (random()%(hSides - 5))+1;
        return roll;
    }
}

var dice = diceRoller();


class Player{
    var name: String;
    var hp: Int;
    var temphp: Int;
    var armor: Int;
    var weapon: Int;
    var potions: Int;
    var strength: Int;
    var defense: Int;
    var totalExp: Int;
    var score: Int;
    var scmod: Int;
    var wEquiped: String;
    var aEquiped: String;
    
    init(){
        name = "";
        temphp = 1;
        hp = 5;
        armor = 1;
        weapon = 1;
        potions = 2;
        strength = 1;
        defense = 1;
        totalExp = 1;
        score = 0;
        scmod = 0;
        wEquiped = "";
        aEquiped = "";
    }
    
}


var player = Player();

player.name = "Jakob";
player.hp += dice.rollHealth();
player.temphp = player.hp;
player.strength = dice.rollStrength() + player.strength;
player.defense = dice.rollDefense() + player.defense;

if(player.hp < 20){
    player.hp += 2;
}

player




