//
//  ViewController.swift
//  Action Floating Button
//
//  Created by Admin on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let floatingButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        
        //corner radius
       // button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.backgroundColor = .systemPink
        
        let image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize:32 , weight: .medium ))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        
        //adding shadow
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.8
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(floatingButton)
        //creating acton of button
        floatingButton.addTarget(self, action: #selector(didAddButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(x: view.frame.size.width-70, y: view.frame.size.height-100, width: 60, height: 60)
    }
    
    @objc func didAddButton(){
        let controler = SecondViewController()
        controler.modalPresentationStyle = .overFullScreen
        present(UINavigationController(rootViewController: controler), animated: true)
    }
}

