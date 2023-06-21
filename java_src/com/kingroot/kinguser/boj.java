package com.kingroot.kinguser;

import com.tencent.beacon.event.UserAction;
import java.util.Map;
/* loaded from: classes.dex */
public final class boj {
    public static bnw bFp;

    /* renamed from: b */
    public static boolean m6073b(String str, boolean z, long j, long j2, Map map, boolean z2) {
        boolean z3;
        try {
            z3 = UserAction.onUserAction(str, z, 0L, 0L, map, true);
        } catch (Throwable th) {
            z3 = false;
        }
        if (z3) {
            return z3;
        }
        try {
            return bFp != null ? bFp.m6145a(str, z, 0L, 0L, map, true) : z3;
        } catch (Throwable th2) {
            return z3;
        }
    }
}
