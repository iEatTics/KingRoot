package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.HashSet;
/* loaded from: classes.dex */
public class akf {
    private static final HashSet<String> avg = new HashSet<>(5);
    private static final Object avh = new Object();
    private static volatile String avi = null;
    private static final HashSet<String> avj = new HashSet<>(5);

    @NonNull
    /* renamed from: Am */
    private static HashSet<String> m11307Am() {
        synchronized (avg) {
            if (avg.size() <= 0) {
                avg.addAll(m11305Ao());
                avg.add("com.kingroot.master");
                avg.add("com.kingstudio.purify");
                avg.add("com.kingroot.RushRoot");
                avg.add("com.cafeteam.installer");
                return avg;
            }
            return avg;
        }
    }

    /* renamed from: gG */
    public static boolean m11304gG(String str) {
        return m11307Am().contains(str);
    }

    /* renamed from: An */
    public static String m11306An() {
        String str;
        if (TextUtils.isEmpty(avi)) {
            synchronized (avh) {
                if (TextUtils.isEmpty(avi)) {
                    try {
                        avi = KApplication.m13453ge().getPackageName();
                    } catch (Throwable th) {
                    }
                    str = avi;
                } else {
                    str = avi;
                }
            }
            return str;
        }
        return avi;
    }

    /* renamed from: gH */
    public static boolean m11303gH(String str) {
        String m11306An = m11306An();
        return m11306An != null && m11306An.equals(str);
    }

    @NonNull
    /* renamed from: Ao */
    private static HashSet<String> m11305Ao() {
        synchronized (avj) {
            if (avj.size() <= 0) {
                avj.add("com.kingroot.kinguser");
                avj.add("com.cafeteam.user");
                avj.add("com.cafeteam.user.pro");
                return avj;
            }
            return avj;
        }
    }

    /* renamed from: gI */
    public static boolean m11302gI(String str) {
        return m11305Ao().contains(str);
    }
}
