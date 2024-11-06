//
//  ViewController.swift
//  Counter
//
//  Created by Станислав Гришин on 05.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterValueButton: UIButton!
    
    @IBOutlet weak var counterValueLabel: UILabel!
   
    @IBOutlet weak var counterValueLabel2: UILabel!
    
    @IBOutlet weak var plusValueButton: UIButton!
    
    @IBOutlet weak var minusValueButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var historyTextView: UITextView!
    
    var count:Int = 0
    var count2:Int = 0
    let date = Date()
    
    func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "[dd-MM-yyyy || HH:mm:ss]"
        return dateFormatter.string(from: Date())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterValueLabel.text = "Значение счётчика: 0"
        counterValueLabel2.text = "Значение счётчика: 0"
        historyTextView.text = "История изменений:\n"
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        counterValueLabel.text = "Значение счётчика: \(count)"
    }
    
    @IBAction func buttonPlusTap(_ sender: Any) {
        count2 += 1
        counterValueLabel2.text = "Значение счётчика: \(count2)"
        historyTextView.text += "\(getDate()) Значение изменено на +1\n"
    }
    
    @IBAction func buttonMinusTap(_ sender: Any) {
        
        if count2 > 0 {
            count2 -= 1
            counterValueLabel2.text = "Значение счётчика: \(count2)"
            historyTextView.text += "\(getDate()) Значение изменено на -1\n"
        } else {
            historyTextView.text += "\(getDate()) Попытка уменьшить значение счётчика ниже 0\n"
        }
        
    }
    @IBAction func buttonResetTap(_ sender: Any) {
        count2 = 0
        counterValueLabel2.text = "Значение счётчика: \(count2)"
        historyTextView.text += "\(getDate()) Значение сброшено\n"
    }
    
}

