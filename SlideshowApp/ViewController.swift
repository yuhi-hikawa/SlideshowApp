//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 樋川雄飛 on 2019/07/11.
//  Copyright © 2019 Yuhi Hikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageIndex = 0
    
    var timer: Timer!
    
    let images = [UIImage(named: "good"), UIImage(named: "heart"), UIImage(named: "home")]
    
    @objc func onTimer(_ timer: Timer) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
        
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func move(_ sender: UIButton) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
    }
    
    @IBAction func back(_ sender: UIButton) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
    }
    
    @IBAction func startStop(_ sender: UIButton) {
        
        if timer == nil { timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true) } else {
            timer.invalidate()
            timer = nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = images[0]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let bigViewController:BigViewController = segue.destination as! BigViewController
       
        bigViewController.x = imageView.image
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }


}

