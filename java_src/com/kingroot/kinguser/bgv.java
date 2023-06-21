package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class bgv {
    public static int bgg;
    private static final String[] bge = {"ONEPLUS", "Smartisan", "HTC", "HUAWEI", "GIONEE", "COOLPAD", "Le", "LG", "MEIZU", "MOTO", "NUBIA", "OPPO", "SAMSUNG", "SONY", "VIVO", "XIAOMI", "ZTE"};
    private static final String[] bgf = {"一加", "锤子", "HTC", "华为", "金立", "酷派", "乐视", "LG", "魅族", "摩托罗拉", "努比亚", "OPPO", "三星", "索尼", "VIVO", "小米", "中兴"};
    public static int bpg = 17;
    public static int bph = 3;
    public static String bpf = m7087lr(Build.BRAND.toUpperCase().trim());

    static {
        bgg = -1;
        bgg = m7086ls(Build.BRAND.toUpperCase().trim());
    }

    /* renamed from: lr */
    public static String m7087lr(String str) {
        int m7086ls;
        if (!TextUtils.isEmpty(str) && (m7086ls = m7086ls(str)) >= 0 && m7086ls <= bgf.length) {
            return bgf[m7086ls];
        }
        return null;
    }

    /* renamed from: ls */
    public static int m7086ls(String str) {
        if (TextUtils.isEmpty(str)) {
            return bpg;
        }
        String trim = str.toUpperCase().trim();
        int i = 0;
        while (true) {
            if (i >= bge.length) {
                i = -1;
                break;
            } else if (bge[i].equals(trim)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            if ("HONOR".equals(trim)) {
                return bph;
            }
            return bpg;
        }
        return i;
    }
}
