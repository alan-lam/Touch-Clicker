//
//  ViewController.swift
//  Touch Counter
//
//  Created by Alan Lam on 2/3/19.
//  Copyright © 2019 Alan Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colorFlag = 0
    var touchCounter = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func colorButton(_ sender: Any) {
        if colorFlag == 0 {
            self.view.backgroundColor = .black
            countLabel.textColor = .green
            titleLabel.textColor = .green
            colorFlag = 1
        }
        else {
            self.view.backgroundColor = .white
            countLabel.textColor = .black
            titleLabel.textColor = .black
            colorFlag = 0
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        touchCounter = 0
        countLabel.text = "Count = \(touchCounter)"
    }
    
    @IBAction func touchButton(_ sender: Any) {
        touchCounter += 1
        countLabel.text = "Count = \(touchCounter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

