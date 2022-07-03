//
//  ViewController.swift
//  HW2
//
//  Created by Тимур Хайруллин on 01.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        statusLabel.isHidden = true
        
        }
    
    
    @IBAction func buttonTap(_ sender: Any) {
        
        guard let username = textField.text else {return}
        
        if username.starts(with: "89087"), username.count == 11 {
            statusLabel.textColor = .systemGreen
            statusLabel.text = "Success"
            
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "PhoneTableViewController") else {return}
//            present(nextVC, animated: true)
            
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "PhoneTableViewController") else {return}
            navigationController?.pushViewController(nextVC, animated: true)
        }
        else {
            statusLabel.textColor = .systemRed
            statusLabel.text = "Wrong number"
        }
        statusLabel.isHidden = false
    }
    
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        statusLabel.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        textField.text = nil
    }


}

