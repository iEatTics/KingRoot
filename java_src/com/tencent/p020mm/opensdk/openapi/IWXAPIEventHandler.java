package com.tencent.p020mm.opensdk.openapi;

import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
/* renamed from: com.tencent.mm.opensdk.openapi.IWXAPIEventHandler */
/* loaded from: classes.dex */
public interface IWXAPIEventHandler {
    void onReq(BaseReq baseReq);

    void onResp(BaseResp baseResp);
}
