//
//  ViewController.swift
//  project16-unit-converter
//
//  Created by Kyoungchin Seo on 2015. 7. 16..
//  Copyright © 2015년 nhnnext. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func textFieldReturn(sender: AnyObject) {
        sender.resignFirstResponder()
    }
    
    @IBAction func convertTemp(sender: AnyObject) {
        let fahrenheit = Double(tempText.text!)
        let celsius = (fahrenheit! - 32)/1.8
        let resultText = "Celsius \(celsius)"
        resultLabel.text = resultText
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        tempText.endEditing(true)
    }

    

}

