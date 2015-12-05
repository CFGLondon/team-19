//
//  ProfileTableViewCell.swift
//  AgeUK
//
//  Created by Adrian Mateoaea on 05.12.2015.
//  Copyright © 2015 AgeUK. All rights reserved.
//

import UIKit
import SnapKit

class YTTableViewCell: UITableViewCell {
  
  var image1: UIImageView!
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.accessoryType = .DisclosureIndicator
    self.clipsToBounds = true
    
    image1 = UIImageView(image: UIImage(named: "yt"))
    image1.contentMode = UIViewContentMode.ScaleAspectFill
    self.addSubview(image1)
    image1.snp_makeConstraints { (make) -> Void in
      make.edges.equalTo(self)
    }
  }
  
  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    //
  }
  
  override func setHighlighted(highlighted: Bool, animated: Bool) {
    //
  }

}
