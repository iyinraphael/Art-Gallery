//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Iyin Raphael on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    var painting: [Painting] = []
    
    func loadPaintingsFromAssets (){
        for i in 1...12{
            var image = "image\(i)"
            guard let newImage = UIImage(named: image) else {return}
            let paint = Painting(image: newImage)
            painting.append(paint)
        }
        
        func toggleIsLiked(for painting: Painting){
            
        }
        
        
        
    }
    
}
