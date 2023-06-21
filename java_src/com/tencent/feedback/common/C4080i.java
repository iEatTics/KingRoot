package com.tencent.feedback.common;

import android.content.Context;
import android.os.Build;
import com.tencent.feedback.proguard.C4119a;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.tencent.feedback.common.i */
/* loaded from: classes.dex */
public final class C4080i {

    /* renamed from: b */
    private static C4080i f4498b = null;

    /* renamed from: c */
    private static Context f4499c;

    /* renamed from: a */
    private boolean f4500a;

    /* renamed from: a */
    public static synchronized C4080i m972a(Context context) {
        C4080i c4080i;
        synchronized (C4080i.class) {
            if (f4498b == null) {
                f4498b = new C4080i();
                f4499c = context;
            }
            c4080i = f4498b;
        }
        return c4080i;
    }

    protected C4080i() {
        boolean z = true;
        this.f4500a = false;
        this.f4500a = true;
        String str = Build.TAGS;
        if (str == null || !str.contains("test-keys")) {
            z = false;
        } else {
            C4073e.m1015b("rqdp{  test-keys}", new Object[0]);
        }
        if (!z && !m971b() && !m970c()) {
            this.f4500a = false;
        }
    }

    /* renamed from: a */
    public final synchronized boolean m973a() {
        return this.f4500a;
    }

    /* renamed from: b */
    private static boolean m971b() {
        try {
            if (new File("/system/app/Superuser.apk").exists()) {
                C4073e.m1015b("rqdp{  super_apk}", new Object[0]);
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: c */
    private static boolean m970c() {
        ArrayList<String> m752a = C4119a.m752a(f4499c, new String[]{"/system/bin/sh", "-c", "type su"});
        if (m752a != null && m752a.size() > 0) {
            Iterator<String> it = m752a.iterator();
            while (it.hasNext()) {
                String next = it.next();
                C4073e.m1015b(next, new Object[0]);
                if (next.contains("not found")) {
                    return false;
                }
            }
            C4073e.m1015b("rqdp{  sufile}", new Object[0]);
            return true;
        }
        C4073e.m1015b("rqdp{  no response}", new Object[0]);
        return false;
    }
}
