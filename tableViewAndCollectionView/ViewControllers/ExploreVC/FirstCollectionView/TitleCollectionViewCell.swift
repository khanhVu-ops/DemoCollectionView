//
//  TitleCollectionViewCell.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/13/22.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgAvata: UIImageView!
    
    @IBOutlet weak var lbName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 20
        // Initialization code
    }
    
    func config(data: TitleData) {
        imgAvata.image = data.avata
        lbName.text = data.name
        self.backgroundColor = data.background
    }

}
