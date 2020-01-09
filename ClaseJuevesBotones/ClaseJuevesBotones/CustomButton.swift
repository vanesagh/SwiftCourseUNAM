//
//  CustomButton.swift
//  ClaseJuevesBotones
//
//  Created by 2020-2 on 09/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

extension UIButton {
    func animacion(){
        UIView.animate(withDuration: 0.2, animations: {
            self.transform = CGAffineTransform(scaleX: 2, y: 2)
            
            
        }){(completion) in
            
            UIView.animate(withDuration: 0.3, animations: {
                self.transform = .identity
            })
        }
        
    }
    
}


