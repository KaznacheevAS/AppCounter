//
//  ViewController.swift
//  AppCounter
//
//  Created by Anton Kaznacheev on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!
    @IBOutlet private weak var startCounterButtom: UIButton!
    @IBOutlet private weak var clearCounterButton: UIButton!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countLabel.text = "Значение счётчика: \(counter)"
        
        startCounterButtom.layer.cornerRadius = 15
        startCounterButtom.setTitle("START", for: .normal)
        
        clearCounterButton.layer.cornerRadius = 15
        clearCounterButton.tintColor = .white
        clearCounterButton.setTitle("CLEAR", for: .normal)
    }

    @IBAction private func didStartButton(_ sender: Any) {
        counter += 1
        
        countLabel.text = "Значение счётчика: \(counter)"
    }
    
    @IBAction private func didClearButton(_ sender: Any) {
        counter = 0
        countLabel.text = "Значение счётчика: \(counter)"
    }
    
}

