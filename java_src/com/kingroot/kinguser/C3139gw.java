package com.kingroot.kinguser;

import android.os.PowerManager;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.kingroot.kinguser.gw */
/* loaded from: classes.dex */
public class C3139gw {

    /* renamed from: a */
    private static int f2733a = 0;

    /* renamed from: qE */
    private static PowerManager.WakeLock f2734qE = null;

    /* renamed from: com.kingroot.kinguser.gw$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3140a<T> {
        /* renamed from: e */
        T mo3646e(List<Object> list);
    }

    /* renamed from: a */
    private static void m3649a() {
        synchronized (C3139gw.class) {
            f2733a++;
            if (f2733a <= 1) {
                if (f2734qE == null) {
                    try {
                        f2734qE = ((PowerManager) bzu.m5098ge().getSystemService("power")).newWakeLock(536870913, "k_framework_wk_mgr");
                    } catch (SecurityException e) {
                        e.printStackTrace();
                    }
                }
                try {
                    if (f2734qE != null && !f2734qE.isHeld()) {
                        f2734qE.acquire();
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    /* renamed from: b */
    private static void m3647b() {
        synchronized (C3139gw.class) {
            if (f2733a > 0) {
                f2733a--;
            }
            if (f2733a <= 0) {
                try {
                    if (f2734qE != null && f2734qE.isHeld()) {
                        f2734qE.release();
                    }
                } catch (Exception e) {
                }
                f2734qE = null;
            }
        }
    }

    /* renamed from: a */
    public static <T> T m3648a(InterfaceC3140a<T> interfaceC3140a, Object... objArr) {
        try {
            m3649a();
            return interfaceC3140a.mo3646e(Arrays.asList(objArr));
        } finally {
            m3647b();
        }
    }
}
