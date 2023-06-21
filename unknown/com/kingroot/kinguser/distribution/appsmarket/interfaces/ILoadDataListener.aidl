// ILoadAppsListener.aidl
package com.kingroot.kinguser.distribution.appsmarket.interfaces;

// Declare any non-default types here with import statements

interface ILoadDataListener {
    oneway void onReceive(int retCode, in List<String> hotWord);
}
