//
//  LoginViewController.swift
//  AgeUK
//
//  Created by Adrian Mateoaea on 05.12.2015.
//  Copyright © 2015 AgeUK. All rights reserved.
//

import UIKit
import SnapKit

class WelcomeViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor.whiteColor()
    
    let image = UIImageView(image: UIImage(named: "welcome"))
    self.view.addSubview(image)
    image.snp_makeConstraints { (make) -> Void in
      make.top.equalTo(self.view)
      make.leading.equalTo(self.view)
      make.trailing.equalTo(self.view)
    }
    
    let tap = UITapGestureRecognizer(target: self, action: "tap")
    self.view.addGestureRecognizer(tap)
  }
  
  func tap() {
    let nc = UINavigationController(rootViewController: RegisterViewController())
    self.presentViewController(nc, animated: true, completion: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}
