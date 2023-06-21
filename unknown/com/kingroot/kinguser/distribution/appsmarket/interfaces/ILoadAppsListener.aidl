// ILoadAppsListener.aidl
package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;

// Declare any non-default types here with import statements

interface ILoadAppsListener {
    oneway void onReceive(int retCode, in List<AppBaseModel> appModels);
}
