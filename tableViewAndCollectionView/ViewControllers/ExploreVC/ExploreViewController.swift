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
    @IBOutlet weak var mySecondCollectionView: UICollectionView!
    
    @IBOutlet weak var bannerView: UIImageView!
    @IBOutlet weak var myThirdCollectionView: UICollectionView!
    
    let firstData: [TitleData] = [
        TitleData(name: "Sport", avata: UIImage(named: "sport")!, background: .red),
        TitleData(name: "Music", avata: UIImage(named: "music")!, background: .blue),
        TitleData(name: "Food", avata: UIImage(named: "food")!, background: .green),
        TitleData(name: "Filters", avata: UIImage(named: "filters")!, background: .yellow),
        TitleData(name: "notifi", avata: UIImage(named: "notifi")!, background: .brown),
    ]
   
    let secondData: [EventData] = [
        EventData(background: UIImage(named: "backgr")!, title: "International Band Mu...", location: "37 Guild Street London, UK "),
        EventData(background: UIImage(named: "backgr")!, title: "International Band asn...", location: "38 Guild Street London, UK "),
        EventData(background: UIImage(named: "backgr")!, title: "International Band mancity...", location: "39 Guild Street London, UK "),
        EventData(background: UIImage(named: "backgr")!, title: "International Band bar...", location: "40 Guild Street London, UK "),
        EventData(background: UIImage(named: "backgr")!, title: "International Band real...", location: "41 Guild Street London, UK "),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myFirstCollectionView.dataSource = self
        myFirstCollectionView.delegate = self
        
        mySecondCollectionView.dataSource = self
        mySecondCollectionView.delegate = self
        
        myThirdCollectionView.dataSource = self
        myThirdCollectionView.delegate = self
        
        myFirstCollectionView.backgroundColor = .clear
        mySecondCollectionView.backgroundColor = .clear
        myThirdCollectionView.backgroundColor = .clear


        myFirstCollectionView.register(UINib(nibName: "TitleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TitleCollectionViewCell")
        mySecondCollectionView.register(UINib(nibName: "SecondCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SecondCollectionViewCell")
        myThirdCollectionView.register(UINib(nibName: "ThirdCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ThirdCollectionViewCell")
        
        setLayerHeaderView()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
       
        
    }

   
    
    
    func setLayerHeaderView() {
        headerView.layer.cornerRadius = 33
//        headerView.layer.masksToBounds = true
        btnFilter.layer.cornerRadius = 20
        bannerView.layer.cornerRadius = 20
//        btnFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 3, bottom: 0, right: 0)
        
        
    }
   
}
extension ExploreViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == myFirstCollectionView {
            return firstData.count
        }else {
            return secondData.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == myFirstCollectionView {
            let cell1 = myFirstCollectionView.dequeueReusableCell(withReuseIdentifier: "TitleCollectionViewCell", for: indexPath) as! TitleCollectionViewCell
            let data = firstData[indexPath.row]
            cell1.config(data: data)
            return cell1
        }else if collectionView == mySecondCollectionView {
            let cell2 = mySecondCollectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath) as! SecondCollectionViewCell
            let data = secondData[indexPath.row]
            cell2.config(data: data)
            return cell2
        }else {
            let cell3 = myThirdCollectionView.dequeueReusableCell(withReuseIdentifier: "ThirdCollectionViewCell", for: indexPath) as! ThirdCollectionViewCell
            let data = secondData[indexPath.row]
            cell3.config(data: data)
            return cell3
        }
        
        
        
        
        
    }
    
    
}
extension ExploreViewController: UICollectionViewDelegate {
    
}
extension ExploreViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == myFirstCollectionView {
            return CGSize(width: 120, height: 40)
        }else {
            return CGSize(width: 237, height: 255)
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == myFirstCollectionView {
            return 12
        }else {
            return 16
        }
        
    }
    
}
