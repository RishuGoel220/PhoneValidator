//
//  validatorView.swift
//  NumberDialer
//
//  Created by Rishu Goel on 09/08/16.
//  Copyright © 2016 Rishu Goel. All rights reserved.
//

import UIKit
import PhoneNumberKit

class validatorView: UIViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func pressed1(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("1")
    }
    @IBAction func pressed2(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("2")
    }
    @IBAction func pressed3(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("3")
    }
    @IBAction func pressed4(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("4")
    }
    @IBAction func pressed5(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("5")
    }
    @IBAction func pressed6(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("6")
    }
    @IBAction func pressed7(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("7")
    }
    @IBAction func pressed8(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("8")
    }
    @IBAction func pressed9(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("9")
    }
    @IBAction func validationButton(sender: UIButton) {
        let phoneNumber : PhoneNumber!
        do{
            let phoneNumber = try PhoneNumber(rawNumber: phoneTextField.text!)
            if phoneNumber.isValidNumber == true{
                
                //var phonenumber: String = "tel://".stringByAppendingString(phoneTextField.text!) // titleLabel.text has the phone number.
                //UIApplication.sharedApplication().openURL(NSURL(string:phonenumber)!)
                
                let alertController = UIAlertController(title: "Valid Number", message:
                    "Valid Number", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
            else{
                let alertController = UIAlertController(title: "Invalid Number", message:
                    "InValid Number", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }
        catch {
            print("Generic parser error")
            let alertController = UIAlertController(title: "Invalid Number", message:
                "InValid Number", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }

        
        
    }
    @IBAction func pressed0(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("0")
        
    }
    @IBAction func pressedplus(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("+")
    }
    @IBAction func pressedDash(sender: UIButton) {
        phoneTextField.text = phoneTextField.text?.stringByAppendingString("-")
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
