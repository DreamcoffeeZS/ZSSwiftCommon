//
//  UIColor+Hex.swift
//  Pods
//
//  Created by zhoushuai on 2020/1/2.
//

import Foundation


extension UIColor{
    //将十六进制字符串转为颜色
  public static  func getColorFromHex(_ hexString:String) ->UIColor {
        var cString: String = (hexString as NSString).trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        
        if cString.count < 6 {
            return UIColor.black
        }
        
        if cString.hasPrefix("0X") {
            cString = String(cString[cString.index(cString.startIndex, offsetBy: 2)...])
        }
        
        if cString.hasPrefix("#") {
            cString = String(cString[cString.index(cString.startIndex, offsetBy: 1)...])

        }
        
        if cString.count != 6 {
            return UIColor.black
        }
        var range: NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0
        Scanner.init(string: rString).scanHexInt32(&r)
        Scanner.init(string: gString).scanHexInt32(&g)
        Scanner.init(string: bString).scanHexInt32(&b)
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1))
    }
}

public let ZSColor_Black         = UIColor.black
public let ZSColor_Dark          = UIColor.darkGray
public let ZSColor_LightGray     = UIColor.lightGray
public let ZSColor_White         = UIColor.white
public let ZSColor_Gray          = UIColor.gray
public let ZSColor_Red           = UIColor.red
public let ZSColor_Green         = UIColor.green
public let ZSColor_Blue          = UIColor.blue
public let ZSColor_Cyan          = UIColor.cyan
public let ZSColor_Yellow        = UIColor.yellow
public let ZSColor_Magenta       = UIColor.magenta
public let ZSColor_Orange        = UIColor.orange
public let ZSColor_Purple        = UIColor.purple
public let ZSColor_Clear         = UIColor.clear


public let ZSColor7C63C4     =  UIColor.getColorFromHex("#7C63C4") //紫色：主题色
public let ZSColor333333     =  UIColor.getColorFromHex("#333333") //黑色字
public let ZSColor999999     =  UIColor.getColorFromHex("#999999") //浅灰文字
public let ZSColorCCCCCC     =  UIColor.getColorFromHex("#cccccc") //分割线
public let ZSColorF6F6F6     =  UIColor.getColorFromHex("#f6f6f6") //背景色
public let ZSColor666666     =  UIColor.getColorFromHex("#666666") //文字颜色
public let ZSColorF42C28     =  UIColor.getColorFromHex("#f42c28") //红色字
public let ZSColorFFFFFF     =  UIColor.getColorFromHex("#ffffff") //白色字
