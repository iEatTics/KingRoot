package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.master.app.KUApplication;
import java.io.File;
/* loaded from: classes.dex */
public class aip {
    private static final Object arU = new Object();

    @Nullable
    /* renamed from: xZ */
    private static String m11603xZ() {
        String absolutePath;
        synchronized (arU) {
            File file = new File(KUApplication.m13453ge().getFilesDir(), "ktools.jar");
            absolutePath = file.getAbsolutePath();
            if (!C3563rs.m2369B(absolutePath, "ktools.jar")) {
                try {
                    C3563rs.m2352e("ktools.jar", file);
                } catch (Exception e) {
                    absolutePath = null;
                }
            }
        }
        return absolutePath;
    }

    @Nullable
    /* renamed from: ya */
    public static String m11602ya() {
        String m11603xZ = m11603xZ();
        if (TextUtils.isEmpty(m11603xZ)) {
            return null;
        }
        return "(export CLASSPATH=" + m11603xZ + " && /system/bin/app_process /system/bin a.d %s)";
    }

    @NonNull
    /* renamed from: a */
    public static VTCmdResult m11604a(@NonNull VTCmdResult vTCmdResult) {
        String[] split;
        if (vTCmdResult.mStdOut == null) {
            return new VTCmdResult(vTCmdResult.mCmdFlag, vTCmdResult.mExitValue, null, null);
        }
        String str = "";
        String str2 = "";
        for (String str3 : vTCmdResult.mStdOut.split("\\n")) {
            if (str3.startsWith("JUTILS-OUT:")) {
                str2 = str2 + str3.substring("JUTILS-OUT:".length()) + "\n";
            } else if (str3.startsWith("JUTILS-ERR:")) {
                str = str + str3.substring("JUTILS-ERR:".length()) + "\n";
            }
        }
        return new VTCmdResult(vTCmdResult.mCmdFlag, vTCmdResult.mExitValue, str2, str);
    }
}
