//
//  PostmanConfigModel.swift
//  Calatrava
//
//  Created by 郑宇琦 on 2018/1/22.
//

import Foundation
import Pjango

public class PostmanConfigModel: PCModel {
    
    override public var tableName: String {
        return "PostmanConfig"
    }
    
    public var key = PCDataBaseField.init(name: "KEY", type: .string, length: 64)
    public var value = PCDataBaseField.init(name: "VALUE", type: .string, length: 512)
    
    static public var pUrl: String {
        return PostmanConfigModel.getValueForKey("pUrl") ?? ""
    }
    static public var pKey: String {
        return PostmanConfigModel.getValueForKey("pKey") ?? ""
    }
    static public var eKey: String {
        return PostmanConfigModel.getValueForKey("eKey") ?? ""
    }
    static public var eIv: String {
        return PostmanConfigModel.getValueForKey("eIv") ?? ""
    }
    static public var proxy: String? {
        return PostmanConfigModel.getValueForKey("proxy")
    }
    
    override public func registerFields() -> [PCDataBaseField] {
        return [
            key, value
        ]
    }
    
    static public func getValueForKey(_ key: String) -> String? {
        let values = self.queryObjects(self)?.filter {
            ($0.key.value as! String) == key
        }.map {
            $0.value.value as! String
        }
        if values != nil, values!.count > 0 {
            return values![0]
        } else {
            return nil
        }
    }
    
    override public func initialObjects() -> [PCModel]? {
        return [
            "pUrl": "",
            "pKey": "",
            "eKey": "",
            "eIv": "",
            ].map {
                let config = PostmanConfigModel.init()
                config.key.value = $0.key
                config.value.value = $0.value
                return config
        }
    }
    
}
