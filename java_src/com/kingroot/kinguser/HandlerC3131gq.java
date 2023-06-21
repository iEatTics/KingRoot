package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
/* renamed from: com.kingroot.kinguser.gq */
/* loaded from: classes.dex */
public class HandlerC3131gq extends Handler {

    /* renamed from: qz */
    private static volatile HandlerC3131gq f2724qz = null;

    /* renamed from: aE */
    public static HandlerC3131gq m3664aE() {
        if (f2724qz == null) {
            synchronized (HandlerC3131gq.class) {
                if (f2724qz == null) {
                    f2724qz = new HandlerC3131gq(Looper.getMainLooper());
                }
            }
        }
        return f2724qz;
    }

    private HandlerC3131gq(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message != null) {
            switch (message.what) {
                case 1:
                    try {
                        if (message.obj instanceof String) {
                            Toast.makeText(bzu.m5098ge(), message.obj.toString(), message.arg1 != 0 ? 1 : 0).show();
                        } else if (message.obj instanceof CharSequence) {
                            Toast.makeText(bzu.m5098ge(), (CharSequence) message.obj, message.arg1 != 0 ? 1 : 0).show();
                        }
                        return;
                    } catch (Throwable th) {
                        return;
                    }
                case 2:
                    if (message.obj != null && (message.obj instanceof Runnable)) {
                        try {
                            ((Runnable) message.obj).run();
                            return;
                        } catch (Throwable th2) {
                            return;
                        }
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
