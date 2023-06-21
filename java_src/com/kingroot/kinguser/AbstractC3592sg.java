package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.sg */
/* loaded from: classes.dex */
public abstract class AbstractC3592sg {

    /* renamed from: Gy */
    private Map<String, AbstractC3591sf> f3518Gy;

    /* renamed from: Gz */
    private byte[] f3519Gz = new byte[0];

    /* renamed from: cF */
    protected abstract AbstractC3591sf mo2261cF(String str);

    /* renamed from: cG */
    public AbstractC3591sf m2265cG(String str) {
        AbstractC3591sf abstractC3591sf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f3519Gz) {
            if (this.f3518Gy == null) {
                this.f3518Gy = new HashMap();
            }
            abstractC3591sf = this.f3518Gy.get(str);
            if (abstractC3591sf == null) {
                abstractC3591sf = mo2261cF(str);
                this.f3518Gy.put(str, abstractC3591sf);
            }
        }
        return abstractC3591sf;
    }
}
