package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aio {
    /* renamed from: d */
    public static boolean m11606d(abc abcVar) {
        VTCmdResult vTCmdResult;
        if (m11605e(abcVar)) {
            return true;
        }
        String m11567ys = ait.m11567ys();
        if (TextUtils.isEmpty(m11567ys)) {
            vTCmdResult = null;
        } else {
            vTCmdResult = abcVar.m12846el(m11567ys);
        }
        abcVar.m12846el(aas.f1256XR);
        boolean m11605e = m11605e(abcVar);
        if (vTCmdResult != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (adk.m12539b(aks.m11143BP().m10926Fy(), currentTimeMillis, 86400000L)) {
                aks.m11143BP().m10887bC(currentTimeMillis);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(m11605e ? 0 : 1));
                arrayList.add(Integer.valueOf(vTCmdResult.success() ? 0 : 1));
                arrayList.add(vTCmdResult.mStdOut);
                arrayList.add(vTCmdResult.mStdErr);
                ady.m12308tK().mo1748a(100255, 0, (List<Object>) arrayList, true);
            }
        }
        return m11605e;
    }

    /* renamed from: e */
    private static boolean m11605e(abc abcVar) {
        try {
            VTCmdResult m12846el = abcVar.m12846el("cat /proc/mounts");
            if (m12846el == null || TextUtils.isEmpty(m12846el.mStdOut)) {
                return false;
            }
            String[] split = m12846el.mStdOut.split("\n");
            for (String str : split) {
                if (str.contains(" /system ") && str.contains("rw,")) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
