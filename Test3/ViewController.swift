//
//  ViewController.swift
//  Test3
//
//  Created by Alfredo Merino on 4/3/19.
//  Copyright © 2019 Alfredo Merino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tenants: [Tenant] = []

    override func viewDidLoad() {
        super.viewDidLoad()
     tenants = createArray()
    }

    func createArray() -> [Tenant] {
        
        var tempTenants: [Tenant] = []
        
        let ivan = Tenant(name: "Ivan")
        let gio = Tenant(name: "Gio")
        let ryan = Tenant(name: "Ryan")
        let tommy = Tenant(name: "Tommy")
        let bob = Tenant(name: "Bob")
        let carl = Tenant(name: "Carl")
        
        tempTenants.append(ivan)
        tempTenants.append(gio)
        tempTenants.append(ryan)
        tempTenants.append(tommy)
        tempTenants.append(bob)
        tempTenants.append(carl)
        
        return tempTenants
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tenants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tenant = tenants[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.setTenant(tenant: tenant)
        
        return cell
        
    }
    
    
}
