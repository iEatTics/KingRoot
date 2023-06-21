package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class aez {
    /* renamed from: au */
    private static SharedPreferences m12133au(Context context) {
        return C3566rv.m2313i(context, "un_c");
    }

    /* renamed from: av */
    public static boolean m12132av(Context context) {
        return m12138a(context, null, false) == 0;
    }

    /* renamed from: a */
    public static int m12138a(Context context, C2516bn c2516bn, boolean z) {
        if (c2516bn != null || z) {
            return m12139a(context, c2516bn);
        }
        if (!adk.m12539b(m12128az(context), System.currentTimeMillis(), 604800000L)) {
            return -1;
        }
        return m12139a(context, c2516bn);
    }

    /* renamed from: aw */
    public static int m12131aw(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        long m12128az = m12128az(context);
        long m12135aB = m12135aB(context);
        if (adk.m12539b(m12128az, currentTimeMillis, 604800000L)) {
            return 1;
        }
        if (adk.m12539b(m12135aB, currentTimeMillis, 86400000L)) {
            return 2;
        }
        return 0;
    }

    /* renamed from: ax */
    public static C2852cz m12130ax(Context context) {
        try {
            String str = context.getFilesDir().getAbsolutePath() + "/un_c.conf";
            if (new File(str).exists()) {
                return (C2852cz) C3604sq.m2247cK(str);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    private static int m12139a(Context context, C2516bn c2516bn) {
        boolean z = true;
        if (c2516bn == null) {
            z = false;
            c2516bn = new C2516bn();
            c2516bn.f1756kD = m12129ay(context);
        }
        boolean z2 = z;
        AtomicReference atomicReference = new AtomicReference();
        int m11404a = aju.m11404a(context, c2516bn, atomicReference);
        if (m11404a == 0) {
            C2852cz c2852cz = (C2852cz) atomicReference.get();
            if (!z2) {
                m12127b(context, c2852cz);
                m12136aA(context);
                m12134aC(context);
            } else {
                m12137a(context, c2852cz);
                m12134aC(context);
            }
        }
        return m11404a;
    }

    /* renamed from: a */
    private static void m12137a(Context context, C2852cz c2852cz) {
        if (c2852cz != null && c2852cz.f2410mL != null) {
            C2852cz m12130ax = m12130ax(context);
            if (m12130ax != null && m12130ax.f2410mL != null) {
                Iterator<C2857dd> it = c2852cz.f2410mL.iterator();
                while (it.hasNext()) {
                    C2857dd next = it.next();
                    if (next != null) {
                        Iterator<C2857dd> it2 = m12130ax.f2410mL.iterator();
                        boolean z = false;
                        while (it2.hasNext()) {
                            C2857dd next2 = it2.next();
                            if (next2 != null) {
                                if (next.f2429mW.equals(next2.f2429mW)) {
                                    z = true;
                                    next2.f2429mW = next.f2429mW;
                                    next2.clearAction = next.clearAction;
                                    next2.f2430mZ = next.f2430mZ;
                                    next2.f2433nc = next.f2433nc;
                                    next2.f2432nb = next.f2432nb;
                                    next2.f2431na = next.f2431na;
                                }
                                z = z;
                            }
                        }
                        if (!z) {
                            m12130ax.f2410mL.add(next);
                        }
                    }
                }
                c2852cz = m12130ax;
            }
            m12127b(context, c2852cz);
        }
    }

    /* renamed from: b */
    private static void m12127b(Context context, C2852cz c2852cz) {
        try {
            String str = context.getFilesDir().getAbsolutePath() + "/un_c.conf";
            File file = new File(str);
            if (!file.exists()) {
                file.createNewFile();
            }
            C3604sq.m2245d(c2852cz, str);
        } catch (Exception e) {
        }
    }

    /* renamed from: ay */
    public static ArrayList<C2547bp> m12129ay(Context context) {
        ArrayList<C2547bp> arrayList = new ArrayList<>();
        List<TcPkgInfo> m12109e = afd.m12109e(context, 3);
        if (m12109e != null) {
            for (int i = 0; i < m12109e.size(); i++) {
                TcPkgInfo tcPkgInfo = m12109e.get(i);
                C2547bp c2547bp = new C2547bp();
                c2547bp.certMD5 = tcPkgInfo.pkgCertMd5;
                c2547bp.packageName = tcPkgInfo.packageName;
                c2547bp.f1869kI = tcPkgInfo.isPersonApp ? 0 : 1;
                arrayList.add(c2547bp);
            }
        }
        return arrayList;
    }

    /* renamed from: az */
    private static long m12128az(Context context) {
        return m12133au(context).getLong("S01", 0L);
    }

    /* renamed from: aA */
    private static void m12136aA(Context context) {
        SharedPreferences m12133au = m12133au(context);
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = m12133au.edit();
        edit.putLong("S01", currentTimeMillis);
        edit.commit();
    }

    /* renamed from: aB */
    private static long m12135aB(Context context) {
        return m12133au(context).getLong("S02", 0L);
    }

    /* renamed from: aC */
    private static void m12134aC(Context context) {
        SharedPreferences m12133au = m12133au(context);
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = m12133au.edit();
        edit.putLong("S02", currentTimeMillis);
        edit.commit();
    }
}
