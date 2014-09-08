//
//  StartGame.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/11/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIkit

class StartGame:UIViewController{
    
    var playerChar:Player = Player();
    var highScores:HighScore[] = [];
    
    @IBOutlet var welcomeLabel : UILabel = nil
    override func viewDidLoad() {
        welcomeLabel.text = "Welcome \(playerChar.name),One day, you decide to pick up a sword and take on the role of an adventurer. Rumors say that the evil necromancer is up to no good again, and that's as good of a job lead as you're gonna get, being a beginner at adventuring. You travel to the city and wander from tavern to tavern to get more information, and find that the necromancer hides out in a giant tower, guarded by his evil minions. It would be no small feat to take on this foe, but adventuring wasn't meant to be easy. You resolve to sallow your fear and risk  death at the hand of evil to show how brave of an adventurer you can be. You travel many days to reach the valley of many deaths, so named for all the dead adventurers that lay strewn about the valley. \"Every adventure starts by stepping into certain doom,\" you mumble to yourself, not sure whom you are quoting, and trudge forward to face your first foe.";
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if(segue!.identifier){
            var name = segue!.identifier;
            if (name.compare("goToGame") == 0){
                var view:Game = segue!.destinationViewController as Game;
                view.playerChar = self.playerChar;
                view.HighScores = self.highScores;
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


