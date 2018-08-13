//
//  ImageViewController.swift
//  Cassini
//
//  Created by Clyde Mendonca on 13/08/18.
//

import UIKit

class ImageViewController: UIViewController {
    
    var imageURL : URL? {
        didSet {
            imageView.image = nil
            if view.window != nil {
                fetchImg()
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if imageView.image == nil {
            fetchImg()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    private func fetchImg() {
        if let url = imageURL {
            do {
                let urlContents = try Data(contentsOf: url)
                imageView.image = UIImage(data: urlContents)
            } catch let error {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if imageURL == nil {
            imageURL = URL(string: "https://saturn.jpl.nasa.gov/legacy/multimedia/images/saturn/images/IMG004899.jpg")
        }
    }
    
}
