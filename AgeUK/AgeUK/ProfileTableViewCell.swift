//
//  ProfileTableViewCell.swift
//  AgeUK
//
//  Created by Adrian Mateoaea on 05.12.2015.
//  Copyright © 2015 AgeUK. All rights reserved.
//

import UIKit
import SnapKit

class ProfileTableViewCell: UITableViewCell {

  static let ORANGE = UIColor(red:0.92, green:0.5, blue:0, alpha:1)
  static let RED    = UIColor(red:0.54, green:0.61, blue:0, alpha:1)
  
  var button: UIButton!
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.accessoryType = .DisclosureIndicator
    
    let image = UIImageView(image: UIImage(named: "profile"))
    image.contentMode = UIViewContentMode.ScaleAspectFill
    image.clipsToBounds = true
    image.layer.cornerRadius = 40
    self.addSubview(image)
    image.snp_makeConstraints { (make) -> Void in
      make.leading.equalTo(self).offset(20)
      make.top.equalTo(self).offset(15)
      make.size.equalTo(80)
    }
    
    let name = UILabel()
    name.text = "Andreea Popescu"
    name.font = UIFont.boldSystemFontOfSize(16)
    self.addSubview(name)
    name.snp_makeConstraints { (make) -> Void in
      make.leading.equalTo(image.snp_trailing).offset(15)
      make.top.equalTo(image).offset(5)
    }
    
    button = UIButton()
    button.setTitle("Pending approval", forState: UIControlState.Normal)
    button.setTitleColor(ProfileTableViewCell.ORANGE, forState: UIControlState.Normal)
    button.titleLabel?.font = UIFont.boldSystemFontOfSize(13)
    button.layer.borderColor = ProfileTableViewCell.ORANGE.CGColor
    button.layer.borderWidth = 1
    button.layer.cornerRadius = 4
    button.contentEdgeInsets = UIEdgeInsets(top: 6, left: 10, bottom: 6, right: 10)
    self.addSubview(button)
    button.snp_makeConstraints { (make) -> Void in
      make.leading.equalTo(image.snp_trailing).offset(15)
      make.top.equalTo(name.snp_bottom).offset(5)
    }
  }
  
  func setPending(value: Bool) {
    if value {
      button.setTitle("Pending approval", forState: UIControlState.Normal)
      button.setTitleColor(ProfileTableViewCell.ORANGE, forState: UIControlState.Normal)
      button.layer.borderColor = ProfileTableViewCell.ORANGE.CGColor
    } else {
      button.setTitle("Approved volunteer", forState: UIControlState.Normal)
      button.setTitleColor(ProfileTableViewCell.RED, forState: UIControlState.Normal)
      button.layer.borderColor = ProfileTableViewCell.RED.CGColor
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
