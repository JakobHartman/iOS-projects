//
//  CharacterSheetView.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/12/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit

class CharacterSheetView:UIViewController{
    
    var playerChar:Player = Player();
    var cmonster:Monster = Zombie();
    var highScores:HighScore[] = [];
    var fromCharSheet:Bool = true;
    var battleData = Battle(currentPlayer: Player());
    
    @IBOutlet var Charactername : UILabel = nil
    @IBOutlet var tempHpLabel : UILabel = nil
    @IBOutlet var hpLabel : UILabel = nil
    @IBOutlet var LevelLabel : UILabel = nil
    @IBOutlet var weaponPlusLabel : UILabel = nil
    @IBOutlet var weaponNameLabel : UILabel = nil
    @IBOutlet var armorPlusLabel : UILabel = nil
    @IBOutlet var armorNameLabel : UILabel = nil
    @IBOutlet var strengthLabel : UILabel = nil
    @IBOutlet var defenseLabel : UILabel = nil
    @IBOutlet var attackLabel : UILabel = nil
    @IBOutlet var armorClassLabel : UILabel = nil
    @IBOutlet var expLabel : UILabel = nil
    @IBOutlet var scoreLabel : UILabel = nil
    @IBOutlet var levelLabel : UILabel = nil
    @IBOutlet var potionsLabel : UILabel = nil
    @IBOutlet var killsLabel : UILabel = nil
    
    
    
    override func viewDidLoad() {
        var attack = playerChar.weapon + playerChar.strength;
        var armorClass = playerChar.armor + playerChar.defense;
        var score = (playerChar.scmod + playerChar.level) * playerChar.totalExp;
        
        LevelLabel.text = "\(playerChar.level)"
        Charactername.text = playerChar.name;
        tempHpLabel.text = "\(playerChar.temphp)";
        hpLabel.text = "\(playerChar.hp)";
        weaponPlusLabel.text = "\(playerChar.weapon)";
        weaponNameLabel.text = "\(playerChar.wEquiped)";
        armorPlusLabel.text = "\(playerChar.armor)";
        armorNameLabel.text = "\(playerChar.aEquiped)";
        defenseLabel.text = "\(playerChar.defense)"
        strengthLabel.text = "\(playerChar.strength)"
        attackLabel.text = "\(attack)";
        armorClassLabel.text = "\(armorClass)";
        expLabel.text = "\(playerChar.totalExp)";
        scoreLabel.text = "\(score)";
        potionsLabel.text = "\(playerChar.potions)"
        killsLabel.text = "\(playerChar.kills)";
        
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if(segue!.identifier){
            var name = segue!.identifier;
            if (name.compare("goToGame2") == 0){
                var view:Game = segue!.destinationViewController as Game;
                view.playerChar = self.playerChar;
                view.nmonster = self.cmonster;
                view.HighScores = self.highScores;
                view.charSheet = self.fromCharSheet;
                view.battle = self.battleData;
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
