package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
interface ILoadAppHistoryListener {
	oneway void onComplete(in List<AppDownLoadModel> appDownLoadModels);
}