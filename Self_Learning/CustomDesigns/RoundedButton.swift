//
//  RoundedButton.swift
//  Self_Learning
//
//  Created by mac on 29/01/2026.
//

import Foundation
import UIKit

class RoundedButton:UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        setupDesign()
        
    }
    func setupDesign(){
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
    }
}
