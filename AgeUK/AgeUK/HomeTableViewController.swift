//
//  HomeTableViewController.swift
//
//
//  Created by Adrian Mateoaea on 05.12.2015.
//
//

import UIKit

class HomeTableViewController: UITableViewController {
  
  var isPending = true {
    didSet {
      self.tableView.reloadData()
    }
  }
  
  var hasWatchedTraining = true {
    didSet {
      self.tableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "HOME"
    self.tableView.tableFooterView = UIView()
    
    self.tableView.registerClass(ProfileTableViewCell.self,
      forCellReuseIdentifier: "ProfileTableViewCell")
    self.tableView.registerClass(YTTableViewCell.self,
      forCellReuseIdentifier: "YTTableViewCell")
    self.tableView.registerClass(CallTableViewCell.self,
      forCellReuseIdentifier: "CallTableViewCell")
  }
  
  init() {
    super.init(style: UITableViewStyle.Grouped)
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    if isPending {
      return 2
    } else {
      return 3
    }
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
    case 0:
      if isPending {
        return 1
      } else {
        return 2
      }
    case 1:
      if isPending {
        return 1
      } else {
        return 2
      }
    case 2:
      return 3
    default:
      return 0
    }
  }
  
  func getMeCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("ProfileTableViewCell",
      forIndexPath: indexPath) as! ProfileTableViewCell
    
    cell.setPending(self.isPending)
    cell.button.addTarget(self, action: "pending", forControlEvents: UIControlEvents.TouchUpInside)
    
    return cell
  }
  
  func getCallCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("CallTableViewCell",
      forIndexPath: indexPath) as! CallTableViewCell
    
    cell.button.addTarget(self, action: "call", forControlEvents: UIControlEvents.TouchUpInside)
    
    return cell
  }
  
  func call() {
    let alert = UIAlertController(title: "Reminder", message: "You will NOT:\n1. Say ...\n2.", preferredStyle: UIAlertControllerStyle.Alert)
    alert.addAction(UIAlertAction(title: "I agree", style: UIAlertActionStyle.Default, handler: { (_) -> Void in
        UIApplication.sharedApplication().openURL(NSURL(string: "tel://9809088798")!)
    }))
    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
    self.presentViewController(alert, animated: true, completion: nil)
  }
  
  func getDescriptionCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "DescriptionCell")
    
    cell.selectionStyle = .None
    cell.accessoryType = .None
    
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.font = UIFont.systemFontOfSize(14)
    cell.textLabel?.text = "Your application must first be approved by the organization before getting involved"
    cell.imageView?.image = UIImage(named: "caution7")
    
    return cell
  }
  
  func getTrainingCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "DescriptionCell")
    
    cell.selectionStyle = .None
    cell.accessoryType = .DisclosureIndicator
    
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.font = UIFont.systemFontOfSize(14)
    cell.textLabel?.text = "The final step is to watch a training video (about ~30mins)"
    cell.imageView?.image = UIImage(named: "play43")
    
    return cell
  }
  
  func getL1Cell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "DescriptionCell")
    
    cell.selectionStyle = .None
    cell.accessoryType = .DisclosureIndicator
    
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.font = UIFont.systemFontOfSize(14)
    cell.textLabel?.text = "We've found a mentor in your zone (~10km away from your). Check him out!"
    cell.imageView?.image = UIImage(named: "pin56")
    
    return cell
  }
  
  func getL2Cell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "DescriptionCell")
    
    cell.selectionStyle = .None
    cell.accessoryType = .DisclosureIndicator
    
//    cell.textLabel?.numberOfLines = 0
//    cell.textLabel?.font = UIFont.systemFontOfSize(14)
    cell.textLabel?.text = "Find other mentors nearby"
    cell.imageView?.image = UIImage(named: "pin56")
    
    return cell
  }
  
  func getYTCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("YTTableViewCell",
      forIndexPath: indexPath) as! YTTableViewCell
    
    return cell
  }
  
  func getLocationCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("YTTableViewCell",
      forIndexPath: indexPath) as! YTTableViewCell
    
    cell.image1.image = UIImage(named: "location")
    
    return cell
  }
  
  func getSettingsCell(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "SettingsCell")
    
    cell.selectionStyle = .None
    cell.accessoryType = .DisclosureIndicator
    
    cell.textLabel?.text = "More settings"
    
    return cell
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    
    if indexPath.section == 0 && indexPath.row == 1 {
      let alert = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
      alert.addAction(UIAlertAction(title: "Add to calendar", style: UIAlertActionStyle.Default, handler: nil))
      alert.addAction(UIAlertAction(title: "Remind me later", style: UIAlertActionStyle.Default, handler: nil))
      alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
      self.presentViewController(alert, animated: true, completion: nil)
    }
  }
  
  func pending() {
    if isPending {
      let alert = UIAlertController(title: "Congratulations", message: "You are now an approved volunteer!", preferredStyle: UIAlertControllerStyle.Alert)
      alert.addAction(UIAlertAction(title: "Awesome", style: UIAlertActionStyle.Default, handler: nil))
      self.presentViewController(alert, animated: true, completion: nil)
    }
    self.isPending = !self.isPending
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    if indexPath.section == 0 {
      if indexPath.row == 0 {
        return self.getMeCell(tableView, cellForRowAtIndexPath: indexPath)
      } else if indexPath.row == 1 {
        return self.getCallCell(tableView, cellForRowAtIndexPath: indexPath)
      }
    } else if indexPath.section == 1 {
      if indexPath.row == 0 {
        if isPending {
          return self.getDescriptionCell(tableView, cellForRowAtIndexPath: indexPath)
        } else {
          return self.getYTCell(tableView, cellForRowAtIndexPath: indexPath)
        }
      } else if indexPath.row == 1 {
        return self.getTrainingCell(tableView, cellForRowAtIndexPath: indexPath)
      }
    } else if indexPath.section == 2 {
      if indexPath.row == 0 {
        return self.getLocationCell(tableView, cellForRowAtIndexPath: indexPath)
      } else if indexPath.row == 1 {
        return self.getL1Cell(tableView, cellForRowAtIndexPath: indexPath)
      } else if indexPath.row == 2 {
        return self.getL2Cell(tableView, cellForRowAtIndexPath: indexPath)
      }
    }
    return UITableViewCell()
  }
  
  override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    if indexPath.section == 0 {
      if indexPath.row == 0 {
        return 110
      } else if indexPath.row == 1 {
        return 110
      }
    } else if indexPath.section == 1 {
      if indexPath.row == 0 {
        if isPending {
          return 80
        } else {
          return 200
        }
      } else if indexPath.row == 1 {
        return 80
      }
    } else if indexPath.section == 2 {
      if indexPath.row == 0 {
        if isPending {
          return 80
        } else {
          return 200
        }
      } else if indexPath.row == 1 {
        return 80
      } else {
        return 50
      }
    }
    return 0
  }
  
}
