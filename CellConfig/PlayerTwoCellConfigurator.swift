//
//  PlayerTwoCellConfigurator.swift
//  CellConfig
//
//  Created by Abdoelrhman Eaita on 9/15/20.
//  Copyright © 2020 abdeenlabs. All rights reserved.
//

import UIKit

struct PlayerTwoCellConfigurator: UITableViewCellConfigurator {
    typealias T = Player
    var item: Player
    var identifier = "player_cell_two"
    
    func configure(_ tableView: UITableView, index: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: index)
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item.position
        return cell
    }
}
