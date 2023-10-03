//
//  ColorDetailsVC.swift
//  colorApp
//
//  Created by saeed shaikh on 10/1/23.
//

import UIKit

class ColorDetailsVC: UIViewController {
// color getting from prepare function
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let color = color {
            view.backgroundColor = color
        }
//        another way of unwrapping
//        view.backgroundColor = color ?? .white
    }
    


}
