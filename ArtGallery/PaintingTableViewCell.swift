//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Iyin Raphael on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit
//creating protocol to establish delagate relationship as the delagator
protocol PaintingTableCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
    
}

class PaintingTableViewCell: UITableViewCell {
    
    
    private func updateView(){
        guard let painting =  painting else {return}
        ImageView.image = painting.image
        
        if painting.isLiked == true{
            LikeButton.setTitle("Unlike", for: .normal)
        }else{
            LikeButton.setTitle("Like", for: .normal)
        }
    }
    
    var painting: Painting? {
        didSet {
            updateView()
        }
    }
    
    //initializing delegate to access the like button
    weak var delegate: PaintingTableCellDelegate?
    @IBAction func Like(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var LikeButton: UIButton!
    
}
