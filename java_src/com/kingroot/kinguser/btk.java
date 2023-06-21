package com.kingroot.kinguser;

import android.os.Bundle;
import com.kingroot.loader.common.protocol.AbsProtocol;
import qqpimaccount.AccountInfo;
/* loaded from: classes.dex */
public class btk extends AbsProtocol {

    /* renamed from: a */
    public int f2114a = -1;
    public AccountInfo bMY;

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 1001;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(Bundle bundle) {
        this.f2114a = bundle.getInt("ret");
        this.bMY = (AccountInfo) bundle.getParcelable("account");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(Bundle bundle) {
        bundle.putInt("ret", this.f2114a);
        bundle.putParcelable("account", this.bMY);
    }
}
