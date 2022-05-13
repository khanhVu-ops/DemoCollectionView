//
//  UserData.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/5/22.
//

import Foundation
import UIKit

struct UserData {
    var avata = UIImage()
    var name: String
    var notification: String
    var time: String
    var type: Int
    
    init(avata: UIImage,name: String, notifi: String, time: String, type: Int) {
        self.avata = avata
        self.name = name
        self.notification = notifi
        self.time = time
        self.type = type
    }
}
