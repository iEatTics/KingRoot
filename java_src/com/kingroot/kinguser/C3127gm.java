package com.kingroot.kinguser;

import android.os.Environment;
import android.p003os.Environmenu;
/* renamed from: com.kingroot.kinguser.gm */
/* loaded from: classes.dex */
public class C3127gm {
    /* renamed from: a */
    public static boolean m3692a() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == null) {
            return false;
        }
        return externalStorageState.equals(Environmenu.MEDIA_MOUNTED);
    }
}
