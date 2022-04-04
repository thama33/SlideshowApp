//
//  ViewController.swift
//  SlideShowApp
//
//  Created by 濱上卓也 on 2022/04/02.
//

import UIKit

class ViewController: UIViewController {
    
    let image1 = UIImage(named: "tree1_haru.png")
    let image2 = UIImage(named: "ohanami_walk.png")
    let image3 = UIImage(named: "ohanami_group.png")
    let image4 = UIImage(named: "yopparai_businessman.png")
    
    
    lazy var gazou = [image1, image2, image3, image4]
    
    var junnjo = 0
    
    
    @IBAction func fowardButton(_ sender: Any) {
        
        if junnjo == 3 {
            junnjo = 0
        }else{
        junnjo += 1
        }
        
        imageView.image = gazou[junnjo]
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        if junnjo == 0 {
        junnjo = 3
        }else{
            junnjo -= 1
        }
    
    imageView.image = gazou[junnjo]    }
    
    @IBAction func playButton(_ sender: Any) {
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        
        imageView.image = image1
    }


}

