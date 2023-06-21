package com.kingroot.kinguser.common.check;

import com.kingroot.kinguser.common.check.ISuCheckListener;

interface ICheckExecuteService {

	//不强制也不静默检查
	oneway void checkAsync(boolean isForceCheck, boolean isSilenCheck, ISuCheckListener listener);

	// 延迟时间，再进行3次替换检查
	oneway void delayCheckAgain();

	boolean checkSync(boolean isForceCheck, boolean isSilentCheck, in ISuCheckListener listener, in List checkUnitList);
}