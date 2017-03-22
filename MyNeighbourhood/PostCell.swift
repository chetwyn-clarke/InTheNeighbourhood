//
//  PostCell.swift
//  MyNeighbourhood
//
//  Created by Chetwyn on 3/21/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImg.layer.cornerRadius = 15
    }
    
    func configureCell(_ post: Post) {
        titleLbl.text = post.title
        descriptionLbl.text = post.postDescription
        postImg.image = DataService.instance.retrieveImageForPath(post.imagePath)
    }


}
