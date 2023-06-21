package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class azq extends AbsProtocol {
    public AppDownloadTask bdz;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdz = (AppDownloadTask) bundle.getParcelable("req_task");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putParcelable("req_task", this.bdz);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 31;
    }
}
