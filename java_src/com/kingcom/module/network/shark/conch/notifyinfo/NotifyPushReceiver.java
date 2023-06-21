package com.kingcom.module.network.shark.conch.notifyinfo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.kingroot.kinguser.C3133gs;
import com.kingroot.kinguser.RunnableC3444pw;
import com.kingroot.kinguser.bzu;
/* loaded from: classes.dex */
public class NotifyPushReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent != null ? intent.getAction() : null;
        if (!TextUtils.isEmpty(action) && action.equals("com.kingcom.action.NOTIFY_PUSH_CLICK")) {
            long longExtra = intent.getLongExtra("extra_task_id", 0L);
            Intent intent2 = (Intent) intent.getParcelableExtra("extra_notify_push_click");
            if (intent2 != null) {
                intent2.addFlags(268435456);
                try {
                    context.startActivity(intent2);
                } catch (Throwable th) {
                }
                C3133gs.m3661a(new RunnableC3444pw(this, longExtra));
            }
        }
    }

    /* renamed from: gn */
    public static void m13631gn() {
        NotifyPushReceiver notifyPushReceiver = new NotifyPushReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.kingcom.action.NOTIFY_PUSH_CLICK");
        bzu.m5098ge().registerReceiver(notifyPushReceiver, intentFilter);
    }
}
