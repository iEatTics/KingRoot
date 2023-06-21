package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ajo {
    /* renamed from: a */
    public static void m11453a(List<String> list, Map map) {
        if (list != null && list.size() != 0) {
            ArrayList<String> arrayList = new ArrayList();
            for (String str : list) {
                if (m11447gx(str)) {
                    arrayList.add(str);
                } else {
                    map.put(str, -1);
                }
            }
            m11452aq(arrayList);
            for (String str2 : arrayList) {
                if (!m11450gu(str2)) {
                    m11449gv(str2);
                    map.put(str2, 1);
                } else {
                    map.put(str2, 0);
                }
            }
        }
    }

    /* renamed from: aq */
    protected static void m11452aq(List<String> list) {
        List<String> m11563a;
        if (list != null && list.size() != 0 && (m11563a = new aiu().m11563a(list, new aid())) != null && m11563a.size() > 0) {
            m11451b(m11563a, new HashMap());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static void m11451b(List<String> list, Map map) {
        if (list != null && list.size() != 0) {
            bha.m7065d(list, map);
        }
    }

    /* renamed from: gu */
    private static boolean m11450gu(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ProcessUtils.m13140m(KUApplication.m13453ge(), str);
        return m11448gw("pm uninstall " + str);
    }

    /* renamed from: gv */
    private static boolean m11449gv(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
            if (packageInfo != null) {
                ProcessUtils.m13140m(KUApplication.m13453ge(), str);
                m11448gw(aas.f1260XV + packageInfo.applicationInfo.publicSourceDir);
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException e2) {
        }
        m11448gw("pm uninstall " + str);
        return true;
    }

    /* renamed from: gw */
    private static boolean m11448gw(String str) {
        VTCmdResult m12846el = abc.m12845qK().m12846el(str);
        return m12846el == null || (m12846el.success() && !m12846el.mStdOut.contains("Failure"));
    }

    /* renamed from: gx */
    public static boolean m11447gx(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return C3952zh.m1312pq().getPackageInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
