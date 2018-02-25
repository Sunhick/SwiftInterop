//
//  main.swift
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

import Foundation

let log = Logger()
log.debug(msg: "Happy coding")

log.debug(msg: "Swift calling into C++")
let rect = RectangleWrapper()
rect?.draw()
