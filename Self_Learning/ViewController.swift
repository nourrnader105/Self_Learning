//
//  ViewController.swift
//  Self_Learning
//
//  Created by mac on 23/01/2026.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var EmailContainerView: UIView!
    @IBOutlet weak var NameContainerView: UIView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        viewStyle(NameContainerView)
        viewStyle(EmailContainerView)
        viewStyle(saveButton)
        
        
        ImageView.layer.cornerRadius=ImageView.frame.width/2
        ImageView.clipsToBounds=true
        ImageView.layer.borderWidth=2
        ImageView.layer.borderColor=UIColor.gray.cgColor
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
        
       
        }
    @IBAction func SaveButton(_ sender: Any) {
        
        view.endEditing(true)
        
        print("userName \(NameTextField.text!)")
        print("userEmail\(EmailTextField.text!)")
        
        NameTextField.text=""
        EmailTextField.text=""
        
    }
    
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}

func viewStyle(_ view: UIView){
    view.layer.cornerRadius=10
    view.layer.masksToBounds=true
}

