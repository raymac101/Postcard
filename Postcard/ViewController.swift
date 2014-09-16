//
//  ViewController.swift
//  Postcard
//
//  Created by Ray MacDonald on 2014-09-12.
//  Copyright (c) 2014 Reckage Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton)
    {
        // Code will evaluate when we press the button
        messageLabel.text = enterAMessageTextField.text
        messageLabel.hidden = false
        enterAMessageTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

