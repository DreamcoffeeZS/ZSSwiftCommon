//
//  String+Safe.swift
//  Pods
//
//  Created by zhoushuai on 2020/1/2.
//

import Foundation

public func getSafeString(_ optionalString: String?) ->(String){
    return optionalString ?? ""
}
