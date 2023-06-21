package com.kingroot.kinguser;

import android.os.Parcel;
/* renamed from: com.kingroot.kinguser.lr */
/* loaded from: classes.dex */
public class C3286lr implements InterfaceC3152hh {
    public final int pid;
    public final String process;
    public final int uid;

    public C3286lr(int i, String str, int i2) {
        this.uid = i;
        this.process = str;
        this.pid = i2;
    }

    /* renamed from: d */
    public void m3153d(Parcel parcel) {
        parcel.writeInt(this.uid);
        if (this.process != null) {
            parcel.writeString(this.process);
        } else {
            parcel.writeString("");
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3152hh
    /* renamed from: aX */
    public int mo3155aX() {
        return this.pid;
    }

    @Override // com.kingroot.kinguser.InterfaceC3152hh
    /* renamed from: aY */
    public String mo3154aY() {
        return this.process;
    }
}
