//
//  Environment.swift
//  TestEnvironment
//
//  Created by Shalu Scaria on 2018-09-20.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation

public enum PlistKey {
    case ServerURL
    
    func value() -> String {
        switch self {
        case .ServerURL:
            return "server_url"
        }
    }
}
public struct Environment {
    
    fileprivate var infoDict: [String: Any]  {
        get {
            if let dict = Bundle.main.infoDictionary {
                return dict
            }else {
                fatalError("Plist file not found")
            }
        }
    }
    public func configuration(_ key: PlistKey) -> String {
        switch key {
        case .ServerURL:
            return infoDict[PlistKey.ServerURL.value()] as! String
        }
    }
}
