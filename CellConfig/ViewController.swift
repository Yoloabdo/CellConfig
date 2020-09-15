//
//  ViewController.swift
//  CellConfig
//
//  Created by Abdoelrhman Eaita on 9/15/20.
//  Copyright © 2020 abdeenlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var data = [AnyTableViewCellConfigurator]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let player = Player(name: "Abdo", position: "Forward")
        let playerTwo = Player(name: "Ahmed", position: "Goal Keeper")
        let config = PlayerCellConfigurator(item: player)
        
        let configTwo = PlayerTwoCellConfigurator(item: playerTwo)
        
        data.append(AnyTableViewCellConfigurator(config))
        data.append(AnyTableViewCellConfigurator(configTwo))
    }
    
}




extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        data[indexPath.row].configure(tableView, indexPath)
    }
}




