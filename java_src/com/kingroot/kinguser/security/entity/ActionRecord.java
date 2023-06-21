package com.kingroot.kinguser.security.entity;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.C3604sq;
import com.kingroot.kinguser.C3958zl;
import com.kingroot.kinguser.InterfaceC3562rr;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ActionRecord implements InterfaceC3562rr {
    public int flag;
    public long when;

    public ActionRecord(int i, long j) {
        this.flag = i;
        this.when = j;
    }

    /* renamed from: h */
    public final void m2287h(int i, long j) {
        this.flag = i;
        this.when = j;
    }

    @NonNull
    /* renamed from: kI */
    public static Map<String, ActionRecord> m2286kI(String str) {
        try {
            Object m2244u = C3604sq.m2244u(m2285kJ(str));
            if (m2244u instanceof Map) {
                return (Map) m2244u;
            }
        } catch (Exception e) {
        }
        return new HashMap();
    }

    /* renamed from: b */
    public static void m2288b(Map<String, ActionRecord> map, String str) {
        C3604sq.m2250a(map, m2285kJ(str));
    }

    /* renamed from: kJ */
    private static File m2285kJ(String str) {
        return new File(C3958zl.getFilesDir(), str);
    }
}
