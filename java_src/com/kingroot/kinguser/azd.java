package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class azd extends AbsProtocol {
    public String bdt;
    public boolean bdu;
    public int bdv;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdt = bundle.getString("req_file_path");
        this.bdu = bundle.getBoolean("req_system_install_after_silent_failed");
        this.bdv = bundle.getInt("resp_ret");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putString("req_file_path", this.bdt);
        bundle.putBoolean("req_system_install_after_silent_failed", this.bdu);
        bundle.putInt("resp_ret", this.bdv);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 5;
    }
}
