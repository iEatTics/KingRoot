package com.kingroot.kinguser;

import android.os.Parcel;
/* renamed from: com.kingroot.kinguser.jf */
/* loaded from: classes.dex */
abstract class AbstractC3211jf implements InterfaceC3280ll {

    /* renamed from: qR */
    private String f2883qR;

    /* renamed from: qZ */
    private InterfaceC3152hh f2884qZ;

    /* renamed from: sS */
    private boolean f2885sS;

    /* renamed from: sT */
    private int f2886sT;

    /* renamed from: sn */
    private int f2887sn;

    public AbstractC3211jf(String str, int i, int i2, InterfaceC3152hh interfaceC3152hh) {
        this.f2883qR = str;
        this.f2887sn = i;
        this.f2886sT = i2;
        this.f2884qZ = interfaceC3152hh;
    }

    @Override // com.kingroot.kinguser.InterfaceC3280ll
    public int getType() {
        return this.f2887sn;
    }

    @Override // com.kingroot.kinguser.InterfaceC3153hi
    /* renamed from: aZ */
    public InterfaceC3152hh mo3124aZ() {
        return this.f2884qZ;
    }

    @Override // com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: ct */
    public int mo3120ct() {
        return 100663297;
    }

    @Override // com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: d */
    public void mo3119d(Parcel parcel) {
        parcel.writeInt(this.f2887sn);
        parcel.writeString(this.f2883qR);
        parcel.writeInt(this.f2886sT);
        ((C3286lr) this.f2884qZ).m3153d(parcel);
    }

    /* renamed from: b */
    public void mo3123b(boolean z) {
        this.f2885sS = z;
    }

    @Override // com.kingroot.kinguser.InterfaceC3153hi
    /* renamed from: ba */
    public boolean mo3122ba() {
        return this.f2885sS;
    }
}
