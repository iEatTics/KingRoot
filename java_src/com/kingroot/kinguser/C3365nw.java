package com.kingroot.kinguser;

import android.os.Parcel;
import android.os.Parcelable;
import com.king.uranus.daemon.RunningAppProcessInfoLite;
/* renamed from: com.kingroot.kinguser.nw */
/* loaded from: classes.dex */
public final class C3365nw implements Parcelable.Creator<RunningAppProcessInfoLite> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: h */
    public RunningAppProcessInfoLite createFromParcel(Parcel parcel) {
        return new RunningAppProcessInfoLite(parcel, null);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: au */
    public RunningAppProcessInfoLite[] newArray(int i) {
        return new RunningAppProcessInfoLite[i];
    }
}
