//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Clyde Mendonca on 13/08/18.
//

import UIKit

class CassiniViewController: UIViewController {
    
    var urls : [String: String] = [
        "Cassini" : "https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth" : "https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn" : "https://www.nasa.gov/sites/default/files/saturn_collage.jpg"
    ]
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let identifier = segue.identifier {
            if let url = urls[identifier] {
                if let imageVC = segue.destination as? ImageViewController {
                    imageVC.imageURL = URL(string: url)
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
    
    
}
