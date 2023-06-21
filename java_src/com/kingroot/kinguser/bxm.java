package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class bxm {
    /* renamed from: lg */
    private static boolean m5230lg(String str) {
        boolean z = true;
        if (new File(str).exists()) {
            try {
                z = bxs.m5223lg(str);
                if (!z) {
                }
            } catch (IOException e) {
            }
        }
        return z;
    }

    /* renamed from: nw */
    private static boolean m5229nw(@NonNull String str) {
        boolean z = true;
        File file = new File(str);
        if (file.exists() && file.length() <= 51200) {
            try {
                z = new String(bxs.m5225cy(file.getAbsolutePath())).contains("applypatch ");
                if (!z) {
                }
            } catch (Exception e) {
            }
        }
        return z;
    }

    public static boolean ajF() {
        return (m5230lg("/system/bin/debuggerd") && m5230lg("/system/bin/debuggerd64") && m5230lg("/system/bin/ddexe") && m5229nw("/system/etc/install-recovery.sh") && m5229nw("/system/bin/install-recovery.sh")) ? false : true;
    }
}
