//
//  ViewController.swift
//  is it prime app
//
//  Created by Aamir Shah on 11/12/16.
//  Copyright © 2016 Aamir Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var output: UILabel!
    @IBAction func primeCheckTapped(_ sender: Any) {
        let userText = userInput.text
        if let input = userText {
            let uinput = Int(input)
            if let number = uinput {
                let isPrime = isItPrime(num: number)
                if isPrime {
                    output.text = "🎆 Yes \(number) is a prime number 🎆"
                } else {
                    output.text = "🤗 \(number) is not a prime number 🤗"
                }
            }
        } else {
            output.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func isItPrime(num: Int) -> Bool {
        if num == 2 {
            return true
        }
        if num == 3{
            return true
        }
        
        if num % 2 == 0 {
            return false
        }
        
        if num % 3 == 0 {
            return false
        }
        
        var i = 5, w = 2
        while i * i <= num {
            if num % i == 0 {
                return false
            }
            
            i += w
            w = 6 - w
        }
        
        return true
    }
}

