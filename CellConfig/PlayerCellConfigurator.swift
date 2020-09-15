//
//  PlayerCellConfigurator.swift
//  CellConfig
//
//  Created by Abdoelrhman Eaita on 9/15/20.
//  Copyright © 2020 abdeenlabs. All rights reserved.
//

import UIKit

struct PlayerCellConfigurator: UITableViewCellConfigurator {
    typealias T = Player
    var item: Player
    var identifier = "player_cell"
    
    func configure(_ tableView: UITableView, index: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: index)
        cell.textLabel?.text = item.name
        return cell
    }
}
