//
//  SortScores.swift
//  SwiftAction
//
//  Created by Jakob Hartman on 6/15/14.
//  Copyright (c) 2014 Jakob Hartman. All rights reserved.
//

import Foundation

class sortScores{
    var scoreOne:HighScore = beginScores();
    var count:Int = 0;
    
    func sort(scores:HighScore[]) -> (HighScore[]){
        for(count;count < scores.count;count++){
            for(var i = 0;i < scores.count;i++){
                if(scores[count].score > scores[i].score){
                    scoreOne = scores[count];
                    scores[count] = scores[i];
                    scores[i] = scoreOne;
                }
            }
        }
        return scores;
    }
}