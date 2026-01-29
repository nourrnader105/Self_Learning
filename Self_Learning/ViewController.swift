//
//  ViewController.swift
//  Self_Learning
//
//  Created by mac on 23/01/2026.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nameContanierView: UIView!
    @IBOutlet weak var FirdtNmaeContainerView: UIView!
    @IBOutlet weak var FamilyContainerView: UIView!
    
    
    @IBOutlet weak var PhoneContainerView: UIView!
    @IBOutlet weak var CityContainerView: UIView!
    @IBOutlet weak var CountryContainerView: UIView!
    @IBOutlet weak var BankAccountContainerView: UIView!
    
    
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
      super.viewDidLoad()
        
        
        
        viewStyle(nameContanierView)
        viewStyle(FirdtNmaeContainerView)
        viewStyle(FamilyContainerView)
        viewStyle(PhoneContainerView)
        viewStyle(PhoneContainerView)
        viewStyle(CityContainerView)
        viewStyle(CountryContainerView)
        viewStyle(BankAccountContainerView)
        viewStyle(saveButton)
        
        ImageView.layer.cornerRadius=ImageView.frame.width/2
        ImageView.clipsToBounds=true
        ImageView.layer.borderWidth=2
        ImageView.layer.borderColor=UIColor.gray.cgColor
        
        
    
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
         view.addGestureRecognizer(tap)
        
        
    }
    
        @IBAction func saveButton(_ sender: Any) {
        
          view.endEditing(true)
    
    
     }
    
    
    @objc func hideKeyboard() {
     view.endEditing(true)
     }
    }
    
    func viewStyle(_ view: UIView){
      view.layer.cornerRadius=10
    view.layer.masksToBounds=true
    }
    

