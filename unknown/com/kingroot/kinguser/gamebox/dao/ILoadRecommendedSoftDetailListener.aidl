package com.kingroot.kinguser.gamebox.dao;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
interface ILoadRecommendedSoftDetailListener {
	oneway void onLoadSoftDetailEnd(in AppDetailModel model);
}