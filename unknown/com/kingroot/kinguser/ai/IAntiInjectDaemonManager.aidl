package com.kingroot.kinguser.ai;

import com.kingroot.kinguser.ai.IAntiInjectClient;

interface IAntiInjectDaemonManager {

    // 开关状态
    boolean getSwitcher();

    // 设置反注入开关
    oneway void setSwitcher(boolean isOpen, IAntiInjectClient client);

    // 添加保护包名
    oneway void addProtectedPackages(in List<String> pkgNames);

    // 删除保护包名
    oneway void removeProtectedPackages(in List<String> pkgNames);
    
    // 同步默认受保护进程名
    oneway void syncDefaultProtectedPkgNames(in List<String> procNames);

    // 同步反注入名单
    oneway void syncList(in String whiteIpme, in String whiteSo, in String blackIpme, in String blackSo);

    // 注册客户端回调binder
    oneway void registerClient(IAntiInjectClient client);
}