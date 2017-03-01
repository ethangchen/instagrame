//
//  ProfileViewController.swift
//  instagrame
//
//  Created by Ethan Chen on 2017/1/23.
//  Copyright © 2017年 Ethan Chen. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet weak var postsCountLabel: UILabel!
    @IBOutlet weak var followerCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    
    @IBOutlet weak var notificationLabel: UILabel!
    @IBOutlet weak var notificationSwitch: UISwitch!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarImage.layer.cornerRadius = avatarImage.bounds.width / 2
        avatarImage.clipsToBounds = true
        
        usernameLabel.text = "Miranda Kerr"
        userEmailLabel.text = "super_sexy@gmail.com"
        postsCountLabel.text = "80"
        followerCountLabel.text = "10000"
        followingCountLabel.text = "2000"
        
      
        
        let notification = UserDefaults.standard.bool(forKey: "notification")
        notificationSwitch.isOn = notification
      
        if notificationSwitch.isOn {
            notificationLabel.text = "On"
            
        } else {
            
            notificationLabel.text = "Off"
            
        }

        
    }
    @IBAction func notificationSwitchValue(_ sender: Any) {
        
        UserDefaults.standard.set(notificationSwitch.isOn, forKey: "notification")
        
        UserDefaults.standard.synchronize()
        
        
        if notificationSwitch.isOn {
            notificationLabel.text = "On"
          
        } else {
         
            notificationLabel.text = "Off"

        }
        
        
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
