package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class bpd {
    private List bFl = new ArrayList();

    /* renamed from: com.kingroot.kinguser.bpd$a */
    /* loaded from: classes.dex */
    public static class C2549a {

        /* renamed from: a */
        private long f1883a;

        /* renamed from: b */
        private int f1884b;

        /* renamed from: c */
        private String f1885c;

        public C2549a(long j, int i, String str) {
            this.f1883a = j;
            this.f1884b = i;
            if (TextUtils.isEmpty(str)) {
                this.f1885c = "";
            } else {
                this.f1885c = bok.m6066b(str);
            }
        }

        /* renamed from: a */
        public final String m5995a() {
            return this.f1883a + "," + this.f1884b + "," + this.f1885c;
        }
    }

    /* renamed from: a */
    public final String m5997a() {
        String sb;
        synchronized (this.bFl) {
            if (this.bFl.size() == 0) {
                sb = "";
            } else {
                StringBuilder sb2 = new StringBuilder();
                for (C2549a c2549a : this.bFl) {
                    sb2.append(c2549a.m5995a());
                    sb2.append(";");
                }
                sb = sb2.toString();
            }
        }
        return sb;
    }

    /* renamed from: a */
    public final void m5996a(C2549a c2549a) {
        synchronized (this.bFl) {
            if (this.bFl.size() < 20) {
                this.bFl.add(c2549a);
            }
        }
    }
}
