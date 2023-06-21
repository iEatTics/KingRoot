package com.king.uranus.daemon;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3365nw;
/* loaded from: classes.dex */
public class RunningAppProcessInfoLite implements Parcelable {
    public static final Parcelable.Creator<RunningAppProcessInfoLite> CREATOR = new C3365nw();

    /* renamed from: eF */
    private String f286eF;
    private int pid;
    private int uid;

    public /* synthetic */ RunningAppProcessInfoLite(Parcel parcel, C3365nw c3365nw) {
        this(parcel);
    }

    public int getPid() {
        return this.pid;
    }

    public int getUid() {
        return this.uid;
    }

    /* renamed from: fn */
    public String m13646fn() {
        return this.f286eF;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.pid);
        parcel.writeInt(this.uid);
        parcel.writeString(this.f286eF);
    }

    private RunningAppProcessInfoLite(Parcel parcel) {
        this.pid = parcel.readInt();
        this.uid = parcel.readInt();
        this.f286eF = parcel.readString();
    }
}
