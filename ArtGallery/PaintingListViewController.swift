//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Iyin Raphael on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableCellDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
    
    //conform protocol to request action when button is liked
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        let index = tableView.indexPath(for: cell)
        let paint = cell.painting
        
        paintingController.toggleIsLiked(for: paint!)
        tableView.reloadRows(at: [index!], with: .automatic)
    }
    
    //Conform class to TableView Protocol by setting properties
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)

        
        //casting tableview to return Customized tableView Cell
        guard let imageCell = cell as? PaintingTableViewCell else {return cell}
        
        //accessing images or paintings from model controller which holds array of images
        //passing painting to cell for display
        let painting = paintingController.paintings[indexPath.row]
        imageCell.painting = painting
        imageCell.delegate = self
        return imageCell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    let paintingController = PaintingController()
    
    
    @IBOutlet weak var tableView: UITableView!
    
}
