//
//  DrawView.swift
//  draw13424
//
//  Created by jaime on 24/11/2019.
//  Copyright © 2019 jaime. All rights reserved.
//

import UIKit

class DrawView: UIView {

    var scale : CGFloat = 1.0
    
    override func draw(_ rect: CGRect) {
        let w = bounds.size.width
        let h = bounds.size.height
        
        let path = UIBezierPath()
        let path2 = UIBezierPath()
        path.move(to: CGPoint(x : w/2, y : h/4))
        path.addLine(to: CGPoint(x: w/3, y: h/3))
        path.addLine(to: CGPoint(x: 2*w/3, y: h/3))
        
        let center = CGPoint(x: 3*w/4, y: 3*h/4)
        let radius = (w-1)/6
        path2.addArc(withCenter: center, radius: radius, startAngle: 0.0, endAngle: .pi*2.0, clockwise: true)
        
        path.lineWidth = 5
        path2.lineWidth = 8
        path.close()
        path2.close()
        UIColor.red.setStroke()
        UIColor.blue.setFill()
        path.fill()
        path.stroke()
        path2.fill()
        path2.stroke()
        
    }
    

}
