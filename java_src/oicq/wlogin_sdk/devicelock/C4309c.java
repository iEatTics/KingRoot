package oicq.wlogin_sdk.devicelock;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: oicq.wlogin_sdk.devicelock.c */
/* loaded from: classes.dex */
final class C4309c implements Parcelable.Creator<DevlockInfo> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public DevlockInfo createFromParcel(Parcel parcel) {
        return new DevlockInfo(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a */
    public DevlockInfo[] newArray(int i) {
        return new DevlockInfo[i];
    }
}
