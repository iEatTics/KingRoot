package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
interface IRequestAvailUpdateListener {
    oneway void onFetchResult(in List<AvailUpdateInfo> infos, boolean success);
    oneway void onFetchDiffResult(in List<AvailUpdateInfo> infos, boolean success);
}