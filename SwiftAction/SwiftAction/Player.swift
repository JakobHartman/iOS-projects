//
//  Player.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/9/14.
//  Copyright (c) 2014 BYU-Idaho. All rights reserved.
//

import UIKit

class Player{
    var name: String;
    var hp: Int;
    var level:Int;
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
    var kills:Int;
    
    init(){
        name = "Player";
        temphp = 1;
        hp = 10;
        armor = 1;
        level = 1;
        weapon = 1;
        potions = 2;
        strength = 1;
        defense = 1;
        totalExp = 0;
        score = 0;
        scmod = 0;
        wEquiped = "Dagger";
        aEquiped = "Rags";
        potions = 5;
        kills = 0;
    }
    
}
