//
//  DrawArchView.swift
//  Mystery103
//
//  Created by David Romanowski on 8/1/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit

let Complete = 8
let π:CGFloat = CGFloat(M_PI)

@IBDesignable class DrawArchView: UIView {
    
    @IBInspectable var counter: Int = 8
    @IBInspectable var outlineColor: UIColor = UIColor.blueColor()
    @IBInspectable var ArchColor: UIColor = UIColor.greenColor()
    
    override func drawRect(rect: CGRect) {
        
        // 1
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        // 2
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        // 3
        let arcWidth: CGFloat = 70 //76
        
        // 4
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        // 5
        var path = UIBezierPath(arcCenter: center,
            radius: radius/2 - arcWidth/2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        ArchColor.setStroke()
        path.stroke()
        
        //Draw the outline
        
        //1 - first calculate the difference between the two angles
        //ensuring it is positive
        let angleDifference: CGFloat = 2 * π - startAngle + endAngle
        
        //then calculate the arc for each single glass
        let arcLengthPerGlass = angleDifference / CGFloat(Complete)
        
        //then multiply out by the actual glasses drunk
        let outlineEndAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        
        //2 - draw the outer arc
        var outlinePath = UIBezierPath(arcCenter: center,
            radius: bounds.width/2 - 2.5,
            startAngle: startAngle,
            endAngle: outlineEndAngle,
            clockwise: true)
        
        //3 - draw the inner arc
        outlinePath.addArcWithCenter(center,
            radius: bounds.width/2 - arcWidth + 2.5,
            startAngle: outlineEndAngle,
            endAngle: startAngle,
            clockwise: false)
        
        //4 - close the path
        outlinePath.closePath()
        
        outlineColor.setStroke()
        outlinePath.lineWidth = 5.0
        outlinePath.stroke()
        
    }
}


