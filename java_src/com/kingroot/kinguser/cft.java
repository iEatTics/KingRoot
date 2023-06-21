package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import tmsdk.common.BaseTMSReceiver;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class cft {
    private C2793a cdC;
    private InterfaceC2795c cdE;
    private InterfaceC2794b cdF;
    private Context mContext;
    private boolean cdB = false;
    private long cdD = 0;
    private Handler mHandler = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cft.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            cft.this.amD();
            cfr.m4398b(cft.this.mContext, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE", 1000 * cft.this.cdF.amA());
        }
    };

    /* renamed from: com.kingroot.kinguser.cft$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2794b {
        int amA();
    }

    /* renamed from: com.kingroot.kinguser.cft$c */
    /* loaded from: classes.dex */
    public interface InterfaceC2795c {
        void amz();
    }

    public cft(Context context, InterfaceC2795c interfaceC2795c, InterfaceC2794b interfaceC2794b) {
        this.cdC = null;
        this.mContext = null;
        this.cdE = null;
        this.cdF = null;
        this.mContext = context;
        this.cdE = interfaceC2795c;
        this.cdF = interfaceC2794b;
        this.cdC = new C2793a();
    }

    public synchronized void start() {
        int amA = this.cdF.amA();
        if (!this.cdB) {
            try {
                this.mContext.registerReceiver(this.cdC, new IntentFilter("com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"));
                this.cdB = true;
            } catch (Throwable th) {
            }
        }
        cfr.m4398b(this.mContext, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE", 1000 * amA);
    }

    public synchronized void reset() {
        cfr.m4399aa(this.mContext, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE");
        cfr.m4398b(this.mContext, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE", 1000 * this.cdF.amA());
    }

    public synchronized void stop() {
        this.mHandler.removeMessages(0);
        cfr.m4399aa(this.mContext, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE");
        if (this.cdB) {
            try {
                this.mContext.unregisterReceiver(this.cdC);
                this.cdB = false;
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void amD() {
        if (this.cdE != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.cdD >= 30000) {
                this.cdE.amz();
                this.cdD = currentTimeMillis;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.cft$a */
    /* loaded from: classes.dex */
    class C2793a extends BaseTMSReceiver {
        private C2793a() {
        }

        @Override // tmsdk.common.BaseTMSReceiver
        /* renamed from: f */
        public void mo5f(Context context, Intent intent) {
            String action = intent.getAction();
            String str = intent.getPackage();
            if (action != null && str != null && str.equals(TMSDKContext.akS().getPackageName()) && action.equals("com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE")) {
                cft.this.mHandler.sendEmptyMessage(0);
            }
        }
    }
}
