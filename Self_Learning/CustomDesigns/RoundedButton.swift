//
//  RoundedButton.swift
//  Self_Learning
//
//  Created by mac on 29/01/2026.
//

import Foundation
import UIKit

@IBDesignable
class RoundedButton:UIButton{
   
    @IBInspectable var cornerRaduis:CGFloat = 0{
    
        didSet{
            self.layer.cornerRadius = cornerRaduis
            
        }
    }
    override func layoutSubviews() {
            super.layoutSubviews()
            self.layer.masksToBounds = true
        }
}
