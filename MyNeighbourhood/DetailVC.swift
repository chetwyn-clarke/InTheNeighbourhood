//
//  DetailVC.swift
//  MyNeighbourhood
//
//  Created by Chetwyn on 3/22/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDescription: UILabel!
    
    private var _SelectedPost: Post!
    
    var selectedPost: Post {
        get {
            return _SelectedPost
        } set {
            _SelectedPost = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        postImage.image = DataService.instance.retrieveImageForPath(selectedPost.imagePath)
        postTitle.text = selectedPost.title
        postDescription.text = selectedPost.postDescription

    }
    
    @IBAction func backButtonPressed() {
        dismiss(animated: true, completion: nil)
    }


}
