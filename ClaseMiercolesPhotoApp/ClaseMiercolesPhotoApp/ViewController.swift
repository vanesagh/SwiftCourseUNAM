//
//  ViewController.swift
//  ClaseMiercolesPhotoApp
//
//  Created by 2020-2 on 08/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
                let path = Bundle.main.resourcePath!
                let items = try! fm.contentsOfDirectory(atPath: path)
                
                for item in items{
                    if item.hasPrefix("imagen"){
                        // aqui ira mas codigo
                        pictures.append(item)
                    }
                }
                pictures.sort()
                print(pictures)
                
            }
            
            override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return pictures.count
            }
            
            override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "Imagen", for: indexPath)
                cell.textLabel?.text = pictures[indexPath.row]
                
                return cell
            }
            
            
            override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                //type casting para DetailViewController
                if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
                    //Si el codigo llega hasta aqui, quiere decir que podemos hacer el set de la propiedad
                    vc.selectedImage = pictures[indexPath.row]
                    
                    //Y le hace "push" al navigation controller
                    navigationController?.pushViewController(vc, animated: true)
                }
            }
        }

