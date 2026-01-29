//
//  ViewController.swift
//  Self_Learning
//
//  Created by mac on 23/01/2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var customInputView: CustomInputView!


    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
    }

    @IBAction func saveButton(_ sender: Any) {
        view.endEditing(true)
        print(customInputView.text)
    }

    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}



