package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class aze extends AbsProtocol {
    public long bdw;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdw = bundle.getLong("req_seconds");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putLong("req_seconds", this.bdw);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 6;
    }
}
