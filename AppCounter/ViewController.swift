//
//  ViewController.swift
//  AppCounter
//
//  Created by Anton Kaznacheev on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!
    @IBOutlet private weak var buttomSettings: UIButton!
    @IBOutlet private weak var clearButton: UIButton!
    
    private var isCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "Значение счётчика: \(isCount)"
        
        buttomSettings.layer.cornerRadius = 15
        buttomSettings.setTitle("START", for: .normal)
        
        clearButton.layer.cornerRadius = 15
        clearButton.tintColor = .white
        clearButton.setTitle("CLEAR", for: .normal)
    }

    // MARK:
    @IBAction private func Button(_ sender: Any) {
        isCount += 1
        
        countLabel.text = "Значение счётчика: \(isCount)"
    }
    
    @IBAction private func Clear(_ sender: Any) {
        countLabel.text = "Значение счётчика: 0"
    }
    
}

