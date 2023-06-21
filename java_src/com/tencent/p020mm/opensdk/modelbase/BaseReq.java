package com.tencent.p020mm.opensdk.modelbase;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.utils.C4173a;
/* renamed from: com.tencent.mm.opensdk.modelbase.BaseReq */
/* loaded from: classes.dex */
public abstract class BaseReq {
    public String openId;
    public String transaction;

    public abstract boolean checkArgs();

    public void fromBundle(Bundle bundle) {
        this.transaction = C4173a.m490b(bundle, "_wxapi_basereq_transaction");
        this.openId = C4173a.m490b(bundle, "_wxapi_basereq_openid");
    }

    public abstract int getType();

    public void toBundle(Bundle bundle) {
        bundle.putInt("_wxapi_command_type", getType());
        bundle.putString("_wxapi_basereq_transaction", this.transaction);
        bundle.putString("_wxapi_basereq_openid", this.openId);
    }
}
