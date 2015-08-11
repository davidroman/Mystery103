//
//  DrawCircleView.swift
//  Mystery103
//
//  Created by David Romanowski on 8/7/15.
//  Copyright (c) 2015 David Romanowski. All rights reserved.
//

import UIKit

// let π:CGFloat = CGFloat(M_PI)
// let Pi:CGFloat = 3.14159
// let π:CGFloat = CGFloat(M_PI)

@IBDesignable class DrawCircleView: UIView {

    @IBInspectable var CircleColor: UIColor = UIColor.blueColor()

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    // 1
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
    
    // 2
        let radius: CGFloat = max(bounds.width, bounds.height)
    // 3
        let startAngle: CGFloat = (3 * 3.1415926535) / 4
    //
        let endAngle: CGFloat = 3.1415926535 / 2
    // 4
        var path = UIBezierPath(arcCenter: center,
            radius: radius/4,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: true)
    // 5
        path.lineWidth = 25
        CircleColor.setStroke()
        path.stroke()
        
    }

}
