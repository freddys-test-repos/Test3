//
//  TableViewCell.swift
//  Test3
//
//  Created by Alfredo Merino on 4/3/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tenantView: UILabel!
    
    func setTenant(tenant: Tenant) {
        tenantView.text = tenant.name
    }
}
