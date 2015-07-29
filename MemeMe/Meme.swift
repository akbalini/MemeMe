//
//  Meme.swift
//  MemeMe
//
//  Created by Akbal Juarez on 7/28/15.
//  Copyright (c) 2015 Akbalini. All rights reserved.
//

import UIKit

class Meme: NSObject {
    
    var top:String?
    var bottom:String?
    var originalImage:UIImage?
    var memedImage:UIImage?
    
    init(topText:String, bottomText:String, image: UIImage, memedImage: UIImage){
        self.top = topText
        self.bottom = bottomText
        self.originalImage = image
        self.memedImage = memedImage
    }
   
}
