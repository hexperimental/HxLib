//
//  ViewController.swift
//  HxLib
//
//  Created by hexperimental on 04/18/2017.
//  Copyright (c) 2017 hexperimental. All rights reserved.
//

import UIKit
import HxLib

class ViewController: UIViewController {

    @IBOutlet weak var rememberButton:UIButton!
    @IBOutlet weak var rememberText:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // We can set some default values
        HxLocalStorage.defaultValue("Type Something", forKey: "valueKey")
        HxLocalStorage.defaultValue(1, forKey: "otherValue")
        
        
        //Reading values  // opts
        print("String >", HxLocalStorage.read("valueKey"))
        print("Int >", HxLocalStorage.read("otherValue"))
        
        if let data = HxLocalStorage.read("otherValue") as? String {
            print("Never1", data)
        }
        
        if let data = HxLocalStorage.read("missingValueKey") {
            print("Never2", data)
        }
        
        //Lazy unwrapping
        print("String! >",HxLocalStorage.stringValue(forKey: "valueKey"))
        print("int! ",HxLocalStorage.intValue(forKey: "otherValue"))
        
        rememberText.text = HxLocalStorage.stringValue(forKey: "valueKey")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonTap() {
        HxLocalStorage.write(rememberText.text!, forKey: "valueKey")
        HxLocalStorage.write(123, forKey: "otherValue")
    }

}

