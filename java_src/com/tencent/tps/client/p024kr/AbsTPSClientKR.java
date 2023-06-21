package com.tencent.tps.client.p024kr;

import android.content.Context;
import com.kingroot.kinguser.C3070fv;
import com.tencent.tps.client.AbsTPSClientBase;
/* renamed from: com.tencent.tps.client.kr.AbsTPSClientKR */
/* loaded from: classes.dex */
public abstract class AbsTPSClientKR extends AbsTPSClientBase {
    public abstract void onExploitAccepted(int i, String str, String str2);

    public AbsTPSClientKR(Context context, ISharkForXMod iSharkForXMod) {
        super(context, iSharkForXMod);
    }

    public final boolean enableAutoPatch() {
        boolean enableAutoPatch = C3070fv.m3819ai().enableAutoPatch();
        m398a(enableAutoPatch, null, 8);
        return enableAutoPatch;
    }

    public final boolean disableAutoPatch() {
        boolean disableAutoPatch = C3070fv.m3819ai().disableAutoPatch();
        m398a(disableAutoPatch, null, 9);
        return disableAutoPatch;
    }

    public final boolean querySupportedAsync(OnQuerySupportedListener onQuerySupportedListener) {
        boolean querySupportedAsync = C3070fv.m3819ai().querySupportedAsync(onQuerySupportedListener);
        m398a(querySupportedAsync, null, 6);
        return querySupportedAsync;
    }

    public final int querySupportedSync() {
        int querySupportedSync = C3070fv.m3819ai().querySupportedSync();
        m398a(querySupportedSync != -2, null, 7);
        return querySupportedSync;
    }
}
