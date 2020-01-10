//
//  SecondViewController.swift
//  3DSpace
//
//  Created by Eduardo Quintero on 1/10/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit
import SceneKit
import QuartzCore

class SecondViewController: UIViewController {

    @IBOutlet weak var viewGame: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = SCNScene(named: "art.scnassets/porCodigo.scn")!
        viewGame.scene = scene
        viewGame.allowsCameraControl = true
        viewGame.showsStatistics = true
        
        loadPlanet()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
               viewGame.addGestureRecognizer(tapGesture)
//      //  ----- codigo temporal para ver el cambio con la adicion de texturas
               let lightNode = SCNNode()
                      lightNode.light = SCNLight()
                      lightNode.light!.type = .omni
                      lightNode.position = SCNVector3(x: -1, y:10, z: -15)
                    scene.rootNode.addChildNode(lightNode)

        
    }
    
    func loadPlanet() {
        let panetNode = SCNNode()
        
        let planetGeometry = SCNSphere(radius: 0.5)
        planetGeometry.firstMaterial?.diffuse.contents = UIImage(named: "earthDiffuse")!
        
        
        planetGeometry.firstMaterial?.normal.contents = UIImage(named: "earthNormal")!
       
        planetGeometry.firstMaterial?.emission.contents = UIImage(named: "earthEmission")!
        
        planetGeometry.firstMaterial?.specular.contents = UIImage(named: "earthSpecular")!
        planetGeometry.firstMaterial?.transparent.contents = UIImage(named: "earthTransparent")!
        
        panetNode.geometry = planetGeometry
    
        let planetPosition = SCNVector3(0, 0, 0)
        panetNode.position = planetPosition
    
        viewGame.scene!.rootNode.addChildNode(panetNode)
        
    }
    

    @objc
     func handleTap(_ gestureRecognize: UIGestureRecognizer) {
         // retrieve the SCNView
         let scnView = self.viewGame as! SCNView
         
         // check what nodes are tapped
         let p = gestureRecognize.location(in: scnView)
         let hitResults = scnView.hitTest(p, options: [:])
         // check that we clicked on at least one object
         if hitResults.count > 0 {
             // retrieved the first clicked object
             let result = hitResults[0]
             
             // get its material
             let material = result.node.geometry!.firstMaterial!
             
             // highlight it
             SCNTransaction.begin()
             SCNTransaction.animationDuration = 0.5
             
             // on completion - unhighlight
             SCNTransaction.completionBlock = {
                 SCNTransaction.begin()
                 SCNTransaction.animationDuration = 0.5
                 
                 material.emission.contents = UIColor.black
                 
                 SCNTransaction.commit()
             }
             
             material.emission.contents = UIColor.red
             
             SCNTransaction.commit()
         }
     }
}
