package com.kingroot.loader.common.protocol;

import android.os.Bundle;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class BaseProtocol extends AbsProtocol {
    public BaseProtocol(int i) {
        this.mCmdId = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return this.mCmdId;
    }
}
