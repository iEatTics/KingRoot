package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
import com.kingroot.loader.common.protocol.AbsProtocol;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ayy extends AbsProtocol {
    public ArrayList<AppDownloadTask> bdq;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdq = bundle.getParcelableArrayList("resp_get_all_download_task");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putParcelableArrayList("resp_get_all_download_task", this.bdq);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 7;
    }
}
