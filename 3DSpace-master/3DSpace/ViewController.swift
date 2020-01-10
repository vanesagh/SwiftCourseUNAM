//
//  ViewController.swift
//  3DSpace
//
//  Created by Eduardo Quintero on 1/10/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit
import SceneKit
import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var viewGame: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = SCNScene(named: "art.scnassets/tierra.scn")!
        viewGame.scene = scene
        viewGame.allowsCameraControl = true
        viewGame.showsStatistics = true
    }


}

