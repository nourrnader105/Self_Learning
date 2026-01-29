//
//  CustomInputView.swift
//  Self_Learning
//
//  Created by mac on 29/01/2026.
//

import Foundation
import UIKit
class CustomInputView : UIView{

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    var text: String? {
        get { textField.text }
        set { textField.text = newValue }
    }
    //MARK: - init -
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    //MARK: - LifeCycle -
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: "CustomInputView", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

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
