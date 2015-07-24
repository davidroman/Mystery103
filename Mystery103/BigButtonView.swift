//
//  BigButtonView.swift
//  Mystery103
//
//  Created by David Romanowski on 7/12/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit

@IBDesignable
class BigButtonView: UIButton {

    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    @IBInspectable var isAddButton: Bool = true
    @IBInspectable var isHiddenButton: Bool = false
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        var path = UIBezierPath(ovalInRect: rect)
        // UIColor.greenColor().setFill()
        fillColor.setFill()
        path.fill()
        
        //set up the width and height variables for
        //the horizontal stroke of the plus
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        //create the path
        var plusPath = UIBezierPath()
        
        //set the path's line width to the height of the stroke
        plusPath.lineWidth = plusHeight
        
        //move the initial point of the path
        //to the start of the horizontal stroke, better below
        // plusPath.moveToPoint(CGPoint(
        //    x:bounds.width/2 - plusWidth/2,
        //    y:bounds.height/2))
        
        //move the initial point of the path
        //to the start of the horizontal stroke
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2 - plusWidth/2 + 0.5,
            y:bounds.height/2 + 0.5))
        
        //add a point to the path at the end of the stroke, better below
        // plusPath.addLineToPoint(CGPoint(
        //    x:bounds.width/2 + plusWidth/2,
        //    y:bounds.height/2))
        
        //add a point to the path at the end of the horizonal stroke
        plusPath.addLineToPoint(CGPoint(
            x:bounds.width/2 + plusWidth/2 + 0.5,
            y:bounds.height/2 + 0.5))
        
        if isAddButton {
        //move the initial point of the path
        //to the start of the vertical stroke
        plusPath.moveToPoint(CGPoint(
            x:bounds.width/2 + 0.5,
            y:bounds.height/2 - plusWidth/2 + 0.5))
        
        //add a point to the path at the end of the vertical stroke
        plusPath.addLineToPoint(CGPoint(
            x:bounds.width/2 + 0.5,
            y:bounds.height/2 + plusWidth/2 + 0.5))
        }
        
        if isHiddenButton {
            // set this button to hidden or INVISIBLE
            self.hidden = true
        }
        
        //set the stroke color
        UIColor.whiteColor().setStroke()
        
        //draw the stroke
        plusPath.stroke()
    }


}
