package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.C3347ni;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.kl */
/* loaded from: classes.dex */
public final class C3250kl {
    public static final String TAG = C3250kl.class.getSimpleName();

    /* renamed from: n */
    public static String m3273n(String str, String str2) {
        if (str2.indexOf("asset://") >= 0) {
            String substring = str2.substring("asset://".length());
            String path = new File(str, substring).getPath();
            C3347ni.C3348a c3348a = new C3347ni.C3348a(path, substring, 0);
            c3348a.m2876bI("0755");
            C3258kt.m3243a(c3348a);
            return path;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static boolean m3272o(String str, String str2) {
        for (int i = 0; i < 3; i++) {
            C3258kt.m3243a(new C3347ni.C3348a(str2, str, 0));
            if (C3353nk.m2858bn(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public static String m3271p(String str, String str2) {
        return C3355nm.m2842bQ(str) + "." + str2 + ".40." + C3355nm.m2843bP(str);
    }

    /* renamed from: cZ */
    public static void m3274cZ() {
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (interfaceC3195it.mo3126h(true)) {
            C3180if m3497bW = C3183ih.m3497bW();
            ArrayList arrayList = new ArrayList();
            arrayList.add(m3497bW.m3534bw());
            arrayList.add("libclient.so");
            arrayList.add("libsrvmgr.so");
            arrayList.add("ipme");
            arrayList.add("daemon.jar");
            arrayList.add("zgo.jar");
            if (C3304mf.m3090ey()) {
                arrayList.add("ipme64");
                arrayList.add("libclient64.so");
                arrayList.add("libsrvmgr64.so");
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(m3276a(interfaceC3195it, m3497bW, arrayList, "/data/data-lib/uranus" + File.separator + m3497bW.getPackageName() + File.separator));
            arrayList2.addAll(m3276a(interfaceC3195it, m3497bW, arrayList, "/data/data-lib/" + m3497bW.getPackageName() + File.separator));
            arrayList2.addAll(m3276a(interfaceC3195it, m3497bW, arrayList, m3497bW.m3552bG() + File.separator));
            if (arrayList2.size() > 0) {
                interfaceC3195it.mo3125l(arrayList2);
            }
        }
    }

    /* renamed from: a */
    private static List<String> m3276a(InterfaceC3195it interfaceC3195it, C3180if c3180if, List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            String str2 = interfaceC3195it.mo3131aC("ls " + str).mStdOut;
            if (!TextUtils.isEmpty(str2)) {
                String[] split = str2.split("\\s+");
                for (String str3 : split) {
                    if (m3275a(str3, c3180if.m3553bF(), list)) {
                        arrayList.add("rm " + str + str3);
                    }
                }
            }
        } catch (Exception e) {
        }
        return arrayList;
    }

    /* renamed from: a */
    private static boolean m3275a(String str, String str2, List<String> list) {
        for (String str3 : list) {
            for (int i = 0; i < 40; i++) {
                if (str.equals(C3355nm.m2842bQ(str3) + "." + str2 + "." + i + "." + C3355nm.m2843bP(str3))) {
                    return true;
                }
            }
        }
        return false;
    }
}
