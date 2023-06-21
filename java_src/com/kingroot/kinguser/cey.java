package com.kingroot.kinguser;

import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.kingroot.kinguser.cgy;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import tmsdk.common.exception.WifiApproveException;
import tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver;
/* loaded from: classes.dex */
public class cey implements SharkNetworkReceiver.InterfaceC4421a {
    private static cey bZk = null;
    private int bZl = -6;
    private long bZm = 0;
    private boolean bZn = false;
    private long bZo = 0;
    private Handler mHandler;
    private HandlerThread mHandlerThread;

    public static synchronized cey alt() {
        cey ceyVar;
        synchronized (cey.class) {
            if (bZk == null) {
                bZk = new cey();
            }
            ceyVar = bZk;
        }
        return ceyVar;
    }

    private cey() {
        this.mHandlerThread = null;
        this.mHandler = null;
        this.mHandlerThread = bze.ajZ().m5139nD("Shark-Network-Detect-HandlerThread");
        this.mHandlerThread.start();
        this.mHandler = new HandlerC2720a(this.mHandlerThread.getLooper());
        SharkNetworkReceiver.alR().m11a(this);
        this.mHandler.sendEmptyMessageDelayed(1, 5000L);
    }

    /* renamed from: com.kingroot.kinguser.cey$a */
    /* loaded from: classes.dex */
    class HandlerC2720a extends Handler {
        public HandlerC2720a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    cey.this.alw();
                    return;
                default:
                    return;
            }
        }
    }

    public void alu() {
        this.bZl = -4;
        this.bZm = System.currentTimeMillis();
    }

    /* renamed from: cP */
    public boolean m4680cP(long j) {
        return this.bZl == -4 && Math.abs(System.currentTimeMillis() - this.bZm) < j;
    }

    /* renamed from: k */
    public int m4679k(boolean z, boolean z2) {
        if (alv()) {
            this.bZl = -1;
        } else {
            boolean z3 = this.bZo > 0 && Math.abs(System.currentTimeMillis() - this.bZo) <= 300000;
            if (z) {
                alw();
            } else {
                if (z2 && !z3 && Math.abs(System.currentTimeMillis() - this.bZo) > BuglyBroadcastRecevier.UPLOADLIMITED) {
                    this.mHandler.removeMessages(1);
                    this.mHandler.sendEmptyMessage(1);
                }
                if (this.bZl == 0 && !z3) {
                    this.bZl = -5;
                }
            }
        }
        return this.bZl;
    }

    private boolean alv() {
        NetworkInfo networkInfo = null;
        try {
            networkInfo = ceb.akU().getActiveNetworkInfo();
        } catch (NullPointerException e) {
        }
        return networkInfo == null || !networkInfo.isConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean alw() {
        this.bZn = true;
        String str = null;
        try {
            str = cgy.m4296a(new cgy.InterfaceC2813a() { // from class: com.kingroot.kinguser.cey.1
                @Override // com.kingroot.kinguser.cgy.InterfaceC2813a
                /* renamed from: l */
                public void mo4292l(boolean z, boolean z2) {
                    if (z2) {
                        cey.this.bZl = -3;
                    } else if (z) {
                        cey.this.bZl = -2;
                    } else {
                        cey.this.bZl = 0;
                    }
                }
            });
        } catch (WifiApproveException e) {
            this.bZl = -3;
        }
        this.bZn = false;
        this.bZo = System.currentTimeMillis();
        return !TextUtils.isEmpty(str);
    }

    @Override // tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.InterfaceC4421a
    public void onConnected() {
        alu();
        if ((this.bZo > 0 && Math.abs(System.currentTimeMillis() - this.bZo) < BuglyBroadcastRecevier.UPLOADLIMITED) || this.bZn) {
            this.mHandler.removeMessages(1);
            this.mHandler.sendEmptyMessageDelayed(1, BuglyBroadcastRecevier.UPLOADLIMITED);
            return;
        }
        this.mHandler.removeMessages(1);
        this.mHandler.sendEmptyMessageDelayed(1, 5000L);
    }

    @Override // tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.InterfaceC4421a
    public void onDisconnected() {
        alu();
        this.mHandler.removeMessages(1);
        this.bZl = -1;
    }

    /* renamed from: ld */
    public static String m4678ld(int i) {
        return new StringBuilder().append(i).toString();
    }
}
