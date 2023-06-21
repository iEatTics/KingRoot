package com.kingroot.kinguser.ai;

interface IAntiInjectClient {

    // 添加日志
    oneway void addLog(in String log);

    // 设置hook状态
    oneway void setHookStatus(in String status);

}