package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class bml {
    private static boolean bBV = false;

    static {
        new ArrayList();
        HandlerThread handlerThread = new HandlerThread("WRITE_LOG_HANDLER");
        handlerThread.start();
        new Handler(handlerThread.getLooper());
    }

    /* renamed from: c */
    public static void m6384c(boolean z, String str) {
        bBV = z;
    }

    public static boolean afK() {
        return bBV;
    }
}
