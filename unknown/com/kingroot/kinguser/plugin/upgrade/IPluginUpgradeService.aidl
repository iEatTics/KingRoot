package com.kingroot.kinguser.plugin.upgrade;

import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import com.kingroot.kinguser.plugin.upgrade.PluginDownloadCallback;

interface IPluginUpgradeService {
	
	// 获取插件更新单信息
	PluginUpgradeInfo getUpgradeInfo(int pluginId);
	
	// 异步步拉取更新单
	oneway void pullPluginOrderAsync(boolean processAfterPull);
	
	// 同步处理本地更新单，返回处理成功的单数
	int processLocalOrderSync(int fromWhere);
	
	// 同步拉取更新单
	int pullPluginOrderSync(boolean forceCheck);
	
	// 下载插件（后台进行）
	boolean startDownload(int pluginId, PluginDownloadCallback callback);
	
	// 删除插件生效单
	oneway void deleteUpgradeInfo(int pluginId);
	
	// 设置插件生效单flag
	oneway void setUpgradeInfoFlag(in int pluginId, in int flag);
	
	// 停止插件下载
	oneway void stopDownload(in int pluginId);

	// 获取插件更新单信息（所有）
    List<PluginUpgradeInfo> getUpgradeInfoList();
}