//
//  Logger.swift
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

import Foundation

@objc class Logger : NSObject {
    @objc func debug(msg : String) {
        print("DEBUG: " + msg)
    }
    
    @objc func info(msg : String) {
        print("INFO: " + msg)
    }
}
