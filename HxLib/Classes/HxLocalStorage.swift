//
//  HxLocalStorage.swift
//  Pods
//
//  Created by Antonio Perez on 2017-04-18.
//
//

import Foundation
public class HxLocalStorage: AnyObject {
    
    
    static var defaultValues:[String:AnyObject] = [String:AnyObject]()
    
    public class func defaultValue(_ float:Float, forKey key:String) {
        HxLocalStorage.defaultValues[key] = float as AnyObject
    }
    public class func defaultValue(_ int:Int, forKey key:String) {
        HxLocalStorage.defaultValues[key] = int as AnyObject
    }
    public class func defaultValue(_ string:String, forKey key:String) {
        HxLocalStorage.defaultValues[key] = string as AnyObject
    }
    public class func defaultValue(_ bool:Bool, forKey key:String) {
        HxLocalStorage.defaultValues[key] = bool as AnyObject
    }

    
    public class func erase(_ key:String){
        let userDefaults = UserDefaults.standard
        userDefaults.set(nil, forKey: key)
        userDefaults.synchronize()
    }
    
    public class func write(_ data:AnyObject? = nil, forKey key:String){
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: key)
        userDefaults.synchronize()
    }
    
    
    public class func write(_ float:Float, forKey key:String) {
        HxLocalStorage.write(float as AnyObject, forKey:key)
    }
    
    public class func write(_ int:Int, forKey key:String) {
        HxLocalStorage.write(int as AnyObject, forKey:key)
    }
    
    public class func write(_ string:String, forKey key:String) {
        HxLocalStorage.write(string as AnyObject, forKey:key)
    }
    
    public class func write(_ bool:Bool, forKey key:String) {
        HxLocalStorage.write(bool as AnyObject, forKey:key)
    }
    
    
    public class func read(_ keyStr:String)->AnyObject? {
        let userDefaults = UserDefaults.standard
        if let data:AnyObject = userDefaults.object(forKey: keyStr) as AnyObject? {
                return data
        }
        if let defaultValue:AnyObject = HxLocalStorage.defaultValues[keyStr] as AnyObject? {
            return defaultValue
        }
        return nil
    }
    
    
    public class func stringValue(forKey str:String)->String {
        return HxLocalStorage.read(str) as! String
    }
    
    public class func intValue(forKey str:String)->Int {
        return HxLocalStorage.read(str) as! Int
    }
    
    public class func boolValue(forKey str:String)->Bool {
        return HxLocalStorage.read(str) as! Bool
    }
    
    
}

