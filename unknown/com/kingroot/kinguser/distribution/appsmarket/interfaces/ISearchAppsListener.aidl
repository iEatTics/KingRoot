// ILoadAppsListener.aidl
package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;

// Declare any non-default types here with import statements

interface ISearchAppsListener {
    oneway void onReceive(int retCode, in String searcheContent, int fetchSize, int fetchOffset, int cid, in List<AppBaseModel> appModels);
}
