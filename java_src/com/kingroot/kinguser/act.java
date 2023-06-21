package com.kingroot.kinguser;

import com.kingroot.loader.common.KlConst;
/* loaded from: classes.dex */
public final class act {
    /* renamed from: b */
    public static String m12654b(long j, boolean z) {
        boolean z2;
        String str;
        int i = 0;
        if (j < 0) {
            z2 = true;
            j *= -1;
        } else {
            z2 = false;
        }
        for (long j2 = 999; j / j2 > 0; j2 *= 1000) {
            i++;
        }
        switch (i) {
            case 0:
                str = j + "B";
                break;
            case 1:
                str = (((float) ((j * 10) / 1024)) / 10.0f) + "K";
                break;
            case 2:
                str = (((float) ((j * 10) / 1048576)) / 10.0f) + "M";
                break;
            case 3:
                str = (((float) ((j * 10) / 1073741824)) / 10.0f) + "G";
                break;
            case 4:
                str = (((float) ((j * 10) / 1099511627776L)) / 10.0f) + "T";
                break;
            default:
                str = "";
                break;
        }
        String str2 = z2 ? KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + str : str;
        if (!z && !str2.contains("B")) {
            return str2 + "B";
        }
        return str2;
    }
}
