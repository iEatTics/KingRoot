package com.kingroot.kinguser.examination.service;

import com.kingroot.kinguser.examination.service.ICloudCheckCallback;
import com.kingroot.kinguser.examination.service.CloudCheckLiteInfo;

/**
 * 云查服务
 */
interface ICloudCheckManager {

	// 异步检查（指定包名）
	oneway void cloudCheckApps(in List<String> installedPkgNames, in ICloudCheckCallback callback);

	// 异步检查（全量）
	oneway void cloudCheckAll(in ICloudCheckCallback callback);

	// 异步检查APK（APK路径）
	oneway void cloudCheckApks(in String apkPath, in ICloudCheckCallback callback);

    // 注销监听回调（APK路径）
    oneway void registerCallback(in String apkPath, in ICloudCheckCallback callback);

    // 注销监听回调（APK路径）
    oneway void unregisterCallback(in String apkPath);

	// 获取全部未处理的风险软件
	List<String> getUntreatedRiskApps();

	// 标记已经处理风险软件
	oneway void markTreatedRiskApps(in List<String> markApps);

	// 获取全部未禁止过Root授权的风险软件
	List<String> getUndeniedRiskApps();

	// 标记已经禁止过Root授权风险软件
	oneway void markDeniedRiskApps(in List<String> markApps);

	// 下载管家mini包
	oneway void downloadWeSecure();

	// 删除本地记录的风险软件
	oneway void removeAppInfos(in List<String> packages);

	// 获取风险软件类型
	int getRiskType(String packageName);

	// 获取云查名单所有风险软件
	List<String> getAllRiskApps();

	// 云查SDK判断管家是否已经安装
	boolean isWeSecureInstalled();

	// 跳转到手管病毒查杀页面（如果手管没有病毒查杀模块则跳到手管主界面）
	void gotoWeSecureVirusScan();

	// 获取所有云查失败软件
	List<String> getCloudCheckFailedAppsCache();

	// 获取云查名单所有未知软件
    List<String> getAllUnknownApps();

    // 获取风险软件安全级别
    List<CloudCheckLiteInfo> getAllRiskAppsLiteInfo();
}