//
//  HighScoreTableView.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/13/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit
import CoreData


class HighScoreTable:UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var playerChar:Player = Player();
    var scores:HighScore[] = [];
    var i:Int = 0;
    var nib:UINib = UINib(nibName: "highscoreCustom", bundle: nil);

    @IBOutlet var appsTableView: UITableView
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return scores.count;
    }
    
    @IBAction func removeScores(sender: UIButton) {
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as AppDelegate);
        let context:NSManagedObjectContext = appDel.managedObjectContext;
        
        let request = NSFetchRequest(entityName: "Highscores");
        request.returnsObjectsAsFaults = false;
        
        var results:NSArray = context.executeFetchRequest(request, error: nil);
        
        scores = [beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores(),beginScores()];
        
        if(results.count > 0){
            
            for (var i = 0;i < 15;i++){
                var item : Highscores = results[i] as Highscores;
                
                item.playerName = scores[i].name;
                item.monsterName = scores[i].mname;
                item.level = scores[i].level;
                item.score = scores[i].score;
            }
        }
        
        context.save(nil);
        println("Saved!!");
        
        self.appsTableView.reloadData();
    }
    
    var p = 0;
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        tableView.registerNib(nib, forCellReuseIdentifier: "scoreCell");
        var cell:tableCell = tableView.dequeueReusableCellWithIdentifier("scoreCell", forIndexPath: indexPath) as tableCell;
        
        
        cell.characterNameScoreLabel.text = scores[indexPath.row].name;
        cell.levelLabel.text = "\(scores[indexPath.row].level)";
        cell.scoreLabel.text = "\(scores[indexPath.row].score)";
        cell.killedByImage.image = UIImage(named: "person30.png");
        return cell;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        if(segue!.identifier){
            var name = segue!.identifier;
            if (name.compare("backToMain") == 0){
                var view:ViewController = segue!.destinationViewController as ViewController;
                view.highScore = self.scores;
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView:UITableView, heightForRowAtIndexPath:NSIndexPath) -> CGFloat{
        return 44;
    }

}