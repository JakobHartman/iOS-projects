//
//  storeView.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/23/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import UIKit




class storeView: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var nib:UINib = UINib();
    var Products:[String] =
    [
        "Defense D3",
        "Defense D6",
        "Defense D12",
        "Strength D3",
        "Strength D6",
        "Strength D12",
        "Health D20",
        "Health D40",
        "Health D100",
        "Starting Potions + 5",
        "Starting Potions + 25",
        "Starting Potions + 60"
    ];
    var Descriptions:[String] =
    [
        "A Dice 3 Roller, chance of getting 1 to 3 pts added to your starting defense",
        "A Dice 6 Roller, chance of getting 1 to 6 pts added to your starting defense",
        "A Dice 12 Roller, chance of getting 1 to 12 pts added to your starting defense",
        "A Dice 3 Roller, chance of getting 1 to 3 pts added to your starting strength",
        "A Dice 6 Roller, chance of getting 1 to 6 pts added to your starting strength",
        "A Dice 12 Roller, chance of getting 1 to 12 pts added to your starting strength",
        "A Dice 20 Roller, chance of getting 1 to 20 pts added to your starting health",
        "A Dice 40 Roller, chance of getting 1 to 40 pts added to your starting health",
        "A Dice 100 Roller, chance of getting 1 to 100 pts added to your starting health",
        "Start each game with 10 Potions in your inventory",
        "Start each game with 30 Potions in your inventory",
        "Start each game with 65 Potions in your inventory"
    ];
    
    var Prices:[String] =
    [
        "Free",
        "$0.99",
        "$1.99",
        "Free",
        "$0.99",
        "$1.99",
        "Free",
        "$1.99",
        "$2.99",
        "$0.99",
        "$1.99",
        "$2.99",
    ];

    override func viewDidLoad() {
        nib = UINib(nibName: "storeCustom", bundle: nil);
        super.viewDidLoad()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        
        tableView.registerNib(nib, forCellReuseIdentifier: "storeCell");
       
    
        
        var cell:storeCellsTableViewCell = tableView.dequeueReusableCellWithIdentifier("storeCell", forIndexPath: indexPath) as storeCellsTableViewCell;
        
        
        cell.productDescription.text = Descriptions[indexPath.row];
        cell.productName.text = Products[indexPath.row];
        cell.priceLabel.text = Prices[indexPath.row];
        
        switch(indexPath.row){
        case 0:
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark;
        case 3:
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark;
        case 6:
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark;
            break;
        default:
            cell.accessoryType = UITableViewCellAccessoryType.None;
            break;
        }
        
        
        
        return cell;
    }
    func tableView(tableView:UITableView, heightForRowAtIndexPath:NSIndexPath) -> CGFloat{
        return 91;
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return Products.count;
    }
}
