package com.kingroot.kinguser;

import android.os.Parcel;
import android.os.Parcelable;
import kingcom.core.network.download.UpdateInfo;
/* loaded from: classes.dex */
public final class cai implements Parcelable.Creator<UpdateInfo> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: be */
    public UpdateInfo createFromParcel(Parcel parcel) {
        return new UpdateInfo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: kR */
    public UpdateInfo[] newArray(int i) {
        return new UpdateInfo[i];
    }
}
