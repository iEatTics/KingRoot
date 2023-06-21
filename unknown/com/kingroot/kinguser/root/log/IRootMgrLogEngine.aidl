package com.kingroot.kinguser.root.log;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;

interface IRootMgrLogEngine{
	// 获取权限日志
	List<RootMgrLogInfo> getLogs();
	
	//添加日志
	oneway void addLog(in RootMgrLogInfo info);
	
	//清除过期的Log
	oneway void clearTimeOutLogs();
		
	// 清空日志
	int clearAllLogs();
	
	// 设置Log条目上限
	oneway void setLogLimit(in int logLimit);
	
	// 设置是否启用日志
	oneway void setLogAble(in boolean able);
	
	// 添加 Logs改变监听器
	oneway void addLogsChangeListener(in ILogsChangeListener listener);
	
	//删除 Logs改变监听器
	oneway void removeLogsChangeListener(in ILogsChangeListener listener);
	
	// 获取今日请求的应用数量
	int getTodayRequestAppCount();

	// 获取今日请求的应用数量
	List<String> getTodayRequestAllowAppList();
	
	//是否存在log
	boolean hasExistLogs();
}