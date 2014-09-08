//
//  Battle.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/9/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//
import UIKit

class Battle{
    
    //item counters
    var padding:Bool;
    var sword:Bool;
    var longsword:Bool;
    var leather:Bool;
    var scale:Bool;
    var plate:Bool;
    var demonS:Bool;
    var dragonS:Bool;
    var ice:Bool;
    var platinumA:Bool;
    var poison:Bool;
    var slayer:Bool;
    var newMonster:Bool;
    var playerDead:Bool;
    var player:Player;
    
    
    var highScore:HighScore[] = [];
    var move:Int = 0;
    
    //dialog strings
    var fightDialog:String = "";
    var itemDialog:String = "";
    var dialog:String = "";
    var defeatDialog:String = "";
    var gotPotion:Bool = false;
    
    
    init(currentPlayer:Player){
        padding = false;
        sword = false;
        longsword = false;
        leather = false;
        scale = false;
        plate = false;
        demonS = false;
        dragonS = false;
        ice = false;
        platinumA = false;
        poison = false;
        slayer = false;
        player = currentPlayer;
        newMonster = false;
        playerDead = false;
    }
    
    func createMonster()->(Monster){
        var monster:Monster;
        var monsterSlot:Monster[] = [
            Zombie(),
            Goblin(),
            Kobold(),
            Skeleton(),
            Orc(),
            Lizardman(),
            Ogre(),
            Mummy(),
            Vampire(),
            Lilith(),
            Demon(),
            Wyvern(),
            Chimera(),
            GiantWorm(),
            WereWolf(),
            DoppleGanger(player: player),
            GiantSpider(),
            GreenDragon(),
            SeaSerpant(),
            Horror(),
            RedDragon(),
            IceGiant(),
            BlackDragon(),
            PitFiend(),
            PlatinumGolem(),
            Titan(),
            Behemoth(),
            ChaosFiend(),
            TRex(),
            Hydra(),
            Shadow(),
            GoldDragon()];
       
        var slot:UInt32 = 4;
        
        if(50 < player.totalExp && player.totalExp < 200){
            slot = 7;
        }
        if (200 < player.totalExp && player.totalExp < 500){
            slot = 10;
        }
        if (500 < player.totalExp && player.totalExp < 950){
            slot = 13;
        }
        if (950 < player.totalExp && player.totalExp < 2300 ){
            slot = 16;
        }
        if (2300 < player.totalExp && player.totalExp < 4250){
            slot = 19;
        }
        if (4250 < player.totalExp && player.totalExp < 7300){
            slot = 22;
        }
        if (7300 < player.totalExp && player.totalExp < 10350){
            slot = 25;
        }
        if (10350 < player.totalExp && player.totalExp < 13900){
            slot = 28;
        }
        if(13900 < player.totalExp){
            slot = 32
        }
        
        var randomBattle:UInt32 = arc4random() % slot;
        println("\(randomBattle)");
        
        if(200 < player.totalExp && randomBattle < 2){
            if (500 < player.totalExp && randomBattle < 4){
                if (950 < player.totalExp && randomBattle < 6){
                    if (2300 < player.totalExp && randomBattle < 8){
                        if (4250 < player.totalExp && randomBattle < 10){
                            if (5300 < player.totalExp && randomBattle < 12){
                                if (7350 < player.totalExp && randomBattle < 14){
                                    if (10400 < player.totalExp && randomBattle < 16){
                                        randomBattle += 9;
                                    }
                                    else{
                                        randomBattle += 11;
                                    }
                                }
                                else{
                                    randomBattle += 11;
                                }
                            }
                            else{
                                randomBattle += 10;
                            }
                        }
                        else{
                            randomBattle += 8;
                        }
                    }
                    else{
                        randomBattle += 6;
                    }
                }
                else{
                    randomBattle += 4;
                }
            }
            else{
                randomBattle += 2;
            }
        }
        
        
        
        monster = monsterSlot[0] as Monster;
        switch(randomBattle){
            
            
        case 1:
            monster = monsterSlot[0] as Monster;
            break;
            
        case 2:
            monster = monsterSlot[1] as Monster;
            break;
            
        case 3:
            monster = monsterSlot[2] as Monster;
            break;
            
        case 4:
            monster = monsterSlot[3] as Monster;
            break;
            
        case 5:
            monster = monsterSlot[4] as Monster;
            break;
            
        case 6:
            monster = monsterSlot[5] as Monster;
            break;
            
        case 7:
            monster = monsterSlot[6]  as Monster;
            break;
            
        case 8:
            monster = monsterSlot[7] as Monster;
            break;
            
        case 9:
            monster = monsterSlot[8] as Monster;
            break;
            
        case 10:
            monster = monsterSlot[9] as Monster;
            break;
            
        case 11:
            monster = monsterSlot[10] as Monster;
            break;
            
        case 12:
            monster = monsterSlot[11] as Monster;
            break;
            
        case 13:
            monster = monsterSlot[12] as Monster;
            break;
            
        case 14:
            monster = monsterSlot[13] as Monster;
            break;
            
        case 15:
            monster = monsterSlot[14] as Monster;
            break;
            
        case 16:
            monster = monsterSlot[15] as Monster;
            break;
            
        case 17:
            monster = monsterSlot[16] as Monster;
            break;
            
        case 18:
            monster = monsterSlot[17] as Monster;
            break;
            
        case 19:
            monster = monsterSlot[18] as Monster;
            break;
            
        case 20:
            monster = monsterSlot[19] as Monster;
            break;
            
        case 21:
            monster = monsterSlot[20] as Monster;
            break;
            
        case 22:
            monster = monsterSlot[21] as Monster;
            break;
            
        case 23:
            monster = monsterSlot[22] as Monster;
            break;
            
        case 24:
            monster = monsterSlot[23] as Monster;
            break;
            
        case 25:
            monster = monsterSlot[24] as Monster;
            break;
            
        case 26:
            monster = monsterSlot[25] as Monster;
            break;
            
        case 27:
            monster = monsterSlot[26] as Monster;
            break;
        default:
            break;
        }
        return monster;
    }
    
    func attack(player: Player, monster: Monster){
        move = 1;
        var pDamage = player.weapon + player.strength;
        var pRepel = player.armor;
        mdecide(player,monster: monster,pDamage: pDamage,pRepel: pRepel);
    }
    
    func defend(player: Player,monster: Monster){
        move = 2;
        var monPlus = (random()%(3 - 1))+1;
        if(monPlus == 2){
            monster.mhp += 1;
        }
        player.temphp += 1;
        var pRepel = player.defense + player.armor;
        var pDamage = 0;
        mdecide(player,monster: monster,pDamage: pDamage,pRepel: pRepel);
    }
    
    func mattack(player: Player,monster: Monster,pDamage : Int,pRepel: Int){
        var mDamage = monster.mweapon + monster.mstrength;
        var mRepel = monster.marmor;
        resolve(player,monster: monster,pDamage: pDamage,pRepel: pRepel,mDamage: mDamage,mRepel: mRepel);
    }
    
    func mdefend(player: Player,monster: Monster,pDamage : Int,pRepel: Int){
        var mDamage = 0;
        var mRepel = monster.marmor + monster.mdefense;
        resolve (player,monster: monster,pDamage: pDamage,pRepel: pRepel,mDamage: mDamage,mRepel: mRepel);
    }
    
    func mdecide(player: Player,monster: Monster,pDamage : Int,pRepel : Int){
        if (move == 1){
            var act = (random()%(2 - 1))+1;
            if (act == 1 ){
                mattack(player,monster: monster,pDamage: pDamage,pRepel: pRepel);
            }
            if (act == 2){
                mdefend(player,monster: monster,pDamage: pDamage,pRepel: pRepel);
            }
        }
        else{
            mattack(player,monster: monster,pDamage: pDamage,pRepel: pRepel);
        }
    }
    
    func usePotion(player:Player,monster: Monster){
        move = 3;
        if(player.potions == 0){
            var alert4 = UIAlertView()
            alert4.title = "No Potions"
            alert4.message = "Buy more potions next time!";
            alert4.addButtonWithTitle("Ok")
            
            
            alert4.show()
        }
        if(player.potions > 0){
            player.temphp = player.hp;
            player.potions--;
            var pDamage = 0;
            var pRepel = player.armor;
            mdecide(player,monster: monster,pDamage: pDamage,pRepel: pRepel);
        }
    }

    
    func resolve(player: Player,monster: Monster,pDamage : Int,pRepel: Int,mDamage: Int,mRepel: Int){
        var pTotal = mDamage - pRepel;
        if (pTotal < 0){
            pTotal = 0;
        }
        var mTotal = pDamage - mRepel;
        if (mTotal < 0){
            mTotal = 0;
        }
        player.temphp -= pTotal;
        monster.mhp -= mTotal;
        
        if(player.hp < player.temphp){
            player.temphp = player.hp;
        }
        if(player.temphp <= 0){
            defeat(player, monster: monster);
        }
        else if(monster.mhp <= 0){
            victory(player, monster: monster)
        }
        
    }
    
    func GameEnd(player:Player,monster:Monster){
        
        var gameEndDialog:String;
        
        player.score = (player.scmod + 40) * player.totalExp;
        
        gameEndDialog = "After slaying that last monster, the announcer aplauds you and says \"You are a valiant warrior, you have won your freedom\", CONGRATS on beating Swift Action!!!!!!, your score was \(player.score)";
        
        
        monster.mname = "Old Age";
        var scoreLine = playerScore(player: player,monster: monster);
        scoreLine.name = player.name;
        scoreLine.score = player.score;
        scoreLine.level = player.level;
        scoreLine.totalExp = player.totalExp;
        scoreLine.mname = monster.mname;
        
        highScore.append(scoreLine);
    }
    
    func defeat(player:Player,monster:Monster){
        var defeatDialog:String;
        var endScoreDialog:String;
        
        
        
        player.score = (player.scmod + player.level) * player.totalExp;
        
        defeatDialog = "You lay on the ground taking your last breathe, as the \(monster.mname) makes its final blow to you";
        
        var alert = UIAlertView()
        alert.title = "You are Dead"
        alert.message = defeatDialog;
        alert.addButtonWithTitle("Ok")
        
        
        alert.show()
        
        playerDead = true;
        
        
        
        
        var scoreLine = playerScore(player: player,monster: monster);
        scoreLine.name = player.name;
        scoreLine.score = player.score;
        scoreLine.level = player.level;
        scoreLine.totalExp = player.totalExp;
        scoreLine.mname = monster.mname;
    
    }
    
    func victory(player: Player,monster: Monster){
        
        
        player.scmod += monster.scmod;
        
        player.totalExp += monster.mexp;
        
        player.temphp += 5;
        
        if (player.hp < player.temphp){
            player.temphp = player.hp;
        }
        

        
        for var xp = 15, lvl = 1 ;xp < 82365 && lvl < 61;{
            if (xp <= player.totalExp && player.level == lvl){
                
                
                var alert3 = UIAlertView()
                alert3.title = "Level Up"
                alert3.message = "+1 to Strength and Defense, +10 to health Points";
                alert3.addButtonWithTitle("Ok")
                
                
                alert3.show()
                
                
                player.hp += 10;
                player.temphp += 10;
                player.strength++;
                player.defense++;
                player.level++;
            }
            xp += (60 * lvl);
            lvl++;
        }
        
        newMonster = true;
        player.kills++;

        var getItem = (arc4random()%100)+1;
        var getSpecial = (arc4random()%100)+1;
        if(80 < getItem){
            
            player.potions++;
            
            var alert6 = UIAlertView()
            alert6.title = "You find a Potion"
            alert6.message = "You got a potion this will refill your health";
            alert6.addButtonWithTitle("Ok")
            
            
            alert6.show()
        }
        if (70 < getItem){
            switch (monster.mitem){
            case "ice":
                if (80 < getSpecial){
                        itemDialog = "You slay the \(monster.mname),you are surrounded by frost, for a moment you are very cold and as it subsides you feel stronger";
                        player.strength++
                }
                self.ice = true
                break;
            case "poison":
                if (80 < getSpecial){
                    if (poison == false){
                        itemDialog = "You stab the \(monster.mname) leaveing its poisoness blood on your weapon";
                        player.weapon++;
                    }
                }
                self.poison = true
                break;
                
            case "vampire":
                    if (70 < getSpecial){
                        itemDialog = "Drinking the vampires blood you feel life rushing through you, you find it easier to breathe, and feel more flexible.";
                        player.hp += 5;
                    }
                    else {
                        itemDialog = "You drink the vampires blood, just out of curiousity, you feel weaker. You can feel that your body, is starting to reject the blood, felling the pressure in your stomach you throw up.";
                        player.hp -= 5;
                    }
                break;
                
            case "potion":
                itemDialog = "You got a potion this will refill your health";
                player.potions++;
                break;
                
                
            case "padding":
                if(self.padding == false){
                    itemDialog = "You pick the padded armor from the corpse of the \(monster.mname) and decide to put it on";
                    player.aEquiped = "Padded Armor";
                    player.armor++;
                    self.padding = true;
                }
                break;
                
            case "sword":
                if(self.sword == false){
                    itemDialog = "You found a short Sword, dropping your \(player.weapon), you pick up the Short Sword";
                    player.wEquiped = "Short Sword";
                    player.weapon++;
                }
                sword = true;
                if (self.poison == true){
                    self.poison = false;
                    player.weapon--
                }
                break;
                
            case "long":
                if(self.longsword == false){
                    itemDialog = "You pick up the long sword from the dead body";
                    player.wEquiped = "Long Sword";
                    player.weapon = 3;
                }
                sword = true;
                longsword = true;
                if (self.poison == true){
                    self.poison = false;
                }
                break;
                
            case "leather":
                if(self.leather == false){
                    itemDialog = "You found some leather armor, looking at what you got, you swap gear";
                    player.aEquiped = "Leather Armor";
                    player.armor = 3;
                }
                self.padding = true;
                self.leather = true;
                break;
                
            case "scale":
                if(self.scale == false){
                    itemDialog = "You pull the hide of the \(monster.mname) and made some scale armor";
                    player.aEquiped = "Scale Armor";
                    player.armor = 4;
                }
                self.padding = true;
                self.leather = true;
                self.scale = true;
                break;
                
            case "plate":
                if (self.plate == false){
                    itemDialog = "You look at the dead DoppleGanger that looked like you, you notice he is wearing better armor than you, you get plate armor";
                    player.aEquiped = "Plate Mail";
                    player.armor = 5;
                }
                self.padding = true;
                self.leather = true;
                self.plate = true;
                self.scale = true;
                break;
            case "demon":
                if (self.demonS == false){
                    itemDialog = "You watch as the demon wither away on the ground, but noticing that its blade is left, you get the Demon Sword!";
                    player.wEquiped = "Demon Sword";
                    player.weapon = 4;
                }
                self.sword = true;
                self.longsword = true;
                self.demonS = true;
                if (self.poison == true){
                    self.poison = false;
                }
                break;
            case "dragon":
                if(self.dragonS == false){
                    itemDialog = "You have slain a dragon, taking one of his teeth you have fashioned it into a strong blade, you have made the Dragon Sword!!";
                    player.wEquiped = "Dragon Sword";
                    player.weapon = 5;
                }
                self.sword = true;
                self.longsword = true;
                self.demonS = true
                self.dragonS = true;
                if (self.poison == true){
                    poison = false;
                }
                break;
            case "platinum":
                if (self.platinumA == false){
                    itemDialog = "The Golem fell apart among the rubble you see that its frame is still intact, you get some platinum armor";
                    player.aEquiped = "Platinum Mail";
                    player.armor = 6;
                }
                self.padding = true;
                self.leather = true;
                self.plate = true;
                self.scale = true;
                self.platinumA = true;
                break;
            case "slayer":
                if (self.slayer == false){
                    itemDialog = "The Behemoth falls to the ground mustering your strength, you lift its blade, getting a good handle on it, you have obtained the Slayer, a big godly sword";
                    player.wEquiped = "Slayer";
                    player.weapon = 6;
                }
                self.sword = true;
                self.longsword = true;
                self.demonS = true
                self.dragonS = true;
                self.slayer = true;
                if (poison == true){
                    self.poison = false;
                }
            default:
                break;
            }
            var carry = monster.carry;
            
            var alert5 = UIAlertView()
            alert5.title = "You got a " + carry;
            alert5.message = itemDialog;
            alert5.addButtonWithTitle("Ok")
            
            
            alert5.show()
        }
    }
}











