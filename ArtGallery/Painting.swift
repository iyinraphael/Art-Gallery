//
//  Painting.swift
//  ArtGallery
//
//  Created by Iyin Raphael on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    let isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
    
}
