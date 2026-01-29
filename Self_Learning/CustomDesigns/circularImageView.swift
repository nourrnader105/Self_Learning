//
//  circularImageView.swift
//  Self_Learning
//
//  Created by mac on 29/01/2026.
//

import Foundation
import UIKit
class circularimageView:UIImageView{
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
       self.layer.cornerRadius=self.frame.width/2
       self.clipsToBounds=true
       self.layer.borderWidth=2
       self.layer.borderColor=UIColor.gray.cgColor
        
        
    }
}
