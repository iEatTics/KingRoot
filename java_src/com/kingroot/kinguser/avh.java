package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class avh {
    private static final String TAG = aiq.arV + "_KuCloudFileInfoScaner";
    private static final cce<avh> sInstance = new cce<avh>() { // from class: com.kingroot.kinguser.avh.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Rv */
        public avh create() {
            return new avh();
        }
    };

    @InterfaceC3726ut
    /* renamed from: Ru */
    public static avh m8843Ru() {
        return sInstance.get();
    }

    private avh() {
    }

    /* renamed from: a */
    public void m8842a(final long j, final List<String> list) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.avh.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                avh.this.m8839b(j, list);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m8839b(long j, List<String> list) {
        if (list.size() >= 6) {
            try {
                boolean z = Integer.parseInt(list.get(0)) == 1;
                String str = list.get(1);
                if (!TextUtils.isEmpty(str)) {
                    String[] split = str.split(",");
                    for (String str2 : split) {
                        m8840a(z, j, str2);
                    }
                }
                String str3 = list.get(2);
                if (!TextUtils.isEmpty(str3)) {
                    for (String str4 : str3.split(",")) {
                        m8838b(z, j, str4);
                    }
                }
            } catch (NumberFormatException e) {
            }
        }
    }

    /* renamed from: a */
    private void m8840a(boolean z, long j, String str) {
        C3966zn.C3968a m1278I = C3966zn.m1278I(null, str);
        if (m1278I != null || z) {
            long j2 = m1278I != null ? m1278I.size : 0L;
            String[] split = abc.m12845qK().m12846el(m8837jt(str)).mStdOut.split("\\s+");
            String str2 = split.length > 1 ? split[0] : "0";
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(j));
            arrayList.add(str);
            arrayList.add(str2);
            arrayList.add(Long.valueOf(j2));
            ady.m12308tK().mo1748a(100637, 0, (List<Object>) arrayList, false);
        }
    }

    /* renamed from: b */
    private void m8838b(boolean z, long j, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = C3952zh.m1312pq().getPackageInfo(str, 64);
        } catch (PackageManager.NameNotFoundException e) {
            if (!z) {
                return;
            }
            packageInfo = null;
        }
        String m8836ju = m8836ju(str);
        C3966zn.C3968a m1278I = C3966zn.m1278I(null, m8836ju);
        if ((!TextUtils.isEmpty(m8836ju) && m1278I != null) || z) {
            long j2 = m1278I != null ? m1278I.size : 0L;
            String[] split = abc.m12845qK().m12846el(m8837jt(m8836ju)).mStdOut.split("\\s+");
            String str2 = split.length > 1 ? split[0] : "0";
            ArrayList arrayList = new ArrayList();
            arrayList.add(Long.valueOf(j));
            arrayList.add(m8836ju);
            arrayList.add(str2);
            arrayList.add(Long.valueOf(j2));
            arrayList.add(str);
            if (packageInfo != null) {
                arrayList.add(Integer.valueOf(packageInfo.versionCode));
                arrayList.add(packageInfo.versionName);
                String m12034f = afq.m12034f(packageInfo);
                if (TextUtils.isEmpty(m12034f)) {
                    m12034f = "0";
                }
                arrayList.add(m12034f);
            } else {
                arrayList.add(0);
                arrayList.add(0);
                arrayList.add(0);
            }
            ady.m12308tK().mo1748a(100637, 0, (List<Object>) arrayList, false);
        }
    }

    /* renamed from: jt */
    public static String m8837jt(String str) {
        return aba.m12855qF() + " md5 " + str;
    }

    /* renamed from: ju */
    private static String m8836ju(String str) {
        try {
            return KUApplication.m13453ge().getPackageManager().getApplicationInfo(str, 0).sourceDir;
        } catch (Throwable th) {
            return "";
        }
    }
}
