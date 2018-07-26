//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Iyin Raphael on 7/25/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableView.dataSource = self 
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        guard let imageCell = cell as? PaintingTableViewCell else {return cell} 
        
        let painting = paintingController.paintings[indexPath.row]
        imageCell.painting = painting
        return imageCell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    let paintingController = PaintingController()
    
    @IBOutlet weak var TableView: UITableView!
    
}
