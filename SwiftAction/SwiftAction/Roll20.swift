//
//  Roll20.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/9/14.
//  Copyright (c) 2014 BYU-Idaho. All rights reserved.
//

import UIKit

class diceRoller{
    
    var strSides:UInt32;
    var hSides:UInt32;
    var dSides:UInt32;
    var rolled:Int;
    
    init(){
        strSides = 3;
        hSides = 20;
        dSides = 3;
        rolled = 0;
    }
    
    
    func rollStrength() ->(Int){
        var roll:UInt32 = (arc4random() % strSides) + 1;
        
        switch (roll){
        case 1:
            rolled = 1;
            break;
        case 2:
            rolled = 2;
            break;
        case 3:
            rolled = 3;
            break;
        default:
            
            break;
        }
        return rolled;
    }
    
    func rollDefense() ->(Int){
        var roll = (arc4random()%(dSides - 1))+1;
        switch (roll){
        case 1:
            rolled = 1;
            break;
        case 2:
            rolled = 2;
            break;
        case 3:
            rolled = 3;
            break;
        default:
            
            break;
        }
        return rolled;
    }
    
    func rollHealth() ->(Int){
        var roll = (arc4random()%(hSides - 5))+1;
        switch (roll){
        case 1:
            rolled = 1;
            break;
        case 2:
            rolled = 2;
            break;
        case 3:
            rolled = 3;
            break;
        case 4:
            rolled = 4;
            break;
        case 5:
            rolled = 5;
            break;
        case 6:
            rolled = 6;
            break;
        case 7:
            rolled = 7;
            break;
        case 8:
            rolled = 8;
            break;
        case 9:
            rolled = 9;
            break;
        case 10:
            rolled = 10;
            break;
        case 11:
            rolled = 11;
            break;
        case 12:
            rolled = 12;
            break;
        case 13:
            rolled = 13;
            break;
        case 14:
            rolled = 14;
            break;
        case 15:
            rolled = 15;
            break;
        case 16:
            rolled = 16;
            break;
        case 17:
            rolled = 17;
            break;
        case 18:
            rolled = 18;
            break;
        case 19:
            rolled = 19;
            break;
        case 20:
            rolled = 20;
            break;
        default:
            
            break;
        }
        return rolled;
    }
}
