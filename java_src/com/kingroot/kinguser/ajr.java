package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.kingroot.kinguser.common.check.DummySilentCleanCheckUnit;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ajr {
    private static final String aui = bha.bpu;
    private static final String auj = bha.bpv;
    private static volatile ajr auk = null;
    private bed aul = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ajr.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ajr.m11429zu();
        }
    });

    /* renamed from: zt */
    public static ajr m11430zt() {
        if (auk == null) {
            synchronized (ajr.class) {
                if (auk == null) {
                    auk = new ajr();
                }
            }
        }
        return auk;
    }

    private ajr() {
    }

    /* renamed from: zq */
    public void m11431zq() {
        beg.m7461Zj().m7450c(this.aul);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        if (com.kingroot.kinguser.C3563rs.m2344s(r3) != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* renamed from: zu */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m11429zu() {
        boolean z;
        if (abc.m12845qK().isRootPermition(true)) {
            File file = new File(aui);
            File file2 = new File(auj);
            try {
            } catch (IOException e) {
                z = true;
            }
            if (!file.exists() || C3563rs.m2344s(file)) {
                if (file2.exists()) {
                }
                z = false;
                if (!z) {
                    boolean m12822en = abj.m12822en("su");
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new DummySilentCleanCheckUnit(m12822en));
                    ajb.m11487yT().checkSync(false, true, null, arrayList);
                    return;
                }
                return;
            }
            z = true;
            if (!z) {
            }
        }
    }

    /* renamed from: zv */
    public List<String> m11428zv() {
        List<String> m8768hd = avs.m8774RY().m8768hd(4);
        ArrayList arrayList = new ArrayList();
        for (String str : m8768hd) {
            if (bha.m7064lt(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: zw */
    public boolean m11427zw() {
        for (String str : avs.m8774RY().m8771ha(4)) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
                    if (packageInfo != null && (packageInfo.applicationInfo.flags & 1) != 0) {
                        return true;
                    }
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public void m11432b(boolean z, List<String> list) {
        if (abc.m12845qK().isRootPermition(true)) {
            avs m8774RY = avs.m8774RY();
            List<String> m8770hb = m8774RY.m8770hb(4);
            List<String> m8769hc = m8774RY.m8769hc(4);
            List<String> m8771ha = avs.m8774RY().m8771ha(4);
            if (!z) {
                m8769hc.add(aui);
                m8769hc.add(auj);
            }
            m8770hb.add(new String(aab.m13014dJ("656D6461656D6F6E")));
            ArrayList arrayList = new ArrayList();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            new ajp().m11439b(m8770hb, m8769hc, arrayList);
            ajm.m11460b(list, hashMap);
            ajm.m11462a(m8771ha, hashMap2);
            m11433a(arrayList, hashMap, hashMap2);
        }
    }

    /* renamed from: a */
    private void m11433a(List<String> list, Map<String, Integer> map, Map<String, Integer> map2) {
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                ady.m12308tK().m12320d(str, 2, 0);
            }
        }
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            String str2 = entry.getKey().toString();
            int intValue = entry.getValue().intValue();
            if (!TextUtils.isEmpty(str2) && intValue != -1) {
                ady.m12308tK().m12320d(str2, 0, intValue);
            }
        }
        for (Map.Entry<String, Integer> entry2 : map2.entrySet()) {
            String str3 = entry2.getKey().toString();
            int intValue2 = entry2.getValue().intValue();
            if (!TextUtils.isEmpty(str3) && intValue2 != -1) {
                ady.m12308tK().m12320d(str3, 1, intValue2);
            }
        }
    }
}
