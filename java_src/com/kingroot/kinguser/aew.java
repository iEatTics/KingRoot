package com.kingroot.kinguser;

import android.os.Environment;
import java.io.File;
/* loaded from: classes.dex */
public class aew {
    public static final String afG = Environment.getRootDirectory().getPath() + File.separator + "bin";
    public static final String afH = Environment.getRootDirectory().getPath() + File.separator + "xbin";
    private static final String afI = afG + File.separator + "busybox";
    private static final String afJ = afH + File.separator + "busybox";

    /* renamed from: XR */
    private static final String f1408XR = aas.f1256XR;

    /* renamed from: XS */
    private static final String f1409XS = aas.f1257XS;

    /* renamed from: uN */
    public static boolean m12146uN() {
        return new File(C3958zl.m1295pw(), "busybox").exists();
    }
}
