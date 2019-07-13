//
//  BigViewController.swift
//  SlideshowApp
//
//  Created by 樋川雄飛 on 2019/07/12.
//  Copyright © 2019 Yuhi Hikawa. All rights reserved.
//

import UIKit

class BigViewController: UIViewController {
    
    var x:UIImage! = nil

    @IBOutlet weak var imageView: UIImageView!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = x
        
     
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
