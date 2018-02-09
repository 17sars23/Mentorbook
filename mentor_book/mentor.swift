//
//  mentor.swift
//  mentor_book
//
//  Created by kawagishi on 2018/02/09.
//  Copyright © 2018年 juna Kawagishi. All rights reserved.
//

import UIKit

class Mentor{
    //--------------------
    //Setting property
    //--------------------
    var name: String!
    var course: String!
    var imageName: String!
    
    //初期化
    init(name: String, course: String, imageName: String){
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    //Get Image
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
