//
//  TypeNoButtonTableViewCell.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/5/22.
//

import UIKit

class TypeNoButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var avata: UIImageView!
    
    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var lbNotification: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lbNotification.setLineSpacing(lineSpacing: 3)
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(data: UserData) {
        avata.image = data.avata
        lbNotification.setStyleBoldString(name: data.name, notificaiton: data.notification)
        lbNotification.setLineSpacing(lineSpacing: 3)
        lbTime.text = data.time
    }

}
