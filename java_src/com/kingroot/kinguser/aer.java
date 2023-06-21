package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* loaded from: classes.dex */
public class aer {
    private static Boolean afq = null;

    /* renamed from: ZE */
    private static final Handler f1407ZE = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.aer.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
        }
    };
    private static bed afr = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aer.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aer.m12168uC();
        }
    });

    /* renamed from: uC */
    public static synchronized boolean m12168uC() {
        boolean z = true;
        synchronized (aer.class) {
            if (!abc.m12845qK().isRootPermition()) {
                if (afq != null) {
                    z = afq.booleanValue();
                } else if (abc.m12845qK().isRootPermition(true)) {
                    afq = true;
                    z = afq.booleanValue();
                } else {
                    z = afq != null ? afq.booleanValue() : false;
                }
            }
        }
        return z;
    }

    /* renamed from: aq */
    public static boolean m12170aq(Context context) {
        return m12169d(context, 0);
    }

    /* renamed from: d */
    public static boolean m12169d(Context context, int i) {
        if (abc.m12845qK().isRootPermition()) {
            return true;
        }
        if (i == 1) {
            m12167uD();
            return false;
        }
        return false;
    }

    /* renamed from: uD */
    public static void m12167uD() {
        if (!abc.m12845qK().isRootPermition()) {
            beg.m7461Zj().m7450c(afr);
        }
    }
}
