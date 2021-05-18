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
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    @IBAction func calclateButton(_ sender: UIButton) {
        
        let textArray: [UITextField] = [textField1, textField2]
        let calcArray = textArray
            .map{ $0.text ?? "" }
            .map{ Int($0) ?? 0 }
        
        let number1 = calcArray[0]
        let number2 = calcArray[1]
        
        
        let result: String?
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            result = String(number1 + number2)
        case 1:
            result = String(number1 - number2)
        case 2:
            result = String(number1 * number2)
        case 3:
            if number2 == 0 {
                result = "0以外の数値で値を割ってください"
            } else {
                result = String(number1 / number2)
            }
        default:
            result = "正しく計算されませんでした"
        }
        
        resultLabel.text = result ?? ""
    }
}
