//
//  Rect+Fast.swift
//  Coastline
//
//  Created by 王渊鸥 on 2017/3/2.
//  Copyright © 2017年 王渊鸥. All rights reserved.
//

import UIKit

public extension CGPoint {
	public init(_ x:Double,  _ y:Double) {
		self.init(x: CGFloat(x), y: CGFloat(y))
	}
}

public extension CGSize {
	public init(_ w:Double, _ h:Double) {
		self.init(width: CGFloat(w), height: CGFloat(h))
	}
}

public extension CGRect {
	public init(_ x:Double, _ y:Double, _ w:Double, _ h:Double) {
		self.init(origin: CGPoint(x, y), size: CGSize(w, h))
	}
}