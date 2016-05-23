//
//  SettingsViewController.swift
//  Settings
//
//  Created by Tyler on 5/23/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SettingTableViewCellDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.sharedController.mySettings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as? SettingsTableViewCell
        let setting = SettingsController.sharedController.mySettings[indexPath.row]
        cell?.updateSetting(setting)
        cell?.delegate = self
        return cell ?? UITableViewCell()
    }
    
    func settingValueChanged(cell: SettingsTableViewCell, selected: Bool) {
        guard let setting = cell.setting,
            cellIndexPath = myTableView.indexPathForCell(cell) else { return }
            myTableView.beginUpdates()
        SettingsController.sharedController.updateSettingsSelection(setting, selected: selected)
        myTableView.reloadRowsAtIndexPaths([cellIndexPath], withRowAnimation: .Automatic)
        myTableView.endUpdates()
    }
}
