package com.kingroot.kinguser;

import android.os.Environment;
import android.text.TextUtils;
import com.kingroot.kinguser.bpw;
import java.io.File;
/* loaded from: classes.dex */
public class bpy {
    protected bpt bIe = new bpt(bIf);
    public static bpy bId = null;

    /* renamed from: d */
    private static boolean f2001d = false;
    protected static final bpu bIf = new bpu(ahj(), bpv.f1997m, bpv.f1991g, bpv.f1992h, bpv.f1987c, bpv.f1993i, 10, bpv.f1989e, bpv.f1998n);

    public static bpy ahi() {
        if (bId == null) {
            synchronized (bpy.class) {
                if (bId == null) {
                    bId = new bpy();
                    f2001d = true;
                }
            }
        }
        return bId;
    }

    private bpy() {
    }

    /* renamed from: a */
    protected void m5849a(int i, String str, String str2, Throwable th) {
        if (f2001d) {
            String m5780b = bqo.m5780b();
            if (!TextUtils.isEmpty(m5780b)) {
                String str3 = m5780b + " SDK_VERSION:3.2.1.lite";
                if (this.bIe != null) {
                    bpx.bIc.m5829c(32, Thread.currentThread(), System.currentTimeMillis(), "openSDK_LOG", str3, null);
                    this.bIe.m5829c(32, Thread.currentThread(), System.currentTimeMillis(), "openSDK_LOG", str3, null);
                    f2001d = false;
                } else {
                    return;
                }
            }
        }
        bpx.bIc.m5829c(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        if (bpw.C2561a.m5858a(bpv.f1986b, i) && this.bIe != null) {
            this.bIe.m5829c(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        }
    }

    /* renamed from: a */
    public static final void m5848a(String str, String str2) {
        ahi().m5849a(1, str, str2, null);
    }

    /* renamed from: aP */
    public static final void m5846aP(String str, String str2) {
        ahi().m5849a(2, str, str2, null);
    }

    /* renamed from: a */
    public static final void m5847a(String str, String str2, Throwable th) {
        ahi().m5849a(2, str, str2, th);
    }

    /* renamed from: aT */
    public static final void m5845aT(String str, String str2) {
        ahi().m5849a(4, str, str2, null);
    }

    /* renamed from: d */
    public static final void m5841d(String str, String str2) {
        ahi().m5849a(8, str, str2, null);
    }

    /* renamed from: e */
    public static final void m5840e(String str, String str2) {
        ahi().m5849a(16, str, str2, null);
    }

    /* renamed from: b */
    public static final void m5843b(String str, String str2, Throwable th) {
        ahi().m5849a(16, str, str2, th);
    }

    /* renamed from: b */
    public static void m5844b() {
        synchronized (bpy.class) {
            ahi().m5842d();
            if (bId != null) {
                bId = null;
            }
        }
    }

    protected static File ahj() {
        boolean z = false;
        String str = bpv.f1988d;
        bpw.C2563c ahh = bpw.C2562b.ahh();
        if (ahh != null && ahh.m5851c() > bpv.f1990f) {
            z = true;
        }
        return z ? new File(Environment.getExternalStorageDirectory(), str) : new File(bqo.ahj(), str);
    }

    /* renamed from: d */
    protected void m5842d() {
        if (this.bIe != null) {
            this.bIe.m5880a();
            this.bIe.m5877b();
            this.bIe = null;
        }
    }
}
