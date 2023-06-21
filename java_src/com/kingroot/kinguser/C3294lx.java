package com.kingroot.kinguser;

import android.os.Parcel;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.lx */
/* loaded from: classes.dex */
public final class C3294lx extends AbstractC3211jf {

    /* renamed from: vv */
    private String f3039vv;

    /* renamed from: vw */
    private String f3040vw;

    /* renamed from: vx */
    private String f3041vx;

    /* renamed from: vy */
    private String f3042vy;

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3153hi
    /* renamed from: aZ */
    public /* bridge */ /* synthetic */ InterfaceC3152hh mo3124aZ() {
        return super.mo3124aZ();
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf
    /* renamed from: b */
    public /* bridge */ /* synthetic */ void mo3123b(boolean z) {
        super.mo3123b(z);
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3153hi
    /* renamed from: ba */
    public /* bridge */ /* synthetic */ boolean mo3122ba() {
        return super.mo3122ba();
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3280ll
    public /* bridge */ /* synthetic */ int getType() {
        return super.getType();
    }

    public C3294lx(String str, int i, String str2, String str3, String str4, String str5, InterfaceC3152hh interfaceC3152hh, boolean z) {
        super(str, 0, i, interfaceC3152hh);
        this.f3039vv = str2;
        this.f3040vw = str3;
        this.f3041vx = str4;
        this.f3042vy = str5;
        mo3123b(z);
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: ct */
    public int mo3120ct() {
        if (!m3121bn(this.f3039vv)) {
            return 100663305;
        }
        boolean m3117en = m3117en();
        if (m3117en && !m3121bn(this.f3040vw)) {
            return 100663308;
        }
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (!interfaceC3195it.mo3126h(true)) {
            return 100663306;
        }
        interfaceC3195it.mo3131aC("chmod 755 " + this.f3039vv);
        if (m3117en) {
            interfaceC3195it.mo3131aC("chmod 755 " + this.f3040vw);
        }
        return 100663297;
    }

    /* renamed from: en */
    private static boolean m3117en() {
        return C3183ih.m3497bW().m3545bN() && C3304mf.m3090ey();
    }

    /* renamed from: bn */
    private static boolean m3121bn(String str) {
        return !TextUtils.isEmpty(str) && new File(str).exists();
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: d */
    public void mo3119d(Parcel parcel) {
        super.mo3119d(parcel);
        parcel.writeString(this.f3039vv);
        parcel.writeString(this.f3041vx);
        parcel.writeString(this.f3042vy);
        if (!TextUtils.isEmpty(this.f3040vw)) {
            parcel.writeString(this.f3040vw);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: dV */
    public List<String> mo3118dV() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f3039vv);
        if (!TextUtils.isEmpty(this.f3040vw)) {
            arrayList.add(this.f3040vw);
        }
        return arrayList;
    }

    public String toString() {
        return this.f3039vv + "," + this.f3041vx + "," + this.f3042vy;
    }
}
