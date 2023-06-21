package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.pf */
/* loaded from: classes.dex */
public class C3418pf {

    /* renamed from: yC */
    private C3683u f3282yC;

    /* renamed from: yD */
    private C3871x f3283yD;

    public C3418pf(C3871x c3871x, C3683u c3683u) {
        this.f3283yD = c3871x;
        this.f3282yC = c3683u;
    }

    /* renamed from: ay */
    public String m2653ay(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        String str = "cache001" + currentTimeMillis;
        if (i == 1 || i == 3) {
            return "cache002" + currentTimeMillis + ".dex";
        }
        return str;
    }

    /* renamed from: a */
    public void m2655a(@NonNull C3441pt c3441pt, @NonNull String str, @NonNull InterfaceC3443pv interfaceC3443pv, @NonNull cbe cbeVar) {
        Context m5098ge = bzu.m5098ge();
        String absolutePath = m5098ge.getCacheDir().getAbsolutePath();
        if (!TextUtils.isEmpty(c3441pt.fileName)) {
            String m2654a = m2654a(c3441pt.fileName, c3441pt.f3341zf, cbeVar);
            if (!TextUtils.isEmpty(m2654a)) {
                if (new File(m2654a).exists()) {
                    m2652b(c3441pt, m2654a, interfaceC3443pv, cbeVar);
                    return;
                }
            } else {
                return;
            }
        }
        C3398oz.m2663gh().m2670a(c3441pt.url, str, new bzp(m5098ge, absolutePath, new C3419pg(this, c3441pt, interfaceC3443pv, cbeVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m2651m(int i, int i2) {
        if (this.f3282yC != null && this.f3283yD.f3936gt != 0) {
            C3820w m5025a = cba.m5025a(this.f3283yD.f3936gt, this.f3283yD.f3937gu, 0, this.f3282yC.conchSeqno, this.f3282yC.f3608gh, i, 0, i2);
            C3498r c3498r = new C3498r();
            c3498r.f3460ge = new ArrayList<>();
            c3498r.f3460ge.add(m5025a);
            cay.akw().m5029a(c3498r, null);
        }
    }

    /* renamed from: a */
    private String m2658a(int i, String str, String str2, cbe cbeVar) {
        if (i == 2) {
            return cbb.m5023be(str, str2);
        }
        if (i == 1) {
            return cbb.m5024bd(str, str2);
        }
        return cbeVar.mo5016d(i, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m2652b(@NonNull C3441pt c3441pt, @NonNull String str, @NonNull InterfaceC3443pv interfaceC3443pv, @NonNull cbe cbeVar) {
        if (!TextUtils.isEmpty(c3441pt.f3337mf) && !TextUtils.equals(C3125gk.m3696c(new File(str)).toLowerCase(), c3441pt.f3337mf.toLowerCase())) {
            m2651m(3, 3);
            return;
        }
        String m2658a = m2658a(c3441pt.f3339zd, str, c3441pt.f3340ze, cbeVar);
        if (TextUtils.isEmpty(m2658a)) {
            m2651m(3, 3);
            return;
        }
        cby cbyVar = null;
        if (!C3398oz.m2663gh().m2665e(str, interfaceC3443pv)) {
        }
        if (c3441pt.f3342zg == 1) {
            cbyVar = interfaceC3443pv.mo2618cj(m2658a);
        } else if (c3441pt.f3342zg == 0) {
            cbyVar = interfaceC3443pv.mo2617ck(m2658a);
        } else {
            m2651m(3, 3);
        }
        if (c3441pt.f3339zd != 4 && c3441pt.f3339zd != 3) {
            try {
                if (!interfaceC3443pv.mo2618cj("rm " + str).success()) {
                    try {
                        new File(str).delete();
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
            }
        }
        if (cbyVar != null && cbyVar.success()) {
            m2651m(3, 1);
        } else {
            m2651m(3, 2);
        }
    }

    /* renamed from: a */
    private static String m2654a(String str, int i, cbe cbeVar) {
        switch (i) {
            case 1:
                return cbeVar.mo5014gs(str);
            default:
                return "";
        }
    }
}
