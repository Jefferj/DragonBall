//
//  DragonBallListViewController.swift
//  DragonBall
//
//  Created by Jefferson Naranjo rodríguez on 28/09/22.
//

import UIKit

class DragonBallListViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let aTable = UITableView()
        aTable.translatesAutoresizingMaskIntoConstraints = false
        aTable.delegate = self
        aTable.dataSource = self
        view.addSubview(aTable)
        return aTable
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setuView() {
        self.title = "Dragon Ball Z"
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar
            .prefersLargeTitles = true
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
}
