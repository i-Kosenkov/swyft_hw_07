//
//  ViewController.swift
//  Seminar 1
//
//  Created by Ivan Kosenkov on 23.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setLabel()
        setButton()
    }

    private var label = UILabel(frame: CGRect(x: 50, y: 50, width: 300, height: 100))
    
    func setLabel(){
        label.text = "Home Work 7"
        label.backgroundColor = .blue
        label.textAlignment = .center
        label.textColor = .white
        view.addSubview(label)
    }
    
    private var button = UIButton()
    
    func setButton(){
        button.setTitle("Next screen", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 0, y: 200, width: view.frame.size.width, height: 50)
        button.addTarget(self, action: #selector(click), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func click(){
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
}

