//
//  RegisterViewController.swift
//  AgeUK
//
//  Created by Adrian Mateoaea on 05.12.2015.
//  Copyright © 2015 AgeUK. All rights reserved.
//

import UIKit
import SnapKit

class HobbiesViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = UIColor.whiteColor()
    self.title = "HOBBIES"
    
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
      style: UIBarButtonItemStyle.Plain, target: self, action: "next")
    
    let scroll = UIScrollView()
    self.view.addSubview(scroll)
    scroll.snp_makeConstraints { (make) -> Void in
      make.edges.equalTo(self.view)
    }
    
    let image = UIImageView(image: UIImage(named: "register"))
    scroll.addSubview(image)
    scroll.contentSize = image.image!.size
  }
  
  func next() {
    
  }
  
}
