//
//  ViewController.swift
//  Task2
//
//  Created by 鈴木秀一郎 on 2021/05/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    var calcOperator = "+"
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        
        calcOperator = sender.titleForSegment(at: sender.selectedSegmentIndex)!
    
    }
    
    
    @IBAction func calclateButton(_ sender: UIButton) {
        
        let textArray: [UITextField] = [textField1, textField2]
        let calcArray = textArray
            .map{ $0.text ?? "" }
            .map{ Int($0) ?? 0 }
        
        let calcText1 = calcArray[0]
        let calcText2 = calcArray[1]
        
        
        let result: String?
        
        switch calcOperator {
        case "+":
            result = String(calcText1 + calcText2)
        case "-":
            result = String(calcText1 - calcText2)
        case "×":
            result = String(calcText1 * calcText2)
        case "÷":
            if calcText2 == 0 {
                result = "0以外の数値で値を割ってください"
            } else {
                result = String(calcText1 / calcText2)
            }
        default:
            result = "正しく計算されませんでした"
        }
        
        resultLabel.text = result ?? ""
        
    }
    
}

