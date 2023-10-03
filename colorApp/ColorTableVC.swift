//
//  ColorTableVC.swift
//  colorApp
//
//  Created by saeed shaikh on 10/1/23.
//

import UIKit

class ColorTableVC: UIViewController{
    
    var colors:[UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addRandomColors()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorDetailsVC
        destVC.color = sender as? UIColor
    }
    
    
    func addRandomColors() {
        for _ in 0..<50 {
//  randomColor comes from custom extension -> UIColor+Ext
            colors.append(.randomColor())
        }
    }

}

extension ColorTableVC : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            print("failed")
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
    
}
