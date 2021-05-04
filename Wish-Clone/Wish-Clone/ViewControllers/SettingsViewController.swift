//
//  SettingsViewController.swift
//  Wish-Clone
//
//  Created by Lily Wildgoose on 03/05/2021.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var SettingsTableView: UITableView!
    
    let headers = ["Profile","Shop","Account","Rewards & Promotions","Support","Settings"]
    let ShopList = ["Browse","Search"]
    let AccountList = ["Order History","Notifications"]
    let RewardsList = ["Earn £160","Wish Cash","Rewards","Daily Login Bonus","Apply Promo/e-Gift Cards"]
    let SupportList = ["Shop More","Customer Support","Frequently Asked Questions","Daily Login Bonus","Apply Promo/e-Gift Cards"]
    let Settingslist = ["Settings"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        switch headers[section] {
        case "Profile":
            return 1
        case "Shop":
            return ShopList.count
        case "Account":
            return AccountList.count
        case "Rewards & Promotions":
            return RewardsList.count
        case "Support":
            return SupportList.count
        case "Settings":
            return Settingslist.count
        default:
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        headers.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = SettingsTableView.dequeueReusableCell(withIdentifier: "SettingsHeaderTableViewCell") as! SettingsHeaderTableViewCell
        headerView.SetUpCell(title: headers[section])
        return headerView.contentView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (headers[indexPath.section] == "Profile")
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell") as! ProfileTableViewCell
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell") as! SettingsTableViewCell
            cell.SetUpCell(title: GetTitleFromSection(indexPath: indexPath))
            return cell
        }
    }
    
    func GetTitleFromSection(indexPath :IndexPath) -> String {
        switch headers[indexPath.section] {
        case "Profile":
            return ""
        case "Shop":
            return ShopList[indexPath.row]
        case "Account":
            return AccountList[indexPath.row]
        case "Rewards & Promotions":
            return RewardsList[indexPath.row]
        case "Support":
            return SupportList[indexPath.row]
        case "Settings":
            return Settingslist[indexPath.row]
        default:
            return ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SettingsTableView.register(UINib(nibName: "SettingsTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingsTableViewCell")
        SettingsTableView.register(UINib(nibName: "SettingsHeaderTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingsHeaderTableViewCell")
        SettingsTableView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
        SettingsTableView.dataSource = self
        SettingsTableView.delegate = self
        SettingsTableView.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
