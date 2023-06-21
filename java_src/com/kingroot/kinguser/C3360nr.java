package com.kingroot.kinguser;

import android.os.Parcel;
import android.os.Parcelable;
import com.king.uranus.daemon.CmdResult;
/* renamed from: com.kingroot.kinguser.nr */
/* loaded from: classes.dex */
public final class C3360nr implements Parcelable.Creator<CmdResult> {
    @Override // android.os.Parcelable.Creator
    /* renamed from: g */
    public CmdResult createFromParcel(Parcel parcel) {
        return new CmdResult(parcel.readString(), Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: at */
    public CmdResult[] newArray(int i) {
        return new CmdResult[i];
    }
}
