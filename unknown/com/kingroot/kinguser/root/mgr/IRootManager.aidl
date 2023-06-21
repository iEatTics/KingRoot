package com.kingroot.kinguser.root.mgr;

import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.kinguser.root.mgr.IAppRulesChangeListener;

/**
 * Root授权列表管理服务
 */
interface IRootManager {
    // 更新数据库规则
    oneway void updateRule(String mPkgName, int appRule, long vTime);
    
    // 增加允许规则
    oneway void addAllowRule(String appName, String pkgName, long vTime);
    
    // 增加询问规则
    oneway void addAskRule(String appName, String pkgName, long vTime);
    
    // 增加拒绝规则
    oneway void addDenyRule(String appName, String pkgName, long vTime);
    
    // 添加规则改变监听器
	oneway void addAppRulesChangeListener(in IAppRulesChangeListener listener);
	 
	// 删除规则改变监听器
	oneway void removeAppRulesChangeListener(in IAppRulesChangeListener listener);
	
	// 预先根据手机应用列表设置好授权管理列表（异步，如果正在进行就忽略这个请求）
	oneway void startPrepareRootMgrList();
	
	// 去除已经删除的应用记录（异步，如果正在进行就忽略这个请求）
	oneway void checkAppRules();
	
	// 根据包名获取名单规则
	int getRuleType(String pkgName);
	
	// 是否在拒绝给予Root权限的列表中
	boolean inDenyRuleList(String pkgName);
	
	// 获取Root应用列表信息
	List<RootMgrAppModel> getAllAppsInfo();
	
	// 应用安装刷新Root描述
	oneway void startPrepareRootMgrListWhenInstall(String pkgName);
	
	// 增加规则
	oneway void addRule(long time, String appName, String pkgName, int rule,long vtime);
	
	// 删除规则
	oneway void deleteRule(String pkgName);
	
	// 返回所有规则列表（包名-规则）
	Map getAllAppRuleList();
	
	// 返回所有允许规则列表（包名-规则）
	Map getAllowAppRuleList();
	
	// 返回所有拒绝规则列表（包名-规则）
	Map getDenyAppRuleList();
	
	// 弹Root提示Toast
	oneway void rootMgrToast(String info, String pkgName);
	
	// 对请求的uid执行写回操作
	void doActionForCallingUid(int callingUid, int action, boolean isFromView);
	
	// 设置弹窗提示是否还在
	oneway void setSuRequestPromptLive(boolean isLive);
	
	// 触发弹窗提示
	oneway void triggerSuRequestPrompt();

	// 预先根据授权管理列表拉取授权百分比（异步，如果正在进行就忽略这个请求）
	oneway void startPrepareRootMgrSuggestion();
}