package com.kingroot.kinguser;

import android.text.TextUtils;
/* loaded from: classes.dex */
public class avf {
    /* renamed from: jr */
    public static avb m8847jr(String str) {
        avb avbVar = null;
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("kusw:")) {
                avbVar = new avi();
            } else if (str.startsWith("kurc:")) {
                avbVar = new avg();
            }
            if (avbVar != null) {
                avbVar.parse(str);
            }
        }
        return avbVar;
    }
}
