//
//  LoadView.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 30.11.2021.
//

import UIKit

class LoadView: UIView {

    override func draw(_ rect: CGRect) {
        
// Bezier Loading Logo VK Drawing
                
    let bezierPath = UIBezierPath()
        
    bezierPath.move(to: CGPoint(x: 81.92, y: 60.63))
    bezierPath.addCurve(to: CGPoint(x: 84.05, y: 59.7), controlPoint1: CGPoint(x: 82.46, y: 60.15), controlPoint2: CGPoint(x: 83.16, y: 59.84))
    bezierPath.addCurve(to: CGPoint(x: 85.11, y: 59.63), controlPoint1: CGPoint(x: 84.38, y: 59.65), controlPoint2: CGPoint(x: 84.73, y: 59.63))
    bezierPath.addCurve(to: CGPoint(x: 104.59, y: 60.13), controlPoint1: CGPoint(x: 103.09, y: 59.63), controlPoint2: CGPoint(x: 102.59, y: 59.12))
    bezierPath.addCurve(to: CGPoint(x: 113.58, y: 79.22), controlPoint1: CGPoint(x: 106.59, y: 61.13), controlPoint2: CGPoint(x: 113.58, y: 79.22))
    bezierPath.addCurve(to: CGPoint(x: 123.58, y: 97.3), controlPoint1: CGPoint(x: 113.58, y: 79.22), controlPoint2: CGPoint(x: 118.58, y: 90.27))
    bezierPath.addCurve(to: CGPoint(x: 131.57, y: 105.33), controlPoint1: CGPoint(x: 128.57, y: 104.33), controlPoint2: CGPoint(x: 131.57, y: 105.33))
    bezierPath.addCurve(to: CGPoint(x: 134.57, y: 105.33), controlPoint1: CGPoint(x: 131.57, y: 105.33), controlPoint2: CGPoint(x: 133.57, y: 106.34))
    bezierPath.addCurve(to: CGPoint(x: 135.57, y: 101.32), controlPoint1: CGPoint(x: 135.57, y: 104.33), controlPoint2: CGPoint(x: 135.57, y: 101.32))
    bezierPath.addLine(to: CGPoint(x: 135.57, y: 75.2))
    bezierPath.addCurve(to: CGPoint(x: 134.57, y: 71.18), controlPoint1: CGPoint(x: 135.57, y: 75.2), controlPoint2: CGPoint(x: 135.57, y: 74.19))
    bezierPath.addCurve(to: CGPoint(x: 129.57, y: 64.15), controlPoint1: CGPoint(x: 133.57, y: 68.16), controlPoint2: CGPoint(x: 130.32, y: 66.91))
    bezierPath.addCurve(to: CGPoint(x: 131.57, y: 60.13), controlPoint1: CGPoint(x: 128.82, y: 61.38), controlPoint2: CGPoint(x: 130.32, y: 61.13))
    bezierPath.addCurve(to: CGPoint(x: 157.55, y: 60.13), controlPoint1: CGPoint(x: 132.82, y: 59.12), controlPoint2: CGPoint(x: 157.55, y: 60.13))
    bezierPath.addCurve(to: CGPoint(x: 160.55, y: 61.13), controlPoint1: CGPoint(x: 157.55, y: 60.13), controlPoint2: CGPoint(x: 160.55, y: 60.13))
    bezierPath.addCurve(to: CGPoint(x: 161.55, y: 66.16), controlPoint1: CGPoint(x: 160.55, y: 61.35), controlPoint2: CGPoint(x: 161.55, y: 63.14))
    bezierPath.addCurve(to: CGPoint(x: 161.55, y: 97.3), controlPoint1: CGPoint(x: 161.55, y: 77.33), controlPoint2: CGPoint(x: 161.55, y: 97.3))
    bezierPath.addCurve(to: CGPoint(x: 163.54, y: 99.31), controlPoint1: CGPoint(x: 161.55, y: 97.3), controlPoint2: CGPoint(x: 162.29, y: 99.06))
    bezierPath.addCurve(to: CGPoint(x: 166.54, y: 98.3), controlPoint1: CGPoint(x: 164.79, y: 99.56), controlPoint2: CGPoint(x: 166.54, y: 98.3))
    bezierPath.addCurve(to: CGPoint(x: 179.53, y: 82.23), controlPoint1: CGPoint(x: 166.54, y: 98.3), controlPoint2: CGPoint(x: 173.54, y: 91.52))
    bezierPath.addCurve(to: CGPoint(x: 190.52, y: 61.13), controlPoint1: CGPoint(x: 185.53, y: 72.94), controlPoint2: CGPoint(x: 188.52, y: 62.14))
    bezierPath.addCurve(to: CGPoint(x: 192.52, y: 60.13), controlPoint1: CGPoint(x: 191.04, y: 60.87), controlPoint2: CGPoint(x: 190.26, y: 60.27))
    bezierPath.addCurve(to: CGPoint(x: 212.5, y: 60.13), controlPoint1: CGPoint(x: 199.02, y: 59.72), controlPoint2: CGPoint(x: 212.5, y: 60.13))
    bezierPath.addCurve(to: CGPoint(x: 215.5, y: 61.13), controlPoint1: CGPoint(x: 212.5, y: 60.13), controlPoint2: CGPoint(x: 214.75, y: 60.13))
    bezierPath.addCurve(to: CGPoint(x: 215.5, y: 64.15), controlPoint1: CGPoint(x: 216.25, y: 62.14), controlPoint2: CGPoint(x: 215.5, y: 64.15))
    bezierPath.addLine(to: CGPoint(x: 207.51, y: 80.22))
    bezierPath.addLine(to: CGPoint(x: 193.52, y: 102.32))
    bezierPath.addCurve(to: CGPoint(x: 193.52, y: 105.33), controlPoint1: CGPoint(x: 193.52, y: 102.32), controlPoint2: CGPoint(x: 192.27, y: 103.33))
    bezierPath.addCurve(to: CGPoint(x: 198.52, y: 110.36), controlPoint1: CGPoint(x: 194.77, y: 107.34), controlPoint2: CGPoint(x: 198.52, y: 110.36))
    bezierPath.addCurve(to: CGPoint(x: 215.5, y: 130.45), controlPoint1: CGPoint(x: 198.52, y: 110.36), controlPoint2: CGPoint(x: 213.5, y: 125.43))
    bezierPath.addCurve(to: CGPoint(x: 217.5, y: 137.48), controlPoint1: CGPoint(x: 217.5, y: 135.47), controlPoint2: CGPoint(x: 217.5, y: 137.48))
    bezierPath.addCurve(to: CGPoint(x: 216.5, y: 140.5), controlPoint1: CGPoint(x: 217.5, y: 137.48), controlPoint2: CGPoint(x: 218, y: 139.49))
    bezierPath.addCurve(to: CGPoint(x: 211.5, y: 141.5), controlPoint1: CGPoint(x: 215, y: 141.5), controlPoint2: CGPoint(x: 211.5, y: 141.5))
    bezierPath.addCurve(to: CGPoint(x: 195.52, y: 141.5), controlPoint1: CGPoint(x: 211.5, y: 141.5), controlPoint2: CGPoint(x: 196.52, y: 141.5))
    bezierPath.addCurve(to: CGPoint(x: 190.52, y: 137.48), controlPoint1: CGPoint(x: 194.52, y: 141.5), controlPoint2: CGPoint(x: 194.52, y: 141.25))
    bezierPath.addCurve(to: CGPoint(x: 179.53, y: 126.43), controlPoint1: CGPoint(x: 186.53, y: 133.71), controlPoint2: CGPoint(x: 179.53, y: 126.43))
    bezierPath.addCurve(to: CGPoint(x: 174.54, y: 121.41), controlPoint1: CGPoint(x: 179.53, y: 126.43), controlPoint2: CGPoint(x: 175.53, y: 122.41))
    bezierPath.addCurve(to: CGPoint(x: 167.54, y: 117.39), controlPoint1: CGPoint(x: 173.54, y: 120.4), controlPoint2: CGPoint(x: 167.54, y: 117.39))
    bezierPath.addCurve(to: CGPoint(x: 163.54, y: 117.39), controlPoint1: CGPoint(x: 167.54, y: 117.39), controlPoint2: CGPoint(x: 165.04, y: 117.14))
    bezierPath.addCurve(to: CGPoint(x: 161.55, y: 118.39), controlPoint1: CGPoint(x: 162.05, y: 117.64), controlPoint2: CGPoint(x: 162.54, y: 117.39))
    bezierPath.addCurve(to: CGPoint(x: 161.55, y: 135.47), controlPoint1: CGPoint(x: 160.55, y: 119.4), controlPoint2: CGPoint(x: 161.55, y: 134.47))
    bezierPath.addCurve(to: CGPoint(x: 160.55, y: 138.49), controlPoint1: CGPoint(x: 161.55, y: 136.48), controlPoint2: CGPoint(x: 160.55, y: 138.49))
    bezierPath.addCurve(to: CGPoint(x: 153.55, y: 141.5), controlPoint1: CGPoint(x: 160.55, y: 138.49), controlPoint2: CGPoint(x: 159.75, y: 141.29))
    bezierPath.addCurve(to: CGPoint(x: 135.57, y: 138.49), controlPoint1: CGPoint(x: 148.53, y: 141.67), controlPoint2: CGPoint(x: 138.25, y: 139.39))
    bezierPath.addCurve(to: CGPoint(x: 121.58, y: 131.45), controlPoint1: CGPoint(x: 129.57, y: 136.48), controlPoint2: CGPoint(x: 121.58, y: 131.45))
    bezierPath.addCurve(to: CGPoint(x: 113.58, y: 124.42), controlPoint1: CGPoint(x: 121.58, y: 131.45), controlPoint2: CGPoint(x: 117.08, y: 127.94))
    bezierPath.addCurve(to: CGPoint(x: 107.59, y: 117.39), controlPoint1: CGPoint(x: 110.09, y: 120.91), controlPoint2: CGPoint(x: 107.59, y: 117.39))
    bezierPath.addCurve(to: CGPoint(x: 81.92, y: 60.63), controlPoint1: CGPoint(x: 107.59, y: 117.39), controlPoint2: CGPoint(x: 73.2, y: 68.3))
        
        UIColor(red: 0.169, green: 0.165, blue: 0.135, alpha: 0.1).setStroke()
        bezierPath.lineWidth = 8
        bezierPath.lineCapStyle = .round
        bezierPath.lineJoinStyle = .round
        bezierPath.stroke()
        
        let layerLineSpeed = CAShapeLayer()
// colors
        layerLineSpeed.strokeColor = UIColor(red: 0.128, green: 0.126, blue: 0.102, alpha: 1).cgColor
// no background for logo
// layerLineSpeed.fillColor = UIColor.clear.cgColor
        layerLineSpeed.fillColor = UIColor(red: 0.255, green: 0.249, blue: 0.205, alpha: 0.48).cgColor
// line width
        layerLineSpeed.lineWidth = 5
// round lines conres
        layerLineSpeed.lineCap = .round
        layerLineSpeed.shadowColor = UIColor.white.cgColor
        layerLineSpeed.shadowOffset = CGSize.zero
        layerLineSpeed.shadowRadius = 5
        layerLineSpeed.shadowOpacity = 0.5

        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.fromValue = 0
        strokeEndAnimation.toValue = 1
        strokeEndAnimation.duration = 4

        layerLineSpeed.path = bezierPath.cgPath
        layerLineSpeed.add(strokeEndAnimation, forKey: nil)
        self.layer.addSublayer(layerLineSpeed)
    }
}
