// ILoadAppsListener.aidl
package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;

// Declare any non-default types here with import statements

interface ILoadAppsDetailListener {
    oneway void onReceive(int retCode, in AppDetailModel detail);
}
