//
//  ViewController.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/9/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit
import Foundation
import CoreData


class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var CharacterName : UITextField = nil
    @IBOutlet var startingHealth : UILabel = nil
    @IBOutlet var healthRoller : UIButton = nil
    @IBOutlet var strengthRoller : UIButton = nil
    @IBOutlet var defenseRoller : UIButton = nil
    @IBOutlet var startingStrength : UILabel = nil
    @IBOutlet var startingDefense : UILabel = nil
    @IBOutlet var rollHealthlabel : UILabel = nil
    @IBOutlet var continueToGameButton : UIButton = nil
    
    var playerChar:Player = Player();
    
    var highScore:HighScore[] = [beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores()];
    var levelCount:Int = 1;
    var dice = diceRoller();
    
    
    
    @IBAction func RollHealth(sender : UIButton) {
        
        var health = dice.rollHealth();
        startingHealth.text = "\(health)";
        playerChar.hp += health;
        playerChar.temphp = playerChar.hp;
        healthRoller.enabled = false;
        strengthRoller.enabled = true;
    }
    
    @IBAction func rollStrength(sender : AnyObject) {
        var strength = dice.rollStrength();
        startingStrength.text = "\(strength)";
        playerChar.strength += strength;
        defenseRoller.enabled = true;
        strengthRoller.enabled = false;
    }
    
    @IBAction func rollDefense(sender : UIButton) {
        var defense = dice.rollDefense();
        startingDefense.text = "\(defense)";
        playerChar.defense += defense;
        defenseRoller.enabled = false;
        continueToGameButton.enabled = true;
    }

    @IBAction func enterName(sender : UITextField) {
        playerChar.name = CharacterName.text;
        CharacterName.enabled = false;
        healthRoller.enabled = true;
    }
    
    
    override func viewDidLoad() {
            loadDefaultData();
            loadHighScores();
        super.viewDidLoad()
    }
    
    func loadHighScores(){
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
        let context:NSManagedObjectContext = appDel.managedObjectContext;
        let request = NSFetchRequest(entityName: "Highscores");
            request.returnsObjectsAsFaults = false;
        
        var results:NSArray = context.executeFetchRequest(request, error: nil);
        if(results.count > 0){
            var i = 0;
            
            for (i;i < 15;i++){
                var items : Highscores = results[i] as Highscores;
                highScore[i].name = items.playerName;
                
                highScore[i].mname = items.monsterName;
                highScore[i].level = Int(items.level);
                highScore[i].score = Int(items.score);
            }
        }
        else{
            saveHighScores();
        }
    }
    
    func loadDefaultData(){
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
        let context:NSManagedObjectContext = appDel.managedObjectContext;
        
        let request = NSFetchRequest(entityName: "GameDefaults");
            request.returnsObjectsAsFaults = false;
            request.predicate = NSPredicate(format: "firstTimeRunning = %@", "ran");
        
        var results:NSArray = context.executeFetchRequest(request, error: nil);
        
        if(results.count > 0){
            println("Defaults Loaded");
        }
        else{
            saveDefaultData();
        }
        
    }
    
    func saveDefaultData(){
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
        let context:NSManagedObjectContext = appDel.managedObjectContext;
        
        let ent = NSEntityDescription.entityForName("GameDefaults", inManagedObjectContext: context);
        
        var newDefaults = GameDefaults(entity: ent, insertIntoManagedObjectContext: context);
        newDefaults.firstTimeRunning = "ran";
        
        context.save(nil);
        println("Saved!!");
    }
    
    func saveHighScores(){
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
        let context:NSManagedObjectContext = appDel.managedObjectContext;
        
        let ent = NSEntityDescription.entityForName("Highscores", inManagedObjectContext: context);
        var i = 0;
        for (i;i<15;i++){
             var newScore = Highscores(entity: ent, insertIntoManagedObjectContext: context);
            
            var cLevels:NSNumber = highScore[i].level;
            var cScores:NSNumber = highScore[i].score;
                newScore.level = cLevels;
                newScore.playerName = highScore[i].name;
                newScore.monsterName = highScore[i].mname;
                newScore.score = cScores;
        }
    
        context.save(nil);
        println("New Scores Loaded!!")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if(segue!.identifier){
            var name = segue!.identifier;
            if (name.compare("next") == 0){
                var view:StartGame = segue!.destinationViewController as StartGame;
                view.playerChar = self.playerChar;
                view.highScores = self.highScore;
            }
            if(name.compare("goToScores") == 0){
                var view:HighScoreTable = segue!.destinationViewController as HighScoreTable;
                view.scores = self.highScore;
            }
            if(name.compare("newgame") == 0){
                var view:ViewController = segue!.destinationViewController as ViewController;
                view.highScore = self.highScore;
            }
            if(name.compare("backFromCredits") == 0){
                var view:ViewController = segue!.destinationViewController as ViewController;
                view.highScore = self.highScore;
            }
            if(name.compare("toCredits") == 0){
                var view:ViewController = segue!.destinationViewController as ViewController;
                view.highScore = self.highScore;
            }
        }
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        if(CharacterName){
            CharacterName.resignFirstResponder();
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func max(sender: UITextField) {
        
        var string = CharacterName.text;
        var length = string.utf16count;
        println("\(length)")
        if(length > 10){
            CharacterName.endEditing(true);
        }
    }


}

