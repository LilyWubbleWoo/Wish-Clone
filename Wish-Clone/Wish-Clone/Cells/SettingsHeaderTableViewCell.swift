//
//  SettingsHeaderTableViewCell.swift
//  Wish-Clone
//
//  Created by Lily Wildgoose on 04/05/2021.
//

import UIKit

class SettingsHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var HeaderLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func SetUpCell(title : String)
    {
        HeaderLabel.text = title
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
