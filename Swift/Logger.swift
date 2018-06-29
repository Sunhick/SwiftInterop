//  Copyright © 2018 Sunil. All rights reserved.

import Foundation

@objc class Logger : NSObject {
    var name: String
    
    required init(_ name: String) {
        self.name = name
        print("[\(name)]: Logger init")
    }
    
    @objc func debug(msg : String) {
        print("[\(name)] DEBUG: " + msg)
    }
    
    @objc func info(msg : String) {
        print("[\(name)] INFO: " + msg)
    }
    
    deinit {
        print("[\(name)]: Logger deinit")
    }
}
