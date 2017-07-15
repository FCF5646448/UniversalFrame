//
//  MineDetailBaseViewController.swift
//  UniversalFrame
//
//  Created by 冯才凡 on 2017/7/15.
//  Copyright © 2017年 com.fcf. All rights reserved.
//

import UIKit

/**ipad右侧detail Controller基类*/
class MineDetailBaseViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge()
        title = "detail"
        self.view.backgroundColor = UIColor.orange
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
