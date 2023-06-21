package com.kingroot.kinguser.ai.fore;

import com.kingroot.kinguser.ai.AntiInjectLogModel;
import com.kingroot.kinguser.ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.util.protect.RebootStat;

interface IAntiInjectClientManager {

	// 开启或关闭反注入
	// 结果通过回调传回
    oneway void setSwitcher(in boolean isOpen, 
    		in IAntiInjectSwitcherOpObserver observer);

	// 获取开关状态
	// 开启不成功/开关没有打开则返回失败
	boolean getSwitcher();

    // 添加保护包名
    oneway void addProtectedPackages(in List<String> pkgNames);

    // 删除保护包名
    oneway void removeProtectedPackages(in List<String> pkgNames);
    
    // 获取拦截的所有log
    List<AntiInjectLogModel> getAllLogs();
    
    // 获取注入状态
    RebootStat getRebootStat();
    
    // 注册客户端的binder到aidl
    oneway void registerClient();
    
    // 设置反注入开关(测试)
    oneway void setSwitcherTest(in boolean isOpen, 
    		in IAntiInjectSwitcherOpObserver observer,
    		in int configVal);
    		
    		
    oneway void syncListWithDaemon();

    // 同步调用通知v4即将手动重启,防止误算入v4开启导致重启
    void notifyManuallyReboot();
}