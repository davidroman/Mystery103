//
//  OtherTwoViewController.swift
//  Mystery103
//
//  Created by David Romanowski on 7/31/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit

class OtherTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var leftswipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightswipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var upswipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var downswipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        leftswipe.direction = .Left
        rightswipe.direction = .Right
        upswipe.direction = .Up
        downswipe.direction = .Down
        
        view.addGestureRecognizer(leftswipe)
        view.addGestureRecognizer(rightswipe)
        view.addGestureRecognizer(upswipe)
        view.addGestureRecognizer(downswipe)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var DirectionLabel: UILabel!
    
    func handleSwipes(sender: UISwipeGestureRecognizer) {
        if (sender.direction == .Up) {
            DirectionLabel.text = "UP"
            self.view.backgroundColor = UIColor.greenColor()
        }
        
        if (sender.direction == .Right) {
            DirectionLabel.text = "RIGHT"
            self.view.backgroundColor = UIColor.blueColor()
        }
        
        if (sender.direction == .Down) {
            DirectionLabel.text = "DOWN"
            self.view.backgroundColor = UIColor.redColor()
        }
        
        if (sender.direction == .Left) {
            DirectionLabel.text = "LEFT"
            self.view.backgroundColor = UIColor.yellowColor()
        }
    }

    var viewMyRandom = 0
    
    @IBOutlet weak var RandomLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        RandomLabel.text = "The Random number is: \(viewMyRandom)."
        
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
