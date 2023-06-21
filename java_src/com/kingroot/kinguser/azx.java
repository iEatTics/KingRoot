package com.kingroot.kinguser;

import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.protocol.AbsProtocol;
import com.kingroot.loader.common.protocol.BinderParcel;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class azx extends AbsProtocol {
    public int bcU;
    public JceStruct bcV;
    public JceStruct bcW;
    public IBinder bdH = null;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bcU = bundle.getInt("req_cmd_id");
        this.bcV = (JceStruct) bundle.getSerializable("req_req_jce");
        this.bcW = (JceStruct) bundle.getSerializable("req_resp_jce");
        BinderParcel binderParcel = (BinderParcel) bundle.getParcelable("resp_callback");
        this.bdH = binderParcel == null ? null : binderParcel.binder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putInt("req_cmd_id", this.bcU);
        bundle.putSerializable("req_req_jce", this.bcV);
        bundle.putSerializable("req_resp_jce", this.bcW);
        bundle.putParcelable("resp_callback", BinderParcel.obtain(this.bdH));
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 1;
    }
}
