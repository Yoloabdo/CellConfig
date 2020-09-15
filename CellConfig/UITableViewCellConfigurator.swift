//
//  UITableViewCellConfigurator.swift
//  CellConfig
//
//  Created by Abdoelrhman Eaita on 9/15/20.
//  Copyright © 2020 abdeenlabs. All rights reserved.
//

import UIKit

protocol UITableViewCellConfigurator {
    associatedtype T
    var item: T { get }
    var identifier: String { get }
    func configure(_ tableView: UITableView, index: IndexPath) -> UITableViewCell
}
