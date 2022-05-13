//
//  NotificationViewController.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/4/22.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let arrayData: [UserData] = [
        UserData(avata: UIImage(named: "icon_1")!,name: "David Silbia", notifi: "Invite Jo Malone London’s Mother’s aaaaaaaaaa", time: "Just now", type: 1),
        UserData(avata: UIImage(named: "icon_2")!, name: "Adnan Safi", notifi: "Started following youaaaaaaaaaaaa aaaaaaaaaaaaaaa", time: "5 min ago", type: 0),
        UserData(avata: UIImage(named: "icon_3")!,name: "Joan Baker", notifi: "Invite A virtual Evening of Smooth Jazz to New Life city.", time: "20 min ago", type: 1),
        UserData(avata: UIImage(named: "icon_4")!,name: "Ronald C. Kinch", notifi: "Like you events aaaaaaaaaaaaaaaddddd ddddddddddddd ddddddd", time: "1 hr ago", type: 0),
        UserData(avata: UIImage(named: "icon_5")!,name: "Clara Tolson", notifi: "Join  adadadadad adadadadadad daadad", time: "9 hr ago", type: 1),
        UserData(avata: UIImage(named: "icon_6")!,name: "Jennifer Fritz", notifi: "Invite you International Kids Safe", time: "Tue , 5:10 pm", type: 0),
        UserData(avata: UIImage(named: "icon_7")!,name: "Eric G. Prickett", notifi: "Started following you with a longgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg text", time: "Wed, 3:30 pm",type: 1)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.register(UINib(nibName: "TypeNoButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "TypeNoButtonTableViewCell")
        myTableView.register(UINib(nibName: "TypeButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "TypeButtonTableViewCell")

        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

}


extension NotificationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = arrayData[indexPath.row]
//        let a = data.name
//        a.at
        
        if data.type == 1 {
            let cell = myTableView.dequeueReusableCell(withIdentifier: "TypeButtonTableViewCell", for: indexPath) as! TypeButtonTableViewCell
            cell.config(data: data)
            return cell
        }else {
            let cell = myTableView.dequeueReusableCell(withIdentifier: "TypeNoButtonTableViewCell", for: indexPath) as! TypeNoButtonTableViewCell
            
            cell.configure(data: data)
            return cell
        }
        
    }
}

extension NotificationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
