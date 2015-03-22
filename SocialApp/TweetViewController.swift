//
//  TweetViewController.swift
//  SocialApp
//
//  Created by David Attarzadeh on 3/17/15.
//  Copyright (c) 2015 DavidAttarzadeh. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController {
    @IBOutlet weak var tweetAuthorAvatar: UIImageView!
    @IBOutlet weak var tweetAuthorName: UILabel!
    @IBOutlet weak var tweetText: UITextView!
    var selectedTweet: NSDictionary?
    
    @IBAction func dismissView(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let userData = selectedTweet?["user"] as NSDictionary
        tweetText.text? = selectedTweet?["text"] as NSString
        tweetAuthorName.text? = userData["name"] as NSString
        
        let imageURLString = userData["profile_image_url"] as String
        let imageURL = NSURL(string: imageURLString) as NSURL!
        let imageData = NSData(contentsOfURL: imageURL) as NSData!
        
        dispatch_async(dispatch_get_main_queue()) {
            self.tweetAuthorAvatar.image = UIImage(data: imageData)
        }
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

}
