package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import java.io.File;
/* loaded from: classes.dex */
public class bdl {
    /* renamed from: kR */
    public static boolean m7540kR(String str) {
        if (new File(str).exists()) {
            try {
                return bdk.m7542a(str, bdj.m7546kP(str));
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: com.kingroot.kinguser.bdl$a */
    /* loaded from: classes.dex */
    public static class C2110a {
        public String bji;
        public String category;
        public String pkgName;
        public int priority;

        @Nullable
        /* renamed from: kU */
        static C2110a m7537kU(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] split = str.trim().split(" ");
            if (split.length >= 4) {
                for (String str2 : split) {
                    if (TextUtils.isEmpty(str2)) {
                        return null;
                    }
                }
                C2110a c2110a = new C2110a();
                try {
                    c2110a.priority = Integer.valueOf(split[0]).intValue();
                    c2110a.category = split[1];
                    c2110a.pkgName = split[2];
                    c2110a.bji = split[3];
                    return c2110a;
                } catch (NumberFormatException e) {
                    return null;
                }
            }
            return null;
        }
    }

    @Nullable
    /* renamed from: kS */
    public static C2110a m7539kS(String str) {
        VTCmdResult m12827Q = abj.m12827Q("/system/bin/sh", str + " -u");
        if (m12827Q.success()) {
            return C2110a.m7537kU(m12827Q.mStdOut);
        }
        return null;
    }

    /* renamed from: kT */
    public static boolean m7538kT(String str) {
        VTCmdResult m12827Q = abj.m12827Q("/system/bin/sh", str + " -s");
        if (m12827Q.success()) {
            int i = -1;
            try {
                if (!TextUtils.isEmpty(m12827Q.mStdOut)) {
                    i = Integer.valueOf(m12827Q.mStdOut.trim()).intValue();
                }
            } catch (Throwable th) {
            }
            return i == 0;
        }
        return false;
    }
}
