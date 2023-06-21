package com.kingroot.kinguser.distribution.appsmarket.interfaces;

interface IMergeApkPatchListener {
    oneway void onMergeResult(String newApkPath, int errorCode, String errorMsg);

}