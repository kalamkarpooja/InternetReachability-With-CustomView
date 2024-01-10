//
//  AlertViewController.swift
//  CustomPopUp
//
//  Created by Mac on 09/01/24.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var exitBtn: UIButton!
    @IBOutlet weak var alertView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        alertView.layer.cornerRadius = 9.0
        alertView.layer.shadowColor = UIColor.black.cgColor
        alertView.layer.shadowOpacity = 0.7
        alertView.layer.shadowOffset = .zero
        alertView.layer.shadowRadius = 6
    }
    
    @IBAction func retryBtn(_ sender: Any) {
        print("retry tapped")
    }
    
    @IBAction func exitBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

