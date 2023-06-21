package com.kingroot.kinguser;

import android.os.Environment;
import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class agk {
    public static final String PACKAGE_NAME = KApplication.m13453ge().getPackageName();
    public static final String amQ = Environment.getDataDirectory().getAbsolutePath();
    public static final String amR;

    static {
        amR = m11944qO() ? "libbpm.arm64" : "libbpm";
    }

    /* renamed from: qO */
    public static boolean m11944qO() {
        if (C3949ze.get("ro.product.cpu.abi", "arm").contains("x86")) {
            return false;
        }
        if (C3949ze.get("ro.product.cpu.abilist64", "").length() > 0) {
            return true;
        }
        if (C3949ze.get("ro.product.cpu.abilist32", "").length() > 0) {
        }
        return false;
    }
}
