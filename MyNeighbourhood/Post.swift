//
//  Post.swift
//  MyNeighbourhood
//
//  Created by Chetwyn on 3/21/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

//This will hold all the information displayed in each post.

class Post {
    
    private var _imagePath: String!
    //Note that this is the path to an image that is saved on the device.
    private var _title: String!
    private var _postDec: String!
    
    init(imagePath: String, title: String, postDescription: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDec = postDescription
    }
    
}
