package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.gb */
/* loaded from: classes.dex */
public final class C3116gb {

    /* renamed from: qj */
    private static final Object f2700qj = new Object();

    /* renamed from: qk */
    private static final Object f2701qk = new Object();

    /* renamed from: d */
    public static void m3729d(AbstractC3035ew abstractC3035ew) {
        if (abstractC3035ew != null) {
            try {
                switch (abstractC3035ew.mo3871ad()) {
                    case 1:
                        m3727f(abstractC3035ew);
                        if (C3074fz.m3793ak().m3792al()) {
                            C3121gg.m3723au().m3720ax();
                            break;
                        }
                        break;
                    case 2:
                        m3728e(abstractC3035ew);
                        break;
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: e */
    private static void m3728e(AbstractC3035ew abstractC3035ew) {
        String str = C3050fb.f2653S;
        String valueOf = String.valueOf(abstractC3035ew.getId());
        String format = C3069fu.format("%1$d:%2$s", Integer.valueOf(abstractC3035ew.getId()), C3124gj.m3700h(abstractC3035ew));
        synchronized (f2700qj) {
            C3063fo.m3837a(new File(str, valueOf), format, 307200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ao */
    public static List<AbstractC3035ew> m3737ao() {
        ArrayList arrayList = new ArrayList();
        synchronized (f2700qj) {
            C3063fo.m3835a(C3050fb.f2653S, new C3117gc(arrayList));
        }
        return arrayList;
    }

    /* renamed from: f */
    private static void m3727f(AbstractC3035ew abstractC3035ew) {
        File m3735aq = m3735aq();
        if (m3735aq.exists() && m3735aq.isDirectory()) {
            C3063fo.m3840a(m3735aq);
        }
        synchronized (f2701qk) {
            C3063fo.m3837a(m3735aq, C3069fu.format("%1$d:%2$s", Integer.valueOf(abstractC3035ew.getId()), C3124gj.m3700h(abstractC3035ew)), 307200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ap */
    public static List<AbstractC3035ew> m3736ap() {
        File m3735aq = m3735aq();
        if (!m3735aq.exists() || !m3735aq.isFile()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        synchronized (f2701qk) {
            C3063fo.m3839a(m3735aq, new C3119ge(arrayList));
            C3063fo.m3840a(m3735aq);
        }
        return arrayList;
    }

    /* renamed from: aq */
    private static File m3735aq() {
        return new File(C3050fb.f2652R, "asap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m3730c(List<AbstractC3035ew> list) {
        if (list != null && !list.isEmpty()) {
            File m3732at = m3732at();
            if (m3732at.exists() && m3732at.isDirectory()) {
                C3063fo.m3840a(m3732at);
            }
            ArrayList arrayList = new ArrayList();
            for (AbstractC3035ew abstractC3035ew : list) {
                if (abstractC3035ew != null) {
                    arrayList.add(C3069fu.format("%1$d:%2$s", Integer.valueOf(abstractC3035ew.getId()), C3124gj.m3700h(abstractC3035ew)));
                }
            }
            C3063fo.m3836a(m3732at, arrayList, 3145728L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ar */
    public static List<AbstractC3035ew> m3734ar() {
        File m3732at = m3732at();
        if (!m3732at.exists() || !m3732at.isFile()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        C3063fo.m3839a(m3732at, new C3120gf(arrayList));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: as */
    public static void m3733as() {
        C3063fo.m3840a(m3732at());
    }

    /* renamed from: at */
    private static File m3732at() {
        return new File(C3050fb.f2652R, "es");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ag */
    public static AbstractC3035ew m3739ag(String str) {
        int indexOf;
        if (!TextUtils.isEmpty(str) && (indexOf = str.indexOf(":")) > 0 && indexOf < str.length() - 1) {
            int i = -1;
            try {
                i = Integer.parseInt(str.substring(0, indexOf));
            } catch (NumberFormatException e) {
            }
            if (i > 0) {
                return m3731b(i, str.substring(indexOf + 1));
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    private static AbstractC3035ew m3731b(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] m3704aj = C3124gj.m3704aj(str);
        AbstractC3035ew m3869D = C3047ez.m3869D(i);
        if (m3869D != null && m3869D.m3892a(m3704aj) && m3869D.m3890c(m3704aj)) {
            return m3869D;
        }
        return null;
    }
}
