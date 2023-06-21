package com.kingroot.kinguser.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.aks;
import java.util.List;
/* loaded from: classes.dex */
public class AntiInjectLogDeleteReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, final Intent intent) {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.receiver.AntiInjectLogDeleteReceiver.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                if (intent != null && intent.getAction().equalsIgnoreCase("com.kingroot.kinguser.ANTILOG_DELETE")) {
                    aks.m11143BP().m10867bM(false);
                    return null;
                }
                return null;
            }
        }, new Object[0]);
    }
}
