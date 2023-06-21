package com.kingroot.kinguser;

import android.os.IBinder;
/* loaded from: classes.dex */
public class aan {
    /* renamed from: dL */
    public static IBinder m12963dL(String str) {
        Object m12967a = aam.m12967a("android.os.ServiceManager", "checkService", new Class[]{String.class}, (Object) null, new Object[]{str});
        if (m12967a == null || !(m12967a instanceof IBinder)) {
            return null;
        }
        return (IBinder) m12967a;
    }

    public static IBinder getService(String str) {
        Object m12967a = aam.m12967a("android.os.ServiceManager", "getService", new Class[]{String.class}, (Object) null, new Object[]{str});
        if (m12967a == null || !(m12967a instanceof IBinder)) {
            return null;
        }
        return (IBinder) m12967a;
    }
}
