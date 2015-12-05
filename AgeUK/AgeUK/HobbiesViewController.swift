//
//  RegisterViewController.swift
//  AgeUK
//
//  Created by Adrian Mateoaea on 05.12.2015.
//  Copyright © 2015 AgeUK. All rights reserved.
//

import UIKit
import SnapKit
import MBProgressHUD

class HobbiesViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor.whiteColor()
    self.title = ""
    
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done",
      style: UIBarButtonItemStyle.Plain, target: self, action: "next")
    
    let scroll = UIScrollView()
    self.view.addSubview(scroll)
    scroll.snp_makeConstraints { (make) -> Void in
      make.edges.equalTo(self.view)
    }
    
    let image = UIImageView(image: UIImage(named: "hobbies"))
    scroll.addSubview(image)
    scroll.contentSize = image.image!.size
  }
  
  func next() {
    let hud = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
    hud.mode = MBProgressHUDMode.Indeterminate
    hud.labelText = "Woking on this";
    hud.show(true)
    
    let time = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW), 2 * Int64(NSEC_PER_SEC))
    dispatch_after(time, dispatch_get_main_queue()) {
      hud.hide(true)
      self.presentViewController(UINavigationController(rootViewController: HomeTableViewController()),
        animated: true, completion: nil)
    }
  }
  
}
