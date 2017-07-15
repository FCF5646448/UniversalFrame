//
//  MineSplitController.swift
//  UniversalFrame
//
//  Created by 冯才凡 on 2017/7/15.
//  Copyright © 2017年 com.fcf. All rights reserved.
//

import UIKit

let masterNavigation = MineMasterNavigationController()
let detailNavigation = MineDetailNavigationController()

class MineSplitController: UISplitViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        let master = MineMasterBaseViewController()
        masterNavigation.addChildViewController(master)
        
        let detail = MineDetailBaseViewController()
        detailNavigation.addChildViewController(detail)
        
        viewControllers = [masterNavigation,detailNavigation]
        preferredDisplayMode = .automatic
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MineSplitController:UISplitViewControllerDelegate{
    //主控制器将要隐藏时触发的方法
    func splitViewController(_ svc: UISplitViewController, willHide aViewController: UIViewController, with barButtonItem: UIBarButtonItem, for pc: UIPopoverController) {
        barButtonItem.title = "Master"
        //master将要隐藏的时候给detai设置一个返回按钮
        let navi:MineDetailNavigationController = svc.viewControllers.last as! MineDetailNavigationController
        
        let detail:MineDetailBaseViewController = navi.topViewController as! MineDetailBaseViewController
        
        detail.navigationItem.leftBarButtonItem = barButtonItem
    }
    
    //开始时取消二级控制器，只显示详细控制器
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
    
    //主控制器将要显示时触发方法
    func splitViewController(_ svc: UISplitViewController, willShow aViewController: UIViewController, invalidating barButtonItem: UIBarButtonItem) {
        //master将要显示，取消detail返回按钮
        let navi:MineDetailNavigationController = svc.viewControllers.last as! MineDetailNavigationController
        
        let detail:MineDetailBaseViewController = navi.topViewController as! MineDetailBaseViewController
        
        detail.navigationItem.leftBarButtonItem = nil
    }
    
    //Detail将要显示
    func splitViewController(_ splitViewController: UISplitViewController, showDetail vc: UIViewController, sender: Any?) -> Bool {
        return true
    }
    
}
