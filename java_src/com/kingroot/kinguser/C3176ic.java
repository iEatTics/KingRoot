package com.kingroot.kinguser;

import android.os.PowerManager;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ic */
/* loaded from: classes.dex */
public class C3176ic {

    /* renamed from: cC */
    private static int f2774cC = 0;

    /* renamed from: rj */
    private static PowerManager.WakeLock f2775rj = null;

    /* renamed from: com.kingroot.kinguser.ic$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3177a<T> {
        /* renamed from: i */
        T mo3481i(List<Object> list);
    }

    private static void lock() {
        synchronized (C3176ic.class) {
            f2774cC++;
            if (f2774cC <= 1) {
                if (f2775rj == null) {
                    try {
                        f2775rj = ((PowerManager) C3183ih.getContext().getSystemService("power")).newWakeLock(536870913, "uranus_wk_mgr");
                    } catch (SecurityException e) {
                    }
                }
                try {
                    if (f2775rj != null && !f2775rj.isHeld()) {
                        f2775rj.acquire();
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    private static void release() {
        synchronized (C3176ic.class) {
            if (f2774cC > 0) {
                f2774cC--;
            }
            if (f2774cC <= 0) {
                try {
                    if (f2775rj != null && f2775rj.isHeld()) {
                        f2775rj.release();
                    }
                } catch (Exception e) {
                }
                f2775rj = null;
            }
        }
    }

    /* renamed from: a */
    public static <T> T m3574a(InterfaceC3177a<T> interfaceC3177a, Object... objArr) {
        try {
            lock();
            return interfaceC3177a.mo3481i(Arrays.asList(objArr));
        } finally {
            release();
        }
    }
}
