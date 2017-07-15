//
//  MineMasterBaseViewController.swift
//  UniversalFrame
//
//  Created by 冯才凡 on 2017/7/15.
//  Copyright © 2017年 com.fcf. All rights reserved.
//

import UIKit

/**ipad左侧master Controller基类*/
class MineMasterBaseViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge()
        title = "master"
        self.view.backgroundColor = UIColor.yellow
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
