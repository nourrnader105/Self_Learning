//
//  CustomInputView.swift
//  Self_Learning
//
//  Created by mac on 29/01/2026.
//

import Foundation
import UIKit
class CustomInputView : UIStackView{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBInspectable var title:String = "" {
        didSet{
            titleLabel?.text = title
        
        }
    }
    @IBInspectable var placeholder : String = ""{
        didSet{
            textField?.placeholder = placeholder
        }
    }
    override func awakeFromNib() {
            super.awakeFromNib()
            titleLabel?.text = title
            textField?.placeholder = placeholder
        }
}
