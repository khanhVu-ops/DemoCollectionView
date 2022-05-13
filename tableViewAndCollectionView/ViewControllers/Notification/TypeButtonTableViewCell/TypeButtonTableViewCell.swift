//
//  TypeButtonTableViewCell.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/5/22.
//

import UIKit

class TypeButtonTableViewCell: UITableViewCell {

    @IBOutlet weak var avata: UIImageView!
    
    @IBOutlet weak var lbNotification: UILabel!
    
    @IBOutlet weak var lbTime: UILabel!
    @IBOutlet weak var btnReject: UIButton!
    @IBOutlet weak var btnAccept: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpBtn(btn: btnReject)
        setUpBtn(btn: btnAccept)
        lbNotification.setLineSpacing(lineSpacing: 20)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    func setUpBtn(btn: UIButton) {
        btn.layer.cornerRadius = 10
        btn.tintColor = .black
        btn.layer.masksToBounds = true
        
        
    }
    
    func config(data: UserData) {
        
        avata.image = data.avata
//      lbNotification.text = "\(data.name) \(data.notification)"
        lbNotification.setStyleBoldString(name: data.name, notificaiton: data.notification)
        lbNotification.setLineSpacing(lineSpacing: 3)
        lbTime.text = data.time
    }
    
    
    
    @IBAction func didTapBtnReject(_ sender: Any) {
        print("Reject")
    }
    
    @IBAction func didTapBtnAccept(_ sender: Any) {
        print("Accept")
    }
}
