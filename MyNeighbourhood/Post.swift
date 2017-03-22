//
//  Post.swift
//  MyNeighbourhood
//
//  Created by Chetwyn on 3/21/17.
//  Copyright © 2017 Clarke Enterprises. All rights reserved.
//

import Foundation

//This will hold all the information displayed in each post.

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    //Note that this is the path to an image that is saved on the device.
    private var _title: String!
    private var _postDesc: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDescription: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, postDescription: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDesc = postDescription
    }
    
    override init() {
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self._imagePath, forKey: "imagePath")
        aCoder.encode(self._postDesc, forKey: "description")
        aCoder.encode(self._title, forKey: "title")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObject(forKey: "imagePath") as? String
        self._title = aDecoder.decodeObject(forKey: "title") as? String
        self._postDesc = aDecoder.decodeObject(forKey: "description") as? String
    }
    
}
