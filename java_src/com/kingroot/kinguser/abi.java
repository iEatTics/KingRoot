package com.kingroot.kinguser;

import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import java.io.IOException;
/* loaded from: classes.dex */
public final class abi {

    /* renamed from: YZ */
    private static volatile abm f1324YZ = null;

    /* renamed from: qQ */
    private static abm m12830qQ() {
        if (f1324YZ == null) {
            synchronized (abi.class) {
                if (f1324YZ == null) {
                    f1324YZ = abj.m12819eq("sh");
                }
            }
        }
        return f1324YZ;
    }

    private static void closeShell() {
        if (f1324YZ != null) {
            synchronized (abi.class) {
                if (f1324YZ != null) {
                    f1324YZ.shutdown();
                    f1324YZ = null;
                }
            }
        }
    }

    /* renamed from: c */
    private static void m12832c(Exception exc) {
        if (exc != null) {
            if ((exc instanceof IOException) || (exc instanceof InterruptedException)) {
                closeShell();
            }
        }
    }

    /* renamed from: em */
    public static VTCmdResult m12831em(String str) {
        return m12829v(str, true);
    }

    /* renamed from: v */
    public static VTCmdResult m12829v(String str, boolean z) {
        return m12833b(new VTCommand(str, str, z ? 120000L : 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static VTCmdResult m12833b(VTCommand vTCommand) {
        VTCmdResult vTCmdResult;
        VTCmdResult vTCmdResult2 = null;
        try {
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition()) {
                vTCmdResult = m12845qK.mo4998a(vTCommand);
                try {
                    closeShell();
                } catch (Exception e) {
                    vTCmdResult2 = vTCmdResult;
                    e = e;
                    m12832c(e);
                    vTCmdResult = vTCmdResult2;
                    if (vTCmdResult != null) {
                    }
                }
            } else {
                vTCmdResult = m12830qQ().m12806b(vTCommand);
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (vTCmdResult != null) {
            return new VTCmdResult(vTCommand.mCmdFlag, 2, "", "Run Root Cmd Exception");
        }
        return vTCmdResult;
    }
}
