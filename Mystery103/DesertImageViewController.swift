//
//  DesertImageViewController.swift
//  Mystery103
//
//  Created by David Romanowski on 8/15/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit

class DesertImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func ImageClick(sender: AnyObject) {
        println("Image Click!")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
