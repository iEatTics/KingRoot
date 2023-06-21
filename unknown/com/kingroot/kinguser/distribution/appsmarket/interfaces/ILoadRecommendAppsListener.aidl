// ILoadAppsListener.aidl
package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;

// Declare any non-default types here with import statements

interface ILoadRecommendAppsListener {
    oneway void onReceive(int retCode, int cid , String pkg, in List<AppBaseModel> appModels);
}
