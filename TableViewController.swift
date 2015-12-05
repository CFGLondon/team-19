//
//  TableViewController.swift
//  Foodpin
//
//  Created by Bilal Atie on .
//  Copyright © 2015 Appcoda. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantImageView.image = UIImage(named: restaurantImage)
        // Do any additional setup after loading the view.
        restaurantnameLabel.text = restaurantName
        restaurantnameLabel.text = restaurantName
        restauranttypeLabel.text = restaurantType
        restaurantlocationLabel.text = restaurantLocation
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var restaurantnameLabel: UILabel!
    @IBOutlet var restaurantlocationLabel: UILabel!
    @IBOutlet var restauranttypeLabel: UILabel!
    var restaurantImage = ""
    var restaurantName = ""
    var restaurantLocation = ""
    var restaurantType = ""
    


}
