package com.king.uranus;

import com.kingroot.kinguser.InterfaceC3282ln;
import java.io.File;
import java.io.Serializable;
/* renamed from: com.king.uranus.bq */
/* loaded from: classes.dex */
public class C0396bq {

    /* renamed from: vn */
    public static long f237vn = 15000;

    /* renamed from: vo */
    private InterfaceC3282ln f238vo;

    /* renamed from: vp */
    private String f239vp;

    /* renamed from: a */
    public synchronized void m13671a(InterfaceC3282ln interfaceC3282ln, String str) {
        this.f238vo = interfaceC3282ln;
        this.f239vp = str;
    }

    /* renamed from: bi */
    public void m13669bi(String str) {
        C0397a c0397a = new C0397a(str);
        c0397a.f241fJ = C0406cs.m13655fh();
        m13672a(c0397a);
    }

    /* renamed from: bj */
    public void m13668bj(String str) {
        m13667bk(str);
    }

    /* renamed from: f */
    public int m13664f(String str, boolean z) {
        int m13670b = m13670b(f237vn, str);
        if (!z) {
            m13667bk(str);
        }
        return m13670b;
    }

    /* renamed from: bk */
    private void m13667bk(String str) {
        try {
            new File(m13665bm(str)).delete();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private int m13670b(long j, String str) {
        C0397a m13666bl = m13666bl(str);
        if (m13666bl == null || m13666bl.f241fJ == null) {
            return 0;
        }
        long m13653fj = m13666bl.f241fJ.m13653fj();
        if (Math.abs(m13653fj) <= 86400000) {
            int m13658a = C0406cs.m13658a(m13666bl.f241fJ, C0406cs.m13655fh(), null);
            if (m13658a == C0406cs.f272xp) {
                return 1;
            }
            return (m13658a != C0406cs.f271xo || Math.abs(m13653fj) >= 300000) ? 0 : 2;
        }
        return 0;
    }

    /* renamed from: a */
    private void m13672a(C0397a c0397a) {
        synchronized (this) {
            this.f238vo.mo3141c(m13665bm(c0397a.f240eF), c0397a);
        }
    }

    /* renamed from: bl */
    private C0397a m13666bl(String str) {
        Object mo3142bd;
        synchronized (this) {
            mo3142bd = this.f238vo.mo3142bd(m13665bm(str));
        }
        if (mo3142bd != null && (mo3142bd instanceof C0397a)) {
            return (C0397a) mo3142bd;
        }
        return null;
    }

    /* renamed from: bm */
    private String m13665bm(String str) {
        return this.f239vp + File.separator + str + "_stat.dat";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.king.uranus.bq$a */
    /* loaded from: classes.dex */
    public static class C0397a implements Serializable {

        /* renamed from: eF */
        public String f240eF;

        /* renamed from: fJ */
        public C0406cs f241fJ = null;

        public C0397a(String str) {
            this.f240eF = str;
        }
    }
}
