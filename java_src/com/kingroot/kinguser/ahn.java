package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes.dex */
public class ahn {
    /* renamed from: xu */
    public static boolean m11712xu() {
        Object m12965b;
        Object m12972a;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            if (cls != null && (m12965b = aam.m12965b(cls, "currentActivityThread", null)) != null && (m12972a = aam.m12972a(cls, "mH", m12965b)) != null) {
                Object m12966b = aam.m12966b(m12972a.getClass(), "SCHEDULE_CRASH");
                if (m12966b == null || !(m12966b instanceof Integer)) {
                    return false;
                }
                Object m12972a2 = aam.m12972a(Handler.class, "mCallback", m12972a);
                aam.m12971a(Handler.class, "mCallback", m12972a, new C0950a(m12972a2 != null ? (Handler.Callback) m12972a2 : null, ((Integer) m12966b).intValue()));
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: com.kingroot.kinguser.ahn$a */
    /* loaded from: classes.dex */
    static class C0950a implements Handler.Callback {
        Handler.Callback arc;
        int ard;

        public C0950a(Handler.Callback callback, int i) {
            this.arc = callback;
            this.ard = i;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            return (message != null && this.ard == message.what) || (this.arc != null && this.arc.handleMessage(message));
        }
    }
}
