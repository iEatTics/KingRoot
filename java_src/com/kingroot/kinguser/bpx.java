package com.kingroot.kinguser;

import android.util.Log;
/* loaded from: classes.dex */
public final class bpx extends bqb {
    public static final bpx bIc = new bpx();

    @Override // com.kingroot.kinguser.bqb
    /* renamed from: a */
    protected void mo5832a(int i, Thread thread, long j, String str, String str2, Throwable th) {
        switch (i) {
            case 1:
                Log.v(str, str2, th);
                return;
            case 2:
                Log.d(str, str2, th);
                return;
            case 4:
                Log.i(str, str2, th);
                return;
            case 8:
                Log.w(str, str2, th);
                return;
            case 16:
                Log.e(str, str2, th);
                return;
            case 32:
                Log.e(str, str2, th);
                return;
            default:
                return;
        }
    }
}
