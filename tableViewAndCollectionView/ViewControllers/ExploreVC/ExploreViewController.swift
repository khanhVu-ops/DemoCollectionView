//
//  ExploreViewController.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/9/22.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var btnFilter: UIButton!
    @IBOutlet weak var myFirstCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayerHeaderView()
        // Do any additional setup after loading the view.
    }

   
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func setLayerHeaderView() {
        headerView.layer.cornerRadius = 33
        btnFilter.layer.cornerRadius = 10
        btnFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 3, bottom: 0, right: 0)
        
        
    }
   
}
