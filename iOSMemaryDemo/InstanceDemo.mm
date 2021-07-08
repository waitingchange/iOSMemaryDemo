//
//  InstanceDemo.cpp
//  iOSMemaryDemo
//
//  Created by MacBook Pro on 6/17/21.
//

#include "InstanceDemo.hpp"

InstanceDemo * InstanceDemo::m_instance  = nullptr;

InstanceDemo::InstanceDemo()
{
    sBuffer  = new char[10240000];
//    for(int i = 0; i < 10240000;i++)
//    {
//        sBuffer[i] = 'a';
//    }
}


InstanceDemo::~InstanceDemo()
{
    if (sBuffer) {
        delete []sBuffer;
        sBuffer = nullptr;
    }
}

void InstanceDemo::test()
{

    printf("call InstanceDemo::test() \r\n");
}

InstanceDemo * InstanceDemo::getInstance()
{
    if (m_instance == nullptr) {
        m_instance = new InstanceDemo();
    }
    return m_instance;
}



