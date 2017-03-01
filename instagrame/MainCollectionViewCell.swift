//
//  MainCollectionViewCell.swift
//  instagrame
//
//  Created by Ethan Chen on 2017/1/20.
//  Copyright © 2017年 Ethan Chen. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var photoImage: UIImageView!
    @IBOutlet weak var postContentLabel: UILabel!
   
    @IBOutlet weak var likeButton: DOFavoriteButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImage.layer.cornerRadius = avatarImage.bounds.width / 2
        
        avatarImage.clipsToBounds = true
        
        photoImage.clipsToBounds = true
        
        likeButton.addTarget(self, action: #selector(tapped(sender:)), for: .touchUpInside)
    }
    
    func tapped (sender: DOFavoriteButton){
        
        
        if sender.isSelected {
        
            sender.deselect()
        } else {
        
            sender.select()
        }
    
    
    }
    
    
}
