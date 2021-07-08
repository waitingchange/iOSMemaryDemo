//
//  InstanceDemo.hpp
//  iOSMemaryDemo
//
//  Created by MacBook Pro on 6/17/21.
//

#ifndef INSTANCE_DEMO_HPP
#define INSTANCE_DEMO_HPP

#if defined __cplusplus
#include <stdio.h>

class InstanceDemo
{
public:
    static InstanceDemo *getInstance();
    InstanceDemo();
    ~InstanceDemo();
    void test();
    char *sBuffer;
    
private:
    static InstanceDemo *m_instance;
    
};
#endif /* __cplusplus */
#endif /* INSTANCE_DEMO_HPP */
