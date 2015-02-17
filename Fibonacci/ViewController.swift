//
//  ViewController.swift
//  Fibonacci
//
//  Created by Michael Litman on 2/17/15.
//  Copyright (c) 2015 Michael Litman. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var textView : UITextView!
    @IBOutlet var includesZeroSwitch : UISwitch!
    @IBOutlet var numberOfItemsLabel : UILabel!
    @IBOutlet var numberOfItemsSlider : UISlider!
    @IBOutlet var includesZeroLabel : UILabel!
    
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    @IBAction func updateFibonacciSequence()
    {
        var includeZeros:Bool
        if(includesZeroSwitch.on)
        {
            includesZeroLabel.text = "YES"
            includeZeros = true
        }
        else
        {
            includesZeroLabel.text = "NO"
            includeZeros = false
        }
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includeZeros)
        
        numberOfItemsLabel.text = toString(Int(numberOfItemsSlider.value))
        textView.text = toString(fibonacciSequence.values)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        textView.text = toString(fibonacciSequence.values)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

