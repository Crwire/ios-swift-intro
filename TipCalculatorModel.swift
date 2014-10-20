//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Charles Rice on 20/10/2014.
//  Copyright (c) 2014 Cake Solutions. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total:Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printPossibleTips() {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        for possibleTip in possibleTipsInferred{
            println("Counted \(possibleTipsInferred.count) time(s) \n")
            println("\(possibleTip*100): \(calcTipWithTipPct(possibleTip)))")
        }
    }
    
    func returnPossibleTips() -> [Int: Double]{
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}