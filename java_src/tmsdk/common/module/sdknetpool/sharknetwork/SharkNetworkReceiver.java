package tmsdk.common.module.sdknetpool.sharknetwork;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.p007v7.internal.widget.ActivityChooserView;
import com.kingroot.kinguser.bze;
import com.kingroot.kinguser.ceb;
import com.kingroot.kinguser.ces;
import com.kingroot.kinguser.cey;
import com.kingroot.kinguser.cfd;
import java.util.Iterator;
import java.util.LinkedList;
import tmsdk.common.BaseTMSReceiver;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class SharkNetworkReceiver extends BaseTMSReceiver {
    private static SharkNetworkReceiver cbd = null;
    private long caW = 0;
    private boolean caX = false;
    private NetworkInfo.State caY = NetworkInfo.State.UNKNOWN;
    private String caZ = null;
    private String cba = null;
    private LinkedList<InterfaceC4421a> cbb = new LinkedList<>();
    private LinkedList<InterfaceC4422b> cbc = new LinkedList<>();
    private Handler mHandler = new Handler(cfd.getLooper()) { // from class: tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    SharkNetworkReceiver.this.m12KD();
                    return;
                default:
                    return;
            }
        }
    };

    /* renamed from: tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver$a */
    /* loaded from: classes.dex */
    public interface InterfaceC4421a {
        void onConnected();

        void onDisconnected();
    }

    /* renamed from: tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver$b */
    /* loaded from: classes.dex */
    public interface InterfaceC4422b {
        void alD();
    }

    public static SharkNetworkReceiver alR() {
        if (cbd == null) {
            synchronized (SharkNetworkReceiver.class) {
                if (cbd == null) {
                    cbd = new SharkNetworkReceiver();
                }
            }
        }
        cbd.alU();
        return cbd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: KD */
    public void m12KD() {
        bze.ajZ().m5141b(new Runnable() { // from class: tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.2
            @Override // java.lang.Runnable
            public void run() {
                LinkedList linkedList;
                synchronized (SharkNetworkReceiver.this.cbc) {
                    linkedList = (LinkedList) SharkNetworkReceiver.this.cbc.clone();
                }
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    InterfaceC4422b interfaceC4422b = (InterfaceC4422b) it.next();
                    if (interfaceC4422b != null) {
                        interfaceC4422b.alD();
                    }
                }
            }
        }, "network_change");
    }

    private void alS() {
        bze.ajZ().m5141b(new Runnable() { // from class: tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.3
            @Override // java.lang.Runnable
            public void run() {
                LinkedList linkedList;
                synchronized (SharkNetworkReceiver.this.cbb) {
                    linkedList = (LinkedList) SharkNetworkReceiver.this.cbb.clone();
                }
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    InterfaceC4421a interfaceC4421a = (InterfaceC4421a) it.next();
                    if (interfaceC4421a != null) {
                        interfaceC4421a.onDisconnected();
                    }
                }
            }
        }, "network_disconnected");
    }

    private void alT() {
        bze.ajZ().m5141b(new Runnable() { // from class: tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.4
            @Override // java.lang.Runnable
            public void run() {
                LinkedList linkedList;
                ces ale = ces.ale();
                if (ale != null) {
                    ale.mo4390KD();
                }
                synchronized (SharkNetworkReceiver.this.cbb) {
                    linkedList = (LinkedList) SharkNetworkReceiver.this.cbb.clone();
                }
                Iterator it = linkedList.iterator();
                while (it.hasNext()) {
                    InterfaceC4421a interfaceC4421a = (InterfaceC4421a) it.next();
                    if (interfaceC4421a != null) {
                        interfaceC4421a.onConnected();
                    }
                }
            }
        }, "network_connected");
    }

    /* renamed from: a */
    public void m10a(InterfaceC4422b interfaceC4422b) {
        if (interfaceC4422b != null) {
            synchronized (this.cbc) {
                if (!this.cbc.contains(interfaceC4422b)) {
                    this.cbc.add(interfaceC4422b);
                }
            }
        }
    }

    /* renamed from: a */
    public void m11a(InterfaceC4421a interfaceC4421a) {
        if (interfaceC4421a != null) {
            synchronized (this.cbb) {
                if (!this.cbb.contains(interfaceC4421a)) {
                    this.cbb.add(interfaceC4421a);
                }
            }
        }
    }

    private void alU() {
        try {
            Context akS = TMSDKContext.akS();
            if (akS != null) {
                m6ct(akS);
            }
        } catch (Exception e) {
        }
    }

    @Override // tmsdk.common.BaseTMSReceiver
    /* renamed from: f */
    public void mo5f(Context context, Intent intent) {
        NetworkInfo networkInfo;
        if (intent != null && intent.getAction() != null && "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            if (this.caW <= 0 || System.currentTimeMillis() - this.caW > 2000) {
                cey.alt().alu();
                this.mHandler.removeMessages(1);
                this.mHandler.sendEmptyMessageDelayed(1, 5000L);
            }
            Bundle extras = intent.getExtras();
            if (extras != null && (networkInfo = (NetworkInfo) extras.getParcelable("networkInfo")) != null) {
                NetworkInfo.State state = networkInfo.getState();
                String typeName = networkInfo.getTypeName();
                String subtypeName = networkInfo.getSubtypeName();
                if (state == NetworkInfo.State.CONNECTED) {
                    if (this.caY != NetworkInfo.State.CONNECTED) {
                        alT();
                    }
                } else if (state == NetworkInfo.State.DISCONNECTED && this.caY != NetworkInfo.State.DISCONNECTED) {
                    alS();
                }
                this.caY = state;
                this.caZ = typeName;
                this.cba = subtypeName;
            }
        }
    }

    /* renamed from: ct */
    private synchronized void m6ct(Context context) {
        if (!this.caX) {
            try {
                NetworkInfo activeNetworkInfo = ceb.akU().getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    this.caY = activeNetworkInfo.getState();
                    this.caZ = activeNetworkInfo.getTypeName();
                    this.cba = activeNetworkInfo.getSubtypeName();
                } else {
                    this.caY = NetworkInfo.State.DISCONNECTED;
                }
            } catch (Exception e) {
            }
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                intentFilter.setPriority(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                context.registerReceiver(this, intentFilter);
                this.caW = System.currentTimeMillis();
                this.caX = true;
            } catch (Throwable th) {
            }
        }
    }
}
