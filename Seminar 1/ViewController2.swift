//
//  ViewController2.swift
//  Seminar 1
//
//  Created by Ivan Kosenkov on 23.06.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "New Window"
        setButton()
        setField()
        setField2()

    }
    
    var txtField: UITextField = UITextField(frame: CGRect(x: 30, y: 300, width: 200.00, height: 30.00));
    var txtField2: UITextField = UITextField(frame: CGRect(x: 30, y: 350, width: 200.00, height: 30.00));
    
    func setField(){
        txtField.text = "Login"
        view.addSubview(txtField)
    }
    
    func setField2(){
        txtField2.text = "Password"
        view.addSubview(txtField2)
    }
    
    private var button = UIButton()

    func setButton(){
        button.setTitle("Push the button", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 00, y: 700, width: view.frame.size.width, height: 50)
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func click(){
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
    
}
