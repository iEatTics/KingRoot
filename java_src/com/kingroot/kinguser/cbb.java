package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.Locale;
/* loaded from: classes.dex */
public class cbb {
    /* renamed from: bd */
    public static String m5024bd(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        return String.format(Locale.US, "export CLASSPATH=%s && /system/bin/app_process /system/bin %s", str, str2);
    }

    /* renamed from: be */
    public static String m5023be(String str, String str2) {
        return TextUtils.isEmpty(str2) ? str : String.format("%s %s", str, str2);
    }
}
