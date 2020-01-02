//
//  CommonParams.swift
//  ZSSwiftCommon
//
//  Created by zhoushuai on 2020/1/2.
//

import Foundation

//MARK: - 布局参数
public let kISIphoneSE = (UIScreen.main.bounds.size.width == 320.0)

public let KISIphoneX = (UIScreen.main.bounds.size.height/UIScreen.main.bounds.size.width >= 2.16)

public let kDeviceHeight:CGFloat =  UIScreen.main.bounds.size.height

public let kDeviceWidth:CGFloat = UIScreen.main.bounds.size.width

public let kStatusBarHeight:CGFloat = KISIphoneX ? 44.0 : 20.0

public let kNavBarContentHeight:CGFloat  = 44.0

public let kNavBarHeight:CGFloat = kNavBarContentHeight + kNavBarContentHeight

public let kTabBarHeight:CGFloat = KISIphoneX ? 49.0 + 34.0 : 49.0

public let kTabBarSafeHeight:CGFloat = KISIphoneX ? 34.0 : 49.0

public let kScale = kDeviceWidth/375


//MARK: - 系统版本
public let kSystemVersion = Double(UIDevice.current.systemVersion) ?? 8.0
public let kiOS7Later = (kSystemVersion >= 7)
public let kiOS8Later = (kSystemVersion >= 8)
public let kiOS9Later = (kSystemVersion >= 9)
public let kiOS10Later = (kSystemVersion >= 10)
public let kiOS11Later = (kSystemVersion >= 11)
public let kiOS12Later = (kSystemVersion >= 12)
public let kiOS13Later = (kSystemVersion >= 13)


// MARK: Info信息
public let kAppBundleInfo = Bundle.main.infoDictionary ?? Dictionary()
public let kAppBundleVersion = (kAppBundleInfo["CFBundleShortVersionString" as String] as? String ) ?? ""
public let kAppBundleBuild = (kAppBundleInfo["CFBundleVersion"] as? String ) ?? ""
public let kAppDisplayName = (kAppBundleInfo["CFBundleDisplayName"] as? String ) ?? ""




