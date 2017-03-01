//
//  NewPostViewController.swift
//  instagrame
//
//  Created by Ethan Chen on 2017/1/24.
//  Copyright © 2017年 Ethan Chen. All rights reserved.
//

import UIKit
import Photos


protocol NewPostViewControllerDelegate {
    func creatPost (post:PostData)
}

class NewPostViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var delegate: NewPostViewControllerDelegate?
   
    @IBAction func cancelButton(_ sender: Any) {
    
    dismiss(animated: true, completion:
        nil)
    }
    
    @IBAction func doneButton(_ sender: Any) {
    
        let avatarImage = UIImage(named: "Emily-kinney.jpg")!
        let username = "Emily Kinney"
        let time = "January 21, 2017 at 12:22 pm"
        
        
        guard let photo = photoImage.image
            else {
            alert(message: "photo needed!")
                return
        }
        // !content = isEmpty
        guard let content = contentTextView.text, contentTextView.text != ""
            else {
            alert(message: "content needed!")
                return
        }
        
        let post = PostData(avatarImage: avatarImage, username: username, time: time, photo: photo, content: content)

        delegate?.creatPost(post: post)
        
        dismiss(animated: true, completion:
            nil)
    }
    
    
    func alert (message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
    
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
    
            alertController.dismiss(animated: true, completion: nil)
    
        }))
    
            self.present(alertController, animated: true, completion: nil)
    }
    @IBOutlet weak var contentTextView: UITextView!
    
    @IBOutlet weak var photoImage: UIImageView!
    
   
    @IBAction func cameraButton(_ sender: Any) {
    
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.allowsEditing = false
        
        self.present(imagePickerController, animated: true, completion: nil)
        
    
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        photoImage.image = image
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contentTextView.text = ""
        
        // Do any additional setup after loading the view.
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
