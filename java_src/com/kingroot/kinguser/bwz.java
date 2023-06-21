package com.kingroot.kinguser;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
/* loaded from: classes.dex */
class bwz extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            if (m5267g(context, intent) && "c".equals(intent.getStringExtra("t"))) {
                m5266q(intent);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: g */
    private boolean m5267g(Context context, Intent intent) {
        if (intent != null && "com.tencent.turingmm.msg105008".equals(intent.getAction())) {
            ComponentName component = intent.getComponent();
            if (component != null) {
                String packageName = component.getPackageName();
                String packageName2 = context.getPackageName();
                if (TextUtils.isEmpty(packageName) || TextUtils.isEmpty(packageName2) || !packageName.equals(packageName2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: q */
    private void m5266q(Intent intent) {
        byte[] m6229d;
        String stringExtra = intent.getStringExtra("m");
        if (!TextUtils.isEmpty(stringExtra)) {
            String[] split = stringExtra.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            if (split.length == 2) {
                String str = split[0];
                String str2 = split[1];
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (m6229d = bnk.m6229d(bzd.m5144dJ(str2), str.getBytes())) != null) {
                    String[] split2 = new String(m6229d).split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
                    if (split2.length == 2) {
                        try {
                            try {
                                bwx.aje().m5273aw(Integer.valueOf(split2[0]).intValue(), Integer.valueOf(split2[1]).intValue());
                            } catch (NumberFormatException e) {
                            }
                        } catch (NumberFormatException e2) {
                        }
                    }
                }
            }
        }
    }
}
