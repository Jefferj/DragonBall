//
//  DragonBallListViewController.swift
//  DragonBall
//
//  Created by Jefferson Naranjo rodríguez on 28/09/22.
//

import UIKit

class DragonBallListViewController: UIViewController {
    
    private lazy var button : UIButton = {
        let aButton = UIButton()
        aButton.setTitle("View Detail", for: .normal)
        aButton.backgroundColor = .red
        aButton.layer.cornerRadius = 10
        aButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aButton)
        return aButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Dragon Ball Z"
        self.view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc
    func goToDetail(){
        let detail = DragonBallDetailsViewController()
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
}
