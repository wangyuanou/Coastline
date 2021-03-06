//
//  Rect+Operation.swift
//  Coastline
//
//  Created by 王渊鸥 on 2017/2/8.
//  Copyright © 2017年 王渊鸥. All rights reserved.
//

import UIKit

public func +(p1:CGPoint, p2:CGPoint) -> CGPoint {
	return CGPoint(x: p1.x+p2.x, y: p1.y+p2.y)
}

public func -(p1:CGPoint, p2:CGPoint) -> CGPoint {
	return CGPoint(x: p1.x-p2.x, y: p1.y-p2.y)
}

public func +(p1:CGPoint, p2:(CGFloat, CGFloat)) -> CGPoint {
	return CGPoint(x: p1.x + p2.0, y: p1.y + p2.1)
}

public func -(p1:CGPoint, p2:(CGFloat, CGFloat)) -> CGPoint {
	return CGPoint(x: p1.x - p2.0, y: p1.y - p2.1)
}

public func +=( p1:inout CGPoint, p2:CGPoint) {
	p1 = p1 + p2
}

public func -=( p1:inout CGPoint, p2:CGPoint) {
	p1 = p1 - p2
}

public func +=( p1:inout CGPoint, p2:(CGFloat, CGFloat)) {
	p1 = p1 + p2
}

public func -=( p1:inout CGPoint, p2:(CGFloat, CGFloat)) {
	p1 = p1 - p2
}



public func +(s1:CGSize, s2:CGSize) -> CGSize {
	return CGSize(width: s1.width + s2.width, height: s1.height + s2.height)
}

public func -(s1:CGSize, s2:CGSize) -> CGSize {
	return CGSize(width: s1.width - s2.width, height: s1.height - s2.height)
}

public func +(s1:CGSize, s2:(CGFloat, CGFloat)) -> CGSize {
	return CGSize(width: s1.width + s2.0, height: s1.height + s2.1)
}

public func -(s1:CGSize, s2:(CGFloat, CGFloat)) -> CGSize {
	return CGSize(width: s1.width - s2.0, height: s1.height - s2.1)
}

public func *(s:CGSize, rt:(CGFloat, CGFloat)) -> CGSize {
	return CGSize(width: s.width * rt.0, height: s.height * rt.1)
}

public func /(s:CGSize, rt:(CGFloat, CGFloat)) -> CGSize {
	return CGSize(width: s.width / rt.0, height: s.height / rt.1)
}



public func +(r:CGRect, p:CGPoint) -> CGRect {
	return CGRect(origin: r.origin + p, size: r.size)
}

public func -(r:CGRect, p:CGPoint) -> CGRect {
	return CGRect(origin: r.origin - p, size: r.size)
}

public func +(r:CGRect, p:(CGFloat, CGFloat)) -> CGRect {
	return CGRect(origin: r.origin + p, size: r.size)
}

public func -(r:CGRect, p:(CGFloat, CGFloat)) -> CGRect {
	return CGRect(origin: r.origin - p, size: r.size)
}

public func +(r1:CGRect, r2:CGRect) -> CGRect {
	return CGRect(origin: r1.origin + r2.origin, size: r1.size + r2.size)
}

public func -(r1:CGRect, r2:CGRect) -> CGRect {
	return CGRect(origin: r1.origin - r2.origin, size: r1.size - r2.size)
}

public func +(r1:CGRect, r2:(CGFloat, CGFloat, CGFloat, CGFloat)) -> CGRect {
	return  CGRect(origin: r1.origin + (r2.0, r2.1), size: r1.size + (r2.2, r2.3))
}

public func -(r1:CGRect, r2:(CGFloat, CGFloat, CGFloat, CGFloat)) -> CGRect {
	return  CGRect(origin: r1.origin - (r2.0, r2.1), size: r1.size - (r2.2, r2.3))
}

public func *(r:CGRect, rt:(CGFloat, CGFloat)) -> CGRect {
	return CGRect(origin: r.origin, size: r.size * rt)
}

public func /(r:CGRect, rt:(CGFloat, CGFloat)) -> CGRect {
	return CGRect(origin: r.origin, size: r.size / rt)
}

public func +=( r:inout CGRect, p:(CGFloat, CGFloat)) {
	r = r + p
}

public func -=( r:inout CGRect, p:(CGFloat, CGFloat)) {
	r = r - p
}

public func +=( r1:inout CGRect, r2:(CGFloat, CGFloat, CGFloat, CGFloat)) {
	r1 = r1 + r2
}

public func -=( r1:inout CGRect, r2:(CGFloat, CGFloat, CGFloat, CGFloat)) {
	r1 = r1 - r2
}

