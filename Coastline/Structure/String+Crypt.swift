//
//  String+Crypt.swift
//  Coastline
//
//  Created by 王渊鸥 on 2016/9/25.
//  Copyright © 2016年 王渊鸥. All rights reserved.
//

import Foundation

public extension String {
	public var md5: String {
		return MD5(self)
	}
	
	// 获取Base64加密
	public var base64Enc: String? {
		get {
			let data = self.data(using: String.Encoding.utf8)
			return data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
		}
	}
	
	// 获取Base64解密
	public var base64Dec: String? {
		get {
			if let data = Data(base64Encoded: self, options: NSData.Base64DecodingOptions(rawValue: 0)) {
				if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
					return result as String
				}
			}
			return nil
		}
	}
	
	// 生成一个UUID值
	public static var UUID:String {
		get {
			let puuid = CFUUIDCreate(nil)
			if let suuid = CFUUIDCreateString(nil, puuid) {
				return "\(suuid)"
			} else {
				return "\(UInt64.random())"+"\(UInt64.random())"+"\(UInt64.random())"
			}
		}
	}
}
