//
//  DetailViewController.swift
//  ClaseMiercolesPhotoApp
//
//  Created by 2020-2 on 08/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            
            imageView.image = UIImage(named: imageToLoad)
        }

    }
    


}
