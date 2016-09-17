//
//  ViewController.swift
//  CoreImageDemo
//
//  Created by Carlos Buitrago on 12/09/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit
import CoreImage

class ViewController: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func original(_ sender: AnyObject) {
        foto.image = UIImage(named: "aa.jpg")
    }
    @IBAction func gris(_ sender: AnyObject) {
        let image = UIImage(named: "aa.jpg")
        let originalImage = CIImage(image: image!)
        
        // 2
        let filter = CIFilter(name: "CIPhotoEffectMono")
        filter!.setDefaults()
        filter!.setValue(originalImage, forKey: kCIInputImageKey)
        
        // 3
        let outputImage = filter!.outputImage
        let newImage = UIImage(ciImage: outputImage!)
        foto.image = newImage
    }

}

