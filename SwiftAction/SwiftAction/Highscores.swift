//
//  Highscores.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/20/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import Foundation
import CoreData

@objc(Highscores)
class Highscores:NSManagedObject{
    @NSManaged var monsterName:String;
    @NSManaged var playerName:String;
    @NSManaged var level:NSNumber;
    @NSManaged var score:NSNumber;
}