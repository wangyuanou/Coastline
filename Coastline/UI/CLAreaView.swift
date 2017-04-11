//
//  CLAreaView.swift
//  Coastline
//
//  Created by 王渊鸥 on 2017/4/11.
//  Copyright © 2017年 王渊鸥. All rights reserved.
//

import UIKit

public class CLAreaView: UIView {
	public var colors:[UIColor] = [UIColor(colorLiteralRed: 1, green: 0, blue: 1, alpha: 0.4),
	                               UIColor(colorLiteralRed: 0, green: 1, blue: 1, alpha: 0.4),
	                               UIColor(colorLiteralRed: 0, green: 0, blue: 1, alpha: 0.4),
	                               UIColor(colorLiteralRed: 1, green: 0, blue: 1, alpha: 0.4)]
	
	var currentRate:CGFloat = 0
	var timer:Timer?
	public var scores:[Int] = [0, 0, 0, 0] {
		didSet {
			timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(scoreTimerAction), userInfo: nil, repeats: true)
		}
	}
	
	public var maxScore:Int = 5

	public override func draw(_ rect: CGRect) {
		let  prc = self.bounds.bigger(rate: CGFloat(currentRate))
		drawScore(items: scores, rect: prc, step: maxScore)
    }
	
	func scoreTimerAction() {
		currentRate += 0.1
		if currentRate >= 0.9 {
			timer?.invalidate()
		}
		
		self.setNeedsDisplay()
	}
	
	func drawScore(items:[Int], rect:CGRect, step:Int)  {
		for n in items.enumerated() {
			if let path = pathOfScore(item: n.element, offset: n.offset, rect: rect, step: step) {
				let color = colors[n.offset]
				color.setFill()
				path.fill()
			}
		}
	}
	
	func pathOfScore(item:Int, offset:Int, rect:CGRect, step:Int) -> UIBezierPath? {
		let r = rect.bigger(rate: CGFloat(item)/CGFloat(step))
		
		switch offset {
		case 0:
			let path = UIBezierPath()
			path.move(to: r.center)
			path.addLine(to: CGPoint(x:r.right, y:r.top + r.centerV))
			path.addArc(withCenter: r.center, radius: rect.height / 2.0, startAngle: 0, endAngle: CGFloat(Double.pi * 3.0 / 2.0), clockwise: false)
			path.close()
			return path
		case 1:
			let path = UIBezierPath()
			path.move(to: r.center)
			path.addLine(to: CGPoint(x:r.right, y:r.top + r.centerV))
			path.addArc(withCenter: r.center, radius: rect.height / 2.0, startAngle: 0, endAngle: CGFloat(Double.pi / 2.0), clockwise: true)
			path.close()
			return path
		case 2:
			let path = UIBezierPath()
			path.move(to: r.center)
			path.addLine(to: CGPoint(x:r.right + r.centerH, y:r.bottom))
			path.addArc(withCenter: r.center, radius: rect.height / 2.0, startAngle: CGFloat(Double.pi / 2.0), endAngle: CGFloat(Double.pi), clockwise: true)
			path.close()
			return path
		case 3:
			let path = UIBezierPath()
			path.move(to: r.center)
			path.addLine(to: CGPoint(x:r.left, y:r.top + r.centerV))
			path.addArc(withCenter: r.center, radius: rect.height / 2.0, startAngle: CGFloat(Double.pi), endAngle: CGFloat(Double.pi * 3.0 / 2.0), clockwise: true)
			path.close()
			return path
		default:
			return nil
		}
	}
}
