//
//  ViewController.swift
//  CoolCounter
//
//  Created by biltuevs on 08/02/2020.
//  Copyright © 2020 ilyabiltuev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterPickerView: UIPickerView!
    
    private var count: Int = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickButtonTouched() {
        
        count += 1
        
        let currentCount = String(count)
        
        let digits = currentCount.map { String($0) }.reversed()
        
        for (index, digit) in digits.enumerated() {
            
            let row = Int(digit)!
                    
            let columnMaxIndex = 3
            
            let columnToUpdate = columnMaxIndex - index
            
            counterPickerView.selectRow(row, inComponent: columnToUpdate, animated: true)
        }
    }
}

extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return 10
    }
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return String(row)
    }
    
}
