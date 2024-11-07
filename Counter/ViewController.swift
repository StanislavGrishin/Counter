//
//  ViewController.swift
//  Counter
//
//  Created by Станислав Гришин on 05.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var counterValueButton: UIButton!
    
    @IBOutlet private weak var counterValueLabel: UILabel!
   
    @IBOutlet private weak var counterValueLabel2: UILabel!
    
    @IBOutlet private weak var plusValueButton: UIButton!
    
    @IBOutlet private weak var minusValueButton: UIButton!
    
    @IBOutlet private weak var resetButton: UIButton!
    
    @IBOutlet private weak var historyTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterValueLabel.text = "Значение счётчика: 0"
        counterValueLabel2.text = "Значение счётчика: 0"
        historyTextView.text = "История изменений:\n"
    }

    @IBAction private func buttonDidTap(_ sender: Any) {
        count += 1
        counterValueLabel.text = "Значение счётчика: \(count)"
    }
    
    @IBAction private func buttonPlusTap(_ sender: Any) {
        count2 += 1
        counterValueLabel2.text = "Значение счётчика: \(count2)"
        historyTextView.text += "\(getDate()) Значение изменено на +1\n"
    }
    
    @IBAction private func buttonMinusTap(_ sender: Any) {
        
        if count2 > 0 {
            count2 -= 1
            counterValueLabel2.text = "Значение счётчика: \(count2)"
            historyTextView.text += "\(getDate()) Значение изменено на -1\n"
        } else {
            historyTextView.text += "\(getDate()) Попытка уменьшить значение счётчика ниже 0\n"
        }
        
    }
    @IBAction private func buttonResetTap(_ sender: Any) {
        count2 = 0
        counterValueLabel2.text = "Значение счётчика: \(count2)"
        historyTextView.text += "\(getDate()) Значение сброшено\n"
    }
    
    var count:Int = 0
    var count2:Int = 0
    let date = Date()
    
    func getDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "[dd-MM-yyyy || HH:mm:ss]"
        return dateFormatter.string(from: Date())
    }
    
}

