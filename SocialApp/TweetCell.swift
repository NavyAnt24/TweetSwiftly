//
//  TweetCell.swift
//  SocialApp
//
//  Created by David Attarzadeh on 3/17/15.
//  Copyright (c) 2015 DavidAttarzadeh. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    @IBOutlet weak var tweetUserAvatar: UIImageView!
    @IBOutlet weak var tweetUserName: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
