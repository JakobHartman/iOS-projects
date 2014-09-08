

import UIKit
import CoreData

class GameDefaults: NSManagedObject {
    @NSManaged var bookMaster:String;
    @NSManaged var bookSimple:String;
    @NSManaged var defDice6:String;
    @NSManaged var defDice12:String;
    @NSManaged var firstTimeRunning:String;
    @NSManaged var hpDice40:String;
    @NSManaged var hpDice100:String;
    @NSManaged var pots10:String;
    @NSManaged var pots20:String;
    @NSManaged var pots40:String;
    @NSManaged var strDice6:String;
    @NSManaged var strDice12:String;
    @NSManaged var timeStamp:NSDate;
}
