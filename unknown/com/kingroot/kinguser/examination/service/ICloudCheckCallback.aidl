package com.kingroot.kinguser.examination.service;

/**
 * 云查回调
 */
interface ICloudCheckCallback {

	// 发现风险
	oneway void onRiskFound(in Bundle bundle);

	// 检查结束
	oneway void onFinish(int errCode);
}