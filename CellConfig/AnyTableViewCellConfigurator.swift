//
//  AnyTableViewCellConfigurator.swift
//  CellConfig
//
//  Created by Abdoelrhman Eaita on 9/15/20.
//  Copyright © 2020 abdeenlabs. All rights reserved.
//

import UIKit

class AnyTableViewCellConfigurator {
    var configure: (_ tableView: UITableView, _ index: IndexPath) -> UITableViewCell

    init<I: UITableViewCellConfigurator>(_ configurator: I) {
        self.configure = configurator.configure
    }
}
