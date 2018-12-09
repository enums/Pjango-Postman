//
//  PostmanEncryptor.swift
//  Calatrava
//
//  Created by 郑宇琦 on 2018/1/22.
//

import Foundation
import PerfectCrypto

public class PostmanEncryptor {
    
    static fileprivate let cipher = Cipher.aes_256_cbc
    static fileprivate let key = [UInt8](PostmanConfigModel.eKey.data(using: .utf8)!)
    static fileprivate let iv = [UInt8](PostmanConfigModel.eIv.data(using: .utf8)!)
    
    static public func encode(str: String) -> [UInt8]? {
        return encode(bytes: Array(str.utf8))
    }
    
    static public func encode(bytes: [UInt8]) -> [UInt8]? {
        guard let encoded = bytes.encrypt(cipher, key: key, iv: iv) else {
            return nil
        }
        return encoded
    }
    
    static public func decode(bytes: [UInt8]) -> [UInt8]? {
        guard let decoded = bytes.decrypt(cipher, key: key, iv: iv) else {
            return nil
        }
        return decoded
    }
    
}
