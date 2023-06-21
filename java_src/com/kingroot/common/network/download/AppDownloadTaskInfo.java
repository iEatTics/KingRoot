package com.kingroot.common.network.download;

import android.os.Parcel;
import com.kingroot.kinguser.C3753ve;
/* loaded from: classes.dex */
public class AppDownloadTaskInfo extends NetworkLoadTaskInfo {
    @Override // com.kingroot.common.network.download.NetworkLoadTaskInfo, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AppDownloadTaskInfo(Parcel parcel) {
        super(parcel);
    }

    public AppDownloadTaskInfo(C3753ve c3753ve) {
        super(c3753ve);
    }

    public AppDownloadTaskInfo() {
    }

    @Override // com.kingroot.common.network.download.NetworkLoadTaskInfo
    protected void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
    }
}
