package com.kingroot.kinguser.distribution.appsmarket.interfaces;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationState;
interface IReservateGameResult {
     // int AUTH_TYPE_WECHAT = 1;
     // int AUTH_TYPE_QQ = 2;
    oneway  void onResult(boolean result, String activityID, String pkgName, String qq, String wxOpenId);
}