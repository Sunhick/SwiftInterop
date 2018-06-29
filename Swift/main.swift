//  Copyright © 2018 Sunil. All rights reserved.

import Foundation

func main() {
    let log = Logger("Swift")
    log.debug(msg: "Happy coding")
    
    log.debug(msg: "Swift calling into C++")
    let rect = NSRectangle()
    rect?.draw()
}

main()
