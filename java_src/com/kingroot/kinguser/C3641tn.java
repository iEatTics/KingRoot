package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
/* renamed from: com.kingroot.kinguser.tn */
/* loaded from: classes.dex */
public class C3641tn {
    /* renamed from: cT */
    public static int m2156cT(String str) {
        VTCmdResult m12831em = abi.m12831em("dumpsys activity -a provider " + str);
        int i = 0;
        if (m12831em.success()) {
            if (TextUtils.isEmpty(m12831em.mStdOut)) {
                return 0;
            }
            String str2 = m12831em.mStdOut;
            if (str2.contains("No providers match") || !str2.contains("Connections:")) {
                return 0;
            }
            while (str2.indexOf("->") != -1) {
                i++;
                str2 = str2.substring(str2.indexOf("->") + "->".length());
            }
            return i;
        }
        return -1;
    }
}
