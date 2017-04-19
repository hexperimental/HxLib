//
//  HxLocalStorage.swift
//  Pods
//
//  Created by Antonio Perez on 2017-04-18.
//
//

import Foundation
class LocalStorage: NSObject {
    
    class func defaults(_ keyStr:String)->AnyObject {
        let values:Dictionary = ["":""] as [String : Any]
        return values[keyStr]! as AnyObject
    }
    
    
    class func setSetting(_ key:String, data:AnyObject){
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: key)
        userDefaults.synchronize()
    }
    
    
    class func getSetting(_ keyStr:String)->AnyObject{
        let userDefaults = UserDefaults.standard
        if let data:AnyObject = userDefaults.object(forKey: keyStr) as AnyObject? {
            return data
        }
        return LocalStorage.defaults(keyStr)
    }
    
    
}
