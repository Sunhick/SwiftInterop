//
//  LoggerWrapper-Interface.h
//  SwiftInterop
//
//  Created by Sunil on 2/25/18.
//  Copyright © 2018 Sunil. All rights reserved.
//

#ifndef LoggerWrapper_Interface_h
#define LoggerWrapper_Interface_h

class LoggerWrapperImpl {
public:
    LoggerWrapperImpl(void);
    ~LoggerWrapperImpl(void);
    
    void init(void);
    void info(const char* cmsg);
    void debug(const char* cmsg);
    
private:
    void* self;
    
};

#endif /* LoggerWrapper_Interface_h */
