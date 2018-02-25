//
//  RectangleWrapper.h
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#import <Foundation/Foundation.h>

// Keep this class independent of any c/c++ types.
// as swift won't be able to understand those. The
// trick is to use a raw pointer that's void* to
// point to the c++ type and do a reinterpret_cast
// in the implementation file before using it.
@interface RectangleWrapper : NSObject {
@private
    void* ptr;
}

- (RectangleWrapper*) init;
- (void) draw;

@end
