//
//  RectangleWrapper.h
//  interop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RectangleWrapper : NSObject {
@private
    void* ptr;
}

- (RectangleWrapper*) init;
- (void) draw;

@end
