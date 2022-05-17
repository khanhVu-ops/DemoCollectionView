//
//  CustomTabbarControllerViewController.swift
//  tableViewAndCollectionView
//
//  Created by KhanhVu on 5/12/22.
//

import UIKit

class CustomTabbarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabbarItem()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
   
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }

    func setTabbarItem() {
        let exploreVC = ExploreViewController()
        exploreVC.tabBarItem = UITabBarItem(title: "Explore", image: UIImage(named: "ic_Explore"), tag: 0)
        let exploreNavi = UINavigationController(rootViewController: exploreVC)
        
        let eventVC = EventViewController()
        eventVC.tabBarItem = UITabBarItem(title: "Event", image: UIImage(named: "ic_Event"), tag: 1)
        let eventNavi = UINavigationController(rootViewController: eventVC)
        
        let vc3 = UIViewController()
        let nav3 = UINavigationController(rootViewController: vc3)
        nav3.title = ""
        
        let mapVC = MapViewController()
        mapVC.tabBarItem = UITabBarItem(title: "Map", image: UIImage(named: "ic_Map"), tag: 3)
        let mapNavi = UINavigationController(rootViewController: mapVC)
        
        let st = UIStoryboard(name: "Main", bundle: nil)
        let profileVC = st.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "ic_Profile"), tag: 4)
        let profileNavi = UINavigationController(rootViewController: profileVC)
        viewControllers = [exploreNavi,eventNavi,nav3, mapNavi, profileNavi]
        setupMiddleButton()
    }
    
    func setupMiddleButton() {
            let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
            var menuButtonFrame = menuButton.frame
            menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 50
            menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
            menuButton.frame = menuButtonFrame

            menuButton.backgroundColor = UIColor.green
            menuButton.layer.cornerRadius = menuButtonFrame.height/2
            view.addSubview(menuButton)

            menuButton.setImage(UIImage(named: "ic_btnMiddle"), for: .normal)
            menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)

            view.layoutIfNeeded()
        }
    // MARK: - Actions

        @objc private func menuButtonAction(sender: UIButton) {
            selectedIndex = 2
        }
    
}
extension CustomTabbarController: UITabBarControllerDelegate {
    
}
