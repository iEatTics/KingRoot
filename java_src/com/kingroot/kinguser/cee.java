package com.kingroot.kinguser;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import java.util.concurrent.ConcurrentHashMap;
import tmsdk.common.BaseTMSReceiver;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class cee {
    private static cee bXU = null;
    private static Object lock = new Object();
    private InterfaceC2709b bXV;
    private Handler mHandler;
    private Context context = TMSDKContext.akS();
    ConcurrentHashMap<String, C2708a> bXT = new ConcurrentHashMap<>();

    /* renamed from: com.kingroot.kinguser.cee$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2709b {
        /* renamed from: nJ */
        void mo4397nJ(String str);

        /* renamed from: q */
        void mo4396q(String str, long j);
    }

    private cee() {
        this.mHandler = null;
        this.mHandler = new Handler(this.context.getMainLooper());
        m4788a(new InterfaceC2709b() { // from class: com.kingroot.kinguser.cee.1
            @Override // com.kingroot.kinguser.cee.InterfaceC2709b
            /* renamed from: nJ */
            public void mo4397nJ(String str) {
            }

            @Override // com.kingroot.kinguser.cee.InterfaceC2709b
            /* renamed from: q */
            public void mo4396q(String str, long j) {
            }
        });
    }

    public static cee akW() {
        if (bXU == null) {
            synchronized (lock) {
                if (bXU == null) {
                    bXU = new cee();
                }
            }
        }
        return bXU;
    }

    /* renamed from: a */
    public void m4788a(InterfaceC2709b interfaceC2709b) {
        this.bXV = interfaceC2709b;
    }

    /* renamed from: a */
    public void m4786a(String str, long j, Runnable runnable) {
        try {
            C2708a c2708a = new C2708a();
            this.context.registerReceiver(c2708a, new IntentFilter(str));
            c2708a.bcH = runnable;
            c2708a.action = str;
            this.bXT.put(str, c2708a);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.context, 0, new Intent(str), 0);
            AlarmManager alarmManager = (AlarmManager) this.context.getSystemService("alarm");
            if (this.bXV != null) {
                this.bXV.mo4396q(str, System.currentTimeMillis() + j);
            }
            alarmManager.set(0, System.currentTimeMillis() + j, broadcast);
        } catch (Throwable th) {
        }
    }

    /* renamed from: nI */
    public void m4785nI(String str) {
        if (this.bXV != null) {
            this.bXV.mo4397nJ(str);
        }
        C2708a remove = this.bXT.remove(str);
        if (remove != null) {
            cfr.m4399aa(this.context, str);
            this.context.unregisterReceiver(remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cee$a */
    /* loaded from: classes.dex */
    public class C2708a extends BaseTMSReceiver {
        public String action = null;
        public Runnable bcH = null;

        C2708a() {
        }

        @Override // tmsdk.common.BaseTMSReceiver
        /* renamed from: f */
        public void mo5f(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null && this.action.equals(action) && this.bcH != null) {
                cee.this.mHandler.post(this.bcH);
                cee.this.m4785nI(action);
            }
        }
    }
}
