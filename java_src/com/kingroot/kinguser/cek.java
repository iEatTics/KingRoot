package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class cek {
    /* JADX WARN: Removed duplicated region for block: B:28:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0124 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m4773Z(Context context, String str) {
        int lastIndexOf;
        boolean z;
        String str2;
        boolean z2;
        File file;
        String m13nG = TMSDKContext.m13nG("pre_lib_path");
        if (m13nG == null) {
            try {
                String file2 = context.getCacheDir().toString();
                if (file2.endsWith("/")) {
                    file2 = file2.substring(0, file2.length() - 2);
                }
                if (file2.lastIndexOf(47) != -1) {
                    m13nG = file2.substring(0, lastIndexOf) + "/lib/";
                } else {
                    m13nG = "";
                }
            } catch (Exception e) {
                m13nG = "/data/data/" + context.getPackageName() + "/lib/";
            }
        }
        if (m13nG.length() != 0) {
            if (new File(m13nG + str).exists()) {
                try {
                    System.load(m13nG + str);
                    z = true;
                } catch (UnsatisfiedLinkError e2) {
                }
                if (!z || str.endsWith(".so")) {
                    str2 = str;
                } else {
                    str2 = str + ".so";
                    if (new File(m13nG + str2).exists()) {
                        try {
                            System.load(m13nG + str2);
                            z = true;
                        } catch (UnsatisfiedLinkError e3) {
                        }
                    }
                }
                if (!z && !str2.startsWith(KlConst.PLUGIN_LIB_DIR_NAME)) {
                    String str3 = KlConst.PLUGIN_LIB_DIR_NAME + str2;
                    file = new File(m13nG + str3);
                    if (!file.exists()) {
                        m13nG = m13nG.replace("/lib/", "/app_p_lib/");
                        file = new File(m13nG + str3);
                    }
                    if (file.exists()) {
                        try {
                            System.load(m13nG + str3);
                            z2 = true;
                        } catch (UnsatisfiedLinkError e4) {
                        }
                        if (!z2) {
                            try {
                                System.loadLibrary(str);
                            } catch (UnsatisfiedLinkError e5) {
                                return false;
                            }
                        }
                    }
                }
                z2 = z;
                if (!z2) {
                }
            }
            z = false;
            if (z) {
            }
            str2 = str;
            if (!z) {
                String str32 = KlConst.PLUGIN_LIB_DIR_NAME + str2;
                file = new File(m13nG + str32);
                if (!file.exists()) {
                }
                if (file.exists()) {
                }
            }
            z2 = z;
            if (!z2) {
            }
        } else {
            try {
                System.loadLibrary(str);
            } catch (UnsatisfiedLinkError e6) {
                return false;
            }
        }
        return true;
    }
}
