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
    
    var timer: Timer!
    
    
    lazy var gazou = [image1, image2, image3, image4]
    
    var junnjo = 0
    
    
    @IBOutlet weak var fowardButtonText: UIButton!
    @IBAction func fowardButton(_ sender: Any) {
        if self.timer == nil {

        if junnjo == 3 {
            junnjo = 0
        }else{
        junnjo += 1
        }
        
        imageView.image = gazou[junnjo]
        }
        
    }
    
    @IBOutlet weak var backButtonText: UIButton!
    @IBAction func backButton(_ sender: Any) {
        
        if self.timer == nil {

            if junnjo == 0 {
                junnjo = 3
            }else{
                junnjo -= 1
            }
    
            imageView.image = gazou[junnjo]
            
        }
        
    }


    @IBOutlet weak var playButtonText: UIButton!
    @IBAction func playButton(_ sender: Any) {
    
        if self.timer == nil {
        
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(slideShow(_:)), userInfo: nil, repeats: true)
            playButtonText.setTitle("停止", for: .normal)
            self.fowardButtonText.setTitleColor(UIColor.white, for: .normal)
            
        }else{
            self.timer.invalidate()
            self.timer = nil
            playButtonText.setTitle("再生", for: .normal)
        }
        
    }
        
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @objc func slideShow(_ timer: Timer){
        

        
            if junnjo == 3 {
                junnjo = 0
            }else{
                junnjo += 1
            }
        
        imageView.image = gazou[junnjo]
            

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        
        imageView.image = image1
    }


}

