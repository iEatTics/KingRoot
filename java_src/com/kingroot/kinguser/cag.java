package com.kingroot.kinguser;

import android.os.Parcel;
import android.os.Parcelable;
import kingcom.core.network.download.AppDownloadTaskInfo;
import kingcom.core.network.download.CommonFileDownloadTaskInfo;
import kingcom.core.network.download.NetworkLoadTaskInfo;
/* loaded from: classes.dex */
public final class cag implements Parcelable.Creator<NetworkLoadTaskInfo> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: bd */
    public NetworkLoadTaskInfo createFromParcel(Parcel parcel) {
        NetworkLoadTaskInfo commonFileDownloadTaskInfo;
        int readInt = parcel.readInt();
        switch (readInt) {
            case 1:
                commonFileDownloadTaskInfo = new AppDownloadTaskInfo(parcel);
                break;
            case 2:
                commonFileDownloadTaskInfo = new CommonFileDownloadTaskInfo(parcel);
                break;
            default:
                commonFileDownloadTaskInfo = new NetworkLoadTaskInfo(parcel);
                break;
        }
        commonFileDownloadTaskInfo.f4934a = readInt;
        return commonFileDownloadTaskInfo;
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: kQ */
    public NetworkLoadTaskInfo[] newArray(int i) {
        return new NetworkLoadTaskInfo[i];
    }
}
