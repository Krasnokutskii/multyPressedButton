//
//  CustomCellTableViewCell.swift
//  multyPressedButton
//
//  Created by Yaroslav Krasnokutskiy on 09.03.2022.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var dueDate: UILabel!    
    @IBOutlet weak var status: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
