//
//  MainCollectionViewController.swift
//  instagrame
//
//  Created by Ethan Chen on 2017/1/20.
//  Copyright © 2017年 Ethan Chen. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController, NewPostViewControllerDelegate {

    @IBOutlet weak var MainFlowLayout: UICollectionViewFlowLayout!
    
    var posts = [PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-01.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-02.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-03.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-04.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-05.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-06.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-07.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-08.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-09.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-10.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-11.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-12.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-13.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-14.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-15.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-16.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-17.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?"),
                             PostData(avatarImage: UIImage(named: "Miranda.png")!, username: "Miranda", time: "January 25, 2017 at 14:25", photo: UIImage(named: "demo-18.jpg")!, content: "Hi, My name is Miranda Kerr, I love beach so much, dont you?")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        MainFlowLayout.estimatedItemSize = MainFlowLayout.itemSize
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewPost" {
          let vc = segue.destination as? NewPostViewController
            vc?.delegate = self
        
        }
    }
    
    
    func creatPost(post: PostData) {
        posts.insert(post, at: 0)
        collectionView?.reloadData()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return posts.count
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MainCollectionViewCell
        
      
        
        
        let post = posts[indexPath.row]
        
        cell.avatarImage.image = post.avatarImage
        cell.usernameLabel.text = post.username
        cell.timeLabel.text = post.time
        cell.postContentLabel.text = post.content
        cell.photoImage.image = post.photo
        
       
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
