//
//  OtherViewController.swift
//  Mystery103
//
//  Created by David Romanowski on 7/22/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit



class OtherViewController: UIViewController {
    
    var viewmyRandom = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var RandomOutlet: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
       RandomOutlet.text = "The counter was tapped \(viewmyRandom) times."
        
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
