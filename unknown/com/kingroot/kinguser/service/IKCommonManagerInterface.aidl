// IKCommonManagerInterface.aidl
package com.kingroot.kinguser.service;

// Declare any non-default types here with import statements

interface IKCommonManagerInterface {
    // 获取安全防护开启状态
    int getAntiInjectState();

    // 开启安全防护
    int openAntiInjectFunction();
}
