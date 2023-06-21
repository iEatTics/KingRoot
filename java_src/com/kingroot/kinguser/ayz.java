package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class ayz extends AbsProtocol {
    public AppDownloadTask bdr;
    public String bds;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdr = (AppDownloadTask) bundle.getParcelable("req_get_save_path");
        this.bds = bundle.getString("resp_get_save_path");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putParcelable("req_get_save_path", this.bdr);
        bundle.putString("resp_get_save_path", this.bds);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 12;
    }
}
