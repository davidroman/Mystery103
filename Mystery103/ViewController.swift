//
//  ViewController.swift
//  Mystery103
//
//  Created by David Romanowski on 7/7/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit

var myRandom = 8

class ViewController: UIViewController {
    
    
    @IBOutlet var Hello: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func BigButton(sender: UIButton) {
        println("Plus button")
        Hello.font = UIFont.boldSystemFontOfSize(28.0)
    }
    
    @IBAction func BigMinusButton(sender: BigButtonView) {
        println("Minus button")
        Hello.font = UIFont.systemFontOfSize(16.0)
    }
    
    @IBAction func Button() {
        myRandom  = Int(arc4random_uniform(UInt32(100)))
        println("The random number is: \(myRandom)")
        switch myRandom {
        case 0...9:
            Hello.text = "Single digit: \(myRandom)"
        case 10...12:
            Hello.text = "tweener number is: \(myRandom)"
        case 13...19:
            Hello.text = "Teens!: \(myRandom)"
        case 20...49:
            Hello.text = "Less than half: \(myRandom)"
        case 50...99:
            Hello.text = "Big number: \(myRandom)"
          default:
            println("number: \(myRandom)")
        }

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowRandomSegue"
        {
            if let destinationVC = segue.destinationViewController as? OtherTwoViewController{
                   destinationVC.viewMyRandom = myRandom
            }
        }
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("In Segue")
    // Get the new view controller using 
        // if segue.identifier == "MySegue" {
          //  println("segue is MySegue")
            //segue.destinationViewController as? OtherViewController
            if let destinationVC : OtherViewController = segue.destinationViewController as? OtherViewController{
                println("Value of myRandom just before setting viewmyRandom is: \(myRandom)")
                destinationVC.viewmyRandom = myRandom
        }
    // Pass the selected object to the new view controller.
    // if segue.identifier ... }


  }
 */
    
}
