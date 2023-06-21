package com.kingroot.kinguser;

import android.os.Parcel;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.lj */
/* loaded from: classes.dex */
public final class C3278lj extends AbstractC3211jf {

    /* renamed from: ks */
    private final String f3008ks;

    /* renamed from: uR */
    private String f3009uR;

    /* renamed from: uS */
    private final int f3010uS;

    /* renamed from: uT */
    private final String f3011uT;

    /* renamed from: uU */
    private final String f3012uU;

    /* renamed from: uV */
    private final String f3013uV;

    /* renamed from: uW */
    private final int f3014uW;

    /* renamed from: uX */
    private String f3015uX;

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

    public C3278lj(String str, int i, int i2, String str2, String str3, String str4, int i3, String str5, InterfaceC3152hh interfaceC3152hh, boolean z) {
        super(str, 1, i, interfaceC3152hh);
        this.f3010uS = i2;
        this.f3011uT = str2;
        if (this.f3010uS == 1 && TextUtils.isEmpty(str4)) {
            throw new IllegalArgumentException("normal dex required entry method name");
        }
        this.f3012uU = str3;
        this.f3013uV = str4;
        this.f3014uW = i3;
        this.f3008ks = str5;
        mo3123b(z);
    }

    /* renamed from: dT */
    public int m3173dT() {
        return this.f3010uS;
    }

    /* renamed from: dU */
    public boolean m3172dU() {
        return this.f3010uS == 2;
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: ct */
    public int mo3120ct() {
        super.mo3120ct();
        C3180if m3497bW = C3183ih.m3497bW();
        if (m3172dU()) {
            if (!new File(m3497bW.m3554bE()).exists()) {
                return 100663303;
            }
            if (!new File(this.f3011uT).exists()) {
                return 100663304;
            }
        } else if (!new File(this.f3011uT).exists()) {
            return 100663302;
        }
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (!interfaceC3195it.mo3126h(true)) {
            return 100663306;
        }
        if (C3304mf.m3091ev() >= 21) {
            interfaceC3195it.mo3131aC("mkdir /data/dalvik-cache/arm/sys");
            interfaceC3195it.mo3131aC("chown 1000:1000 /data/dalvik-cache/arm/sys");
            interfaceC3195it.mo3131aC("chmod 0777 /data/dalvik-cache/arm/sys");
            if (interfaceC3195it.mo3131aC("ls /data/dalvik-cache/arm/sys").mExitValue.intValue() != 0) {
                return 100663313;
            }
        }
        C3230jw c3230jw = new C3230jw(interfaceC3195it);
        try {
            this.f3015uX = c3230jw.m3354a(m3497bW.getPackageName(), new File(this.f3011uT));
            if (m3172dU()) {
                this.f3009uR = c3230jw.m3354a(m3497bW.getPackageName(), new File(m3497bW.m3554bE()));
            }
            return 100663297;
        } catch (FileNotFoundException e) {
            return 100663312;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3211jf, com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: d */
    public void mo3119d(Parcel parcel) {
        super.mo3119d(parcel);
        parcel.writeInt(this.f3010uS);
        if (!m3172dU()) {
            parcel.writeString(this.f3015uX);
            parcel.writeString(this.f3012uU);
            parcel.writeString(this.f3013uV);
            parcel.writeInt(this.f3014uW);
            parcel.writeString(this.f3008ks);
            return;
        }
        parcel.writeString(this.f3009uR);
        parcel.writeString(this.f3015uX);
        parcel.writeString(this.f3012uU);
        parcel.writeInt(this.f3014uW);
        parcel.writeString(this.f3008ks);
    }

    @Override // com.kingroot.kinguser.InterfaceC3280ll
    /* renamed from: dV */
    public List<String> mo3118dV() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f3015uX);
        arrayList.add(this.f3012uU);
        return arrayList;
    }

    public String toString() {
        return this.f3010uS == 1 ? "" + this.f3011uT + "," + this.f3012uU + "," + this.f3013uV + "," + this.f3008ks : "" + this.f3011uT + "," + this.f3012uU + "," + this.f3014uW + "," + this.f3008ks;
    }
}
