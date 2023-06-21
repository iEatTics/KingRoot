package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguser.C3199ix;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.kingroot.kinguser.iu */
/* loaded from: classes.dex */
public class C3196iu implements InterfaceC3195it {

    /* renamed from: sw */
    private static volatile C3196iu f2859sw = null;

    /* renamed from: sx */
    private volatile C3199ix f2860sx = null;

    /* renamed from: sy */
    private volatile boolean f2861sy = false;

    /* renamed from: sz */
    private AtomicInteger f2862sz = new AtomicInteger(0);

    private C3196iu() {
    }

    protected void finalize() {
        m3468cj();
        super.finalize();
    }

    /* renamed from: cg */
    public static C3196iu m3471cg() {
        if (f2859sw == null) {
            synchronized (C3196iu.class) {
                if (f2859sw == null) {
                    f2859sw = new C3196iu();
                }
            }
        }
        return f2859sw;
    }

    private Context getContext() {
        return C3183ih.getContext();
    }

    /* renamed from: ch */
    private C3199ix m3470ch() {
        C3199ix m3459aE = C3198iw.m3459aE("/data/data/com.kingroot.master/applib" + File.separator + "kd");
        if (m3459aE == null && ((C3304mf.m3091ev() < 14 || (m3459aE = C3198iw.m3459aE("ku.sud")) == null) && (m3459aE = C3198iw.m3459aE("su")) == null)) {
            String[] split = System.getenv("PATH").split(":");
            int length = split.length;
            for (int i = 0; i < length; i++) {
                File file = new File(split[i] + "/su");
                if (file.exists() && (m3459aE = C3198iw.m3459aE(file.getAbsolutePath())) != null) {
                    break;
                }
            }
            if (m3459aE == null) {
                File file2 = new File("/system/usr/iku/isu");
                if (!file2.exists() || (m3459aE = C3198iw.m3459aE(file2.getAbsolutePath())) != null) {
                }
            }
        }
        return m3459aE;
    }

    /* renamed from: ci */
    private C3199ix m3469ci() {
        File m3466cl = m3466cl();
        if (m3466cl.exists()) {
            return C3198iw.m3459aE(m3466cl.getAbsolutePath());
        }
        return null;
    }

    /* renamed from: cj */
    public void m3468cj() {
        if (this.f2860sx != null) {
            synchronized (this) {
                if (this.f2860sx != null) {
                    this.f2860sx.shutdown();
                    this.f2860sx = null;
                }
            }
        }
    }

    /* renamed from: a */
    private void m3476a(C3199ix c3199ix) {
        synchronized (this) {
            m3468cj();
            this.f2860sx = c3199ix;
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: cf */
    public boolean mo3129cf() {
        return mo3126h(false);
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: h */
    public boolean mo3126h(boolean z) {
        if (!this.f2861sy && this.f2860sx != null && z) {
            this.f2861sy = m3474b(this.f2860sx);
        }
        boolean z2 = this.f2860sx != null;
        if (!z || (z2 = C3198iw.m3457c(this.f2860sx)) || !z || (z2 = m3467ck())) {
        }
        return z2;
    }

    /* renamed from: ck */
    private synchronized boolean m3467ck() {
        boolean z = true;
        synchronized (this) {
            if (!C3198iw.m3457c(this.f2860sx)) {
                C3199ix m3469ci = m3469ci();
                if (m3469ci != null) {
                    m3476a(m3469ci);
                } else {
                    C3199ix m3470ch = m3470ch();
                    if (m3470ch != null) {
                        this.f2861sy = m3474b(m3470ch);
                        C3199ix m3469ci2 = m3469ci();
                        if (m3469ci2 != null) {
                            m3476a(m3469ci2);
                            m3470ch.shutdown();
                        } else {
                            m3476a(m3470ch);
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private boolean m3474b(C3199ix c3199ix) {
        File m3466cl = m3466cl();
        if (m3466cl.exists() && c3199ix != null) {
            try {
                return c3199ix.m3454aD(m3466cl.getAbsolutePath() + " -d").m3447co();
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: cl */
    private File m3466cl() {
        File file = null;
        String str = getContext().getApplicationInfo().dataDir;
        if (str != null) {
            File file2 = new File(str, "applib");
            if (file2.exists()) {
                file = new File(file2, "kd");
                if (!file.exists()) {
                }
            }
        }
        if (file == null) {
            return new File("/data/data/com.kingroot.kinguser/applib" + File.separator + "kd");
        }
        return file;
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: aC */
    public C3199ix.C3201b mo3131aC(String str) {
        return m3472c(str, true);
    }

    /* renamed from: c */
    public C3199ix.C3201b m3472c(String str, boolean z) {
        return m3477a(new C3199ix.C3202c(str, str, z ? 120000L : 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C3199ix.C3201b m3477a(C3199ix.C3202c c3202c) {
        C3199ix.C3201b c3201b;
        Exception exc;
        if (!mo3129cf()) {
            return new C3199ix.C3201b(c3202c.mCmdFlag, 1, "", "Run Root Cmd Permission Denied");
        }
        C3199ix.C3201b c3201b2 = null;
        try {
            if (this.f2860sx != null) {
                c3201b2 = this.f2860sx.m3453b(c3202c);
                try {
                    this.f2862sz.set(0);
                } catch (Exception e) {
                    c3201b = c3201b2;
                    exc = e;
                    m3475a(exc);
                    c3201b2 = c3201b;
                    if (c3201b2 != null) {
                    }
                }
            }
        } catch (Exception e2) {
            c3201b = null;
            exc = e2;
        }
        if (c3201b2 != null) {
            return new C3199ix.C3201b(c3202c.mCmdFlag, 2, "", "Run Root Cmd Exception");
        }
        return c3201b2;
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: l */
    public List<C3199ix.C3201b> mo3125l(List<String> list) {
        return m3473b(list, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<C3199ix.C3201b> m3473b(List<String> list, boolean z) {
        List<C3199ix.C3201b> list2;
        Exception exc;
        if (!mo3129cf()) {
            return new ArrayList(list.size());
        }
        List<C3199ix.C3201b> list3 = null;
        try {
            if (this.f2860sx != null) {
                list3 = this.f2860sx.m3452c(list, z);
                try {
                    this.f2862sz.set(0);
                } catch (Exception e) {
                    list2 = list3;
                    exc = e;
                    m3475a(exc);
                    list3 = list2;
                    if (list3 != null) {
                    }
                }
            }
        } catch (Exception e2) {
            list2 = null;
            exc = e2;
        }
        if (list3 != null) {
            return new ArrayList(list.size());
        }
        return list3;
    }

    /* renamed from: a */
    private void m3475a(Exception exc) {
        if (exc != null) {
            if (((exc instanceof IOException) || (exc instanceof InterruptedException)) && this.f2862sz.incrementAndGet() >= 3) {
                m3468cj();
                this.f2862sz.set(0);
            }
        }
    }
}
