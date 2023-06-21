package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.common.app.KApplication;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class afc {

    /* renamed from: Xb */
    private static SoftReference<afc> f1412Xb;
    private Map<String, C2857dd> ahf;

    private afc() {
        m12120uV();
    }

    /* renamed from: uT */
    public static afc m12122uT() {
        afc afcVar;
        if (f1412Xb == null || (afcVar = f1412Xb.get()) == null) {
            synchronized (afc.class) {
                if (f1412Xb == null || (afcVar = f1412Xb.get()) == null) {
                    afcVar = new afc();
                    f1412Xb = new SoftReference<>(afcVar);
                }
            }
        }
        return afcVar;
    }

    /* renamed from: uU */
    public void m12121uU() {
        this.ahf = null;
        m12120uV();
    }

    /* renamed from: uV */
    public void m12120uV() {
        if (this.ahf == null) {
            this.ahf = new HashMap();
        }
        C2852cz m12130ax = aez.m12130ax(KApplication.m13453ge());
        if (m12130ax != null && m12130ax.f2410mL != null) {
            Iterator<C2857dd> it = m12130ax.f2410mL.iterator();
            while (it.hasNext()) {
                C2857dd next = it.next();
                if (next != null && next.f2429mW != null && next.f2429mW.packageName != null) {
                    this.ahf.put(next.f2429mW.packageName, next);
                }
            }
        }
    }

    /* renamed from: U */
    public C2857dd m12124U(String str, String str2) {
        C2857dd c2857dd = null;
        if (this.ahf != null && this.ahf.containsKey(str)) {
            c2857dd = this.ahf.get(str);
            if (str2.equals(c2857dd.f2429mW.certMD5)) {
            }
        }
        return c2857dd;
    }

    /* renamed from: g */
    public synchronized boolean m12123g(Context context, List<TcPkgInfo> list) {
        boolean z;
        ArrayList<C2547bp> arrayList = new ArrayList<>();
        C2516bn c2516bn = new C2516bn();
        for (int i = 0; i < list.size(); i++) {
            TcPkgInfo tcPkgInfo = list.get(i);
            C2547bp c2547bp = new C2547bp();
            c2547bp.certMD5 = tcPkgInfo.pkgCertMd5;
            c2547bp.packageName = tcPkgInfo.packageName;
            c2547bp.f1869kI = tcPkgInfo.isPersonApp ? 0 : 1;
            arrayList.add(c2547bp);
        }
        c2516bn.f1756kD = arrayList;
        if (aez.m12138a(context, c2516bn, true) == 0) {
            z = aez.m12130ax(context) != null;
        }
        return z;
    }
}
