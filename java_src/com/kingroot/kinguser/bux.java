package com.kingroot.kinguser;

import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
/* loaded from: classes.dex */
public class bux {
    public AppInfo appInfo;
    public int bON;
    public int bOO = 0;

    /* renamed from: a */
    public static bux m5453a(AvailUpdateEntity availUpdateEntity, int i, int i2) {
        bux buxVar = new bux();
        buxVar.bOO = i2;
        buxVar.bON = i;
        buxVar.appInfo = bur.m5471a(availUpdateEntity, i2);
        return buxVar;
    }
}
