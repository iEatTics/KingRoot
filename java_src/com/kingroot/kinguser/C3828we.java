package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.kingroot.kinguser.C3826wd;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.kingroot.kinguser.we */
/* loaded from: classes.dex */
public class C3828we extends AbstractC3634th {

    /* renamed from: MC */
    private static WeakHashMap<C3829a, Integer> f3863MC = new WeakHashMap<>();

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!TextUtils.isEmpty(action) && "com.kingroot.common.share.ACTION_SHARE".equals(action)) {
            m1570a(intent.getBooleanExtra("com.kingroot.common.share.result", false), C3826wd.f3855Mu);
        }
    }

    /* renamed from: a */
    public static void m1571a(C3829a c3829a) {
        f3863MC.put(c3829a, 1);
    }

    /* renamed from: b */
    public static void m1569b(C3829a c3829a) {
        if (f3863MC.containsKey(c3829a)) {
            f3863MC.remove(c3829a);
        }
    }

    /* renamed from: a */
    private static void m1570a(boolean z, C3826wd.C3827a c3827a) {
        C3829a key;
        for (Map.Entry<C3829a, Integer> entry : f3863MC.entrySet()) {
            if (entry.getValue() != null && (key = entry.getKey()) != null) {
                key.mo1568b(z, c3827a);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.we$a */
    /* loaded from: classes.dex */
    public static class C3829a {
        /* renamed from: b */
        public void mo1568b(boolean z, C3826wd.C3827a c3827a) {
        }
    }

    /* renamed from: a */
    public static void m1572a(Context context, boolean z, C3826wd.C3827a c3827a) {
        Intent intent = new Intent("com.kingroot.common.share.ACTION_SHARE");
        intent.putExtra("com.kingroot.common.share.result", z);
        intent.putExtra("com.kingroot.common.share.qq", c3827a.f3861My);
        intent.putExtra("com.kingroot.common.share.wechat", c3827a.f3862Mz);
        intent.putExtra("com.kingroot.common.share.session_id", c3827a.f3859MA);
        intent.putExtra("com.kingroot.common.share.callback_id", c3827a.f3860MB);
        context.sendBroadcast(intent);
    }
}
