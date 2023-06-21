package com.kingroot.kinguser;

import android.os.Build;
import android.support.p004v4.view.ViewCompat;
/* loaded from: classes.dex */
public class adp {
    private static boolean adm = false;
    private static boolean adn = false;
    private static Integer ado = null;
    private static boolean adp = false;
    private static boolean adq = false;

    /* renamed from: sR */
    private static void m12470sR() {
        String m12916qa = aav.m12916qa();
        if (m12916qa == null) {
            adn = false;
        } else {
            String lowerCase = m12916qa.toLowerCase();
            if (lowerCase.startsWith("lt")) {
                adn = true;
            } else if (lowerCase.startsWith("lenovo")) {
                adn = true;
            } else if (lowerCase.startsWith("vivo")) {
                adn = true;
            }
        }
        String str = Build.FINGERPRINT;
        if (str != null) {
            String lowerCase2 = str.toLowerCase();
            if (lowerCase2.startsWith("vivo")) {
                if (Build.VERSION.SDK_INT < 18) {
                    ado = Integer.valueOf((int) ViewCompat.MEASURED_STATE_MASK);
                } else {
                    ado = -1;
                }
            } else if (Build.VERSION.SDK_INT < 9) {
                ado = Integer.valueOf((int) ViewCompat.MEASURED_STATE_MASK);
            } else if (lowerCase2.startsWith("oppo/")) {
                if (lowerCase2.contains("r815t")) {
                    ado = Integer.valueOf((int) ViewCompat.MEASURED_STATE_MASK);
                } else if (lowerCase2.contains("r821t")) {
                    ado = Integer.valueOf((int) ViewCompat.MEASURED_STATE_MASK);
                }
            }
            if (lowerCase2.startsWith("huawei/p7-l09/")) {
                adp = true;
            } else if (lowerCase2.startsWith("xiaomi/mione_plus/")) {
                adp = true;
            }
            if (lowerCase2.startsWith("xiaomi")) {
                adq = true;
            }
        }
        adm = true;
    }

    /* renamed from: sS */
    public static Integer m12469sS() {
        if (!adm) {
            m12470sR();
        }
        return ado;
    }
}
