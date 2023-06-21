package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class azh extends AbsProtocol {
    public String bdx;
    public int bdy;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdx = bundle.getString("req_pkg_name");
        this.bdy = bundle.getInt("req_net");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putString("req_pkg_name", this.bdx);
        bundle.putInt("req_net", this.bdy);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 24;
    }
}
