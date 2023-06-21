package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.je */
/* loaded from: classes.dex */
public abstract class AbstractC3210je implements InterfaceC3284lp {

    /* renamed from: sR */
    private final C3340ne f2882sR;

    public AbstractC3210je(String str) {
        this.f2882sR = new C3340ne(C3183ih.m3497bW().m3552bG() + File.separator + str, true);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    /* renamed from: j */
    public final void mo3164j(String str, String str2) {
        this.f2882sR.setProperty(str, str2);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    /* renamed from: a */
    public final void mo3167a(String str, int i) {
        this.f2882sR.setProperty(str, String.valueOf(i));
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    /* renamed from: b */
    public void mo3165b(String str, long j) {
        this.f2882sR.setProperty(str, String.valueOf(j));
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    public final String getString(String str) {
        return this.f2882sR.getProperty(str);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    public final int getInt(String str) {
        String property = this.f2882sR.getProperty(str);
        if (TextUtils.isEmpty(property)) {
            return 0;
        }
        return Integer.parseInt(property);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    public long getLong(String str) {
        String property = this.f2882sR.getProperty(str);
        if (TextUtils.isEmpty(property)) {
            return 0L;
        }
        return Long.parseLong(property);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    public final Map<String, String> getAll() {
        return new HashMap(this.f2882sR.getAll());
    }

    /* renamed from: a */
    public void m3428a(Map<String, String> map) {
        this.f2882sR.m2904a(map);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    public final void remove(String str) {
        this.f2882sR.m2902bE(str);
    }

    @Override // com.kingroot.kinguser.InterfaceC3284lp
    /* renamed from: a */
    public void mo3166a(Set<String> set) {
        this.f2882sR.m2903a(set);
    }
}
