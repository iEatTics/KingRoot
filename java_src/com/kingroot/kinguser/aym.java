package com.kingroot.kinguser;

import android.os.Bundle;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class aym extends AbsProtocol {
    public int bcS;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(Bundle bundle) {
        this.bcS = bundle.getInt("resp", -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(Bundle bundle) {
        bundle.putInt("resp", this.bcS);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 5;
    }
}
