package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
interface IRequestResultListener {
	oneway void onFinish(in List<AppBaseModel> models);
}