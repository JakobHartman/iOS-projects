//
//  Game.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/11/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit
import CoreData

class Game:UIViewController{
    var playerChar:Player = Player();
    var HighScores:HighScore[] = [];
    var battle:Battle = Battle(currentPlayer: Player());
    var nmonster:Monster = Zombie();
    var charSheet:Bool = false;
    
    @IBOutlet var lifeLabel : UILabel = nil
    @IBOutlet var gameAttackLabel : UILabel = nil
    @IBOutlet var gameLevelLabel : UILabel = nil
    @IBOutlet var gamePotionsLabel : UILabel = nil
    @IBOutlet var gameArmorClassLabel : UILabel = nil
    @IBOutlet var gameExpLabel : UILabel = nil
    @IBOutlet var gamePlayerLabel : UILabel = nil
    @IBOutlet var gameMonsterLabel : UILabel = nil
    @IBOutlet var gameMonsterLifeLabel : UILabel = nil
    
    @IBAction func defendMonster(sender : UITapGestureRecognizer) {
        battle.defend(playerChar, monster: nmonster);
        
        lifeLabel.text = "\(playerChar.temphp)";
        gameAttackLabel.text = "\(playerChar.weapon + playerChar.strength)";
        gameArmorClassLabel.text = "\(playerChar.armor + playerChar.defense)";
        gameExpLabel.text = "\(playerChar.totalExp)"
        gamePlayerLabel.text = "\(playerChar.name)"
        gameMonsterLabel.text = nmonster.mname;
        gamePotionsLabel.text = "\(playerChar.potions)";
        gameLevelLabel.text = "\(playerChar.level)";
        gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        if(battle.newMonster == true){
            nmonster = battle.createMonster();
            battle.newMonster = false;
            gameMonsterLabel.text = nmonster.mname;
            gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        }
        if(battle.playerDead == true){
            performSegueWithIdentifier("goToHighScores", sender: nil);
        }
    }
    
    @IBAction func attackMonster(sender : UISwipeGestureRecognizer) {
        battle.attack(playerChar, monster: nmonster);
        lifeLabel.text = "\(playerChar.temphp)";
        gameAttackLabel.text = "\(playerChar.weapon + playerChar.strength)";
        gameArmorClassLabel.text = "\(playerChar.armor + playerChar.defense)";
        gameExpLabel.text = "\(playerChar.totalExp)"
        gamePlayerLabel.text = "\(playerChar.name)"
        gameMonsterLabel.text = nmonster.mname;
        gamePotionsLabel.text = "\(playerChar.potions)";
        gameLevelLabel.text = "\(playerChar.level)";
        gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        
        if(battle.newMonster == true){
            nmonster = battle.createMonster();
            battle.newMonster = false;
            gameMonsterLabel.text = nmonster.mname;
            gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        }
        if(battle.playerDead == true){
            performSegueWithIdentifier("goToHighScores", sender: nil);
        }
        if(battle.gotPotion == true){
            UIView.animateWithDuration(1.0, animations: {
                
                self.gamePotionsLabel.text = "+1";
                self.gamePotionsLabel.alpha = 0;
                self.gamePotionsLabel.font.fontWithSize(40);
                
                });
        }
    }
    
    @IBAction func usePotion(sender : UIRotationGestureRecognizer) {
        battle.usePotion(playerChar, monster: nmonster);
        lifeLabel.text = "\(playerChar.temphp)";
        gameAttackLabel.text = "\(playerChar.weapon + playerChar.strength)";
        gameArmorClassLabel.text = "\(playerChar.armor + playerChar.defense)";
        gameExpLabel.text = "\(playerChar.totalExp)"
        gamePlayerLabel.text = "\(playerChar.name)"
        gameMonsterLabel.text = nmonster.mname;
        gamePotionsLabel.text = "\(playerChar.potions)";
        gameLevelLabel.text = "\(playerChar.level)";
        gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        
        
        if(battle.newMonster == true){
            nmonster = battle.createMonster();
            battle.newMonster = false;
            gameMonsterLabel.text = nmonster.mname;
            gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        }
        if(battle.playerDead == true){
            performSegueWithIdentifier("goToHighScores", sender: nil);
        }
    }
    override func viewDidLoad() {

        battle = Battle(currentPlayer: playerChar);
        if(charSheet == false){
             nmonster = battle.createMonster();
            
        }
       charSheet = false;
        
        
        lifeLabel.text = "\(playerChar.temphp)";
        gameAttackLabel.text = "\(playerChar.weapon + playerChar.strength)";
        gameArmorClassLabel.text = "\(playerChar.armor + playerChar.defense)";
        gameExpLabel.text = "\(playerChar.totalExp)"
        gamePlayerLabel.text = "\(playerChar.name)"
        gameMonsterLabel.text = nmonster.mname;
        gamePotionsLabel.text = "\(playerChar.potions)";
        gameLevelLabel.text = "\(playerChar.level)";
        gameMonsterLifeLabel.text = "\(nmonster.mhp)"
        
        
        
        super.viewDidLoad()
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if(segue!.identifier){
            var name = segue!.identifier;
            if (name.compare("goToCharacterSheet") == 0){
                var view:CharacterSheetView = segue!.destinationViewController as CharacterSheetView;
                view.playerChar = self.playerChar;
                view.cmonster = self.nmonster;
                view.highScores = self.HighScores;
                view.battleData = self.battle;
            }
            if(name.compare("goToHighScores") == 0){
                
                let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
                let context:NSManagedObjectContext = appDel.managedObjectContext;
                let request = NSFetchRequest(entityName: "Highscores");
                request.returnsObjectsAsFaults = false;
                
                var results:NSArray = context.executeFetchRequest(request, error: nil);
                
                
                
                
                var newScore:playerScore = playerScore(player:playerChar,monster:nmonster);
                HighScores.append(newScore);
                
                var sorter:sortScores = sortScores();
                HighScores = sorter.sort(HighScores);
                if(HighScores.count > 15){
                    HighScores.removeLast();
                }
                
                var view:HighScoreTable = segue!.destinationViewController as HighScoreTable;
                view.scores = self.HighScores;
                
            
                if(results.count > 0){
                    
                    for (var i = 0;i < 15;i++){
                        var item : Highscores = results[i] as Highscores;
                        
                        item.playerName = HighScores[i].name;
                        item.monsterName = HighScores[i].mname;
                        item.level = HighScores[i].level;
                        item.score = HighScores[i].score;
                    }
                }
                
                context.save(nil);
                println("Saved!!");
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
