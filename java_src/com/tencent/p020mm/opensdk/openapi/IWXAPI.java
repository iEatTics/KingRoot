package com.tencent.p020mm.opensdk.openapi;

import android.content.Intent;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import com.tencent.p020mm.opensdk.utils.ILog;
/* renamed from: com.tencent.mm.opensdk.openapi.IWXAPI */
/* loaded from: classes.dex */
public interface IWXAPI {
    void detach();

    int getWXAppSupportAPI();

    boolean handleIntent(Intent intent, IWXAPIEventHandler iWXAPIEventHandler);

    boolean isWXAppInstalled();

    boolean openWXApp();

    boolean registerApp(String str);

    boolean registerApp(String str, long j);

    boolean sendReq(BaseReq baseReq);

    boolean sendResp(BaseResp baseResp);

    void setLogImpl(ILog iLog);

    void unregisterApp();
}
