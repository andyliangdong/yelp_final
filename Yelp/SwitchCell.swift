//
//  SwitchCell.swift
//  Yelp
//
//  Created by Andy (Liang) Dong on 9/5/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {

    
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        onSwitch.addTarget(self, action: "switchValueChanged", forControlEvents:UIControlEvents.ValueChanged)
        
        
        self.contentView.layer.cornerRadius = 3
        self.contentView.clipsToBounds = true
        self.contentView.layer.borderColor = UIColor.grayColor().CGColor
        self.contentView.layer.borderWidth = 1.0
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func switchValueChanged() {
        println("Switch value chagned")
        delegate?.switchCell?(self, didChangeValue : onSwitch.on)
    }

}
