// Playground - noun: a place where people can play

import UIKit

//Tip Calculator Class
class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total:Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
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

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()