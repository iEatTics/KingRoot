package com.kingroot.kinguser;

import android.os.Bundle;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class ayn extends AbsProtocol {

    /* renamed from: lc */
    public String f1638lc;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(Bundle bundle) {
        this.f1638lc = bundle.getString("resp");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(Bundle bundle) {
        bundle.putString("resp", this.f1638lc);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 2001;
    }
}
