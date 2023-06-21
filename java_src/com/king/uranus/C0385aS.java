package com.king.uranus;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C3212jg;
import com.kingroot.kinguser.InterfaceC3155hk;
/* renamed from: com.king.uranus.aS */
/* loaded from: classes.dex */
public final class C0385aS implements Parcelable, InterfaceC3155hk {
    public static final Parcelable.Creator<C0385aS> CREATOR = new C3212jg();
    public int pid;
    public String process;

    /* renamed from: sU */
    public int f218sU;
    public int uid;

    public C0385aS(int i, int i2, String str) {
        this(i, i2, str, 0);
    }

    public C0385aS(int i, int i2, String str, int i3) {
        this.uid = i2;
        this.pid = i;
        this.process = str;
        this.f218sU = i3;
    }

    public C0385aS(Parcel parcel) {
        this.uid = parcel.readInt();
        this.pid = parcel.readInt();
        this.process = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.uid);
        parcel.writeInt(this.pid);
        parcel.writeString(this.process);
    }

    @Override // com.kingroot.kinguser.InterfaceC3155hk
    public int getUid() {
        return this.uid;
    }

    @Override // com.kingroot.kinguser.InterfaceC3155hk
    /* renamed from: aY */
    public String mo3611aY() {
        return this.process;
    }
}
