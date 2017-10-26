//
//  RosesDetailViewController.swift
//  Roses
//
//  Created by Mohammad Amiraslani on 10/24/17.
//  Copyright © 2017 Babak. All rights reserved.
//

import UIKit

class RosesDetailViewController: UIViewController {
    
    @IBOutlet var roseImageView: UIImageView!
    var roseImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roseImageView.image = UIImage(named: roseImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
