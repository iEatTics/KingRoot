package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.File;
/* renamed from: com.kingroot.kinguser.so */
/* loaded from: classes.dex */
public class C3602so implements InterfaceC3598sk {

    /* renamed from: GG */
    protected String f3527GG;

    public C3602so(String str) {
        this.f3527GG = str;
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    /* renamed from: jp */
    public Object mo2254jp() {
        Object m2247cK;
        if (TextUtils.isEmpty(this.f3527GG)) {
            return null;
        }
        synchronized (this) {
            m2247cK = C3604sq.m2247cK(this.f3527GG);
        }
        return m2247cK;
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    /* renamed from: b */
    public boolean mo2255b(Object obj) {
        boolean m2245d;
        if (TextUtils.isEmpty(this.f3527GG) || obj == null) {
            return false;
        }
        synchronized (this) {
            m2245d = C3604sq.m2245d(obj, this.f3527GG);
        }
        return m2245d;
    }

    /* renamed from: jr */
    public byte[] m2253jr() {
        byte[] m2246cL;
        if (TextUtils.isEmpty(this.f3527GG)) {
            return null;
        }
        synchronized (this) {
            m2246cL = C3604sq.m2246cL(this.f3527GG);
        }
        return m2246cL;
    }

    /* renamed from: x */
    public boolean m2252x(byte[] bArr) {
        boolean m2249a;
        if (TextUtils.isEmpty(this.f3527GG) || bArr == null) {
            return false;
        }
        synchronized (this) {
            m2249a = C3604sq.m2249a(this.f3527GG, bArr);
        }
        return m2249a;
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    public boolean exists() {
        if (TextUtils.isEmpty(this.f3527GG)) {
            return false;
        }
        return new File(this.f3527GG).exists();
    }

    @Override // com.kingroot.kinguser.InterfaceC3598sk
    public boolean delete() {
        if (TextUtils.isEmpty(this.f3527GG)) {
            return false;
        }
        return new File(this.f3527GG).delete();
    }
}
