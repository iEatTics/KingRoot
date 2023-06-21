package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.kingroot.common.framework.broadcast.IBroadCastService;
import com.kingroot.common.framework.broadcast.IBroadCastServiceCallback;
import com.kingroot.kinguser.AbstractC3634th;
import com.kingroot.kinguser.bzt;
/* renamed from: com.kingroot.kinguser.tg */
/* loaded from: classes.dex */
public class C3632tg {

    /* renamed from: Hf */
    private static IBinder f3562Hf = new IBroadCastServiceCallback.Stub() { // from class: com.kingroot.common.framework.broadcast.KBroadCastProxy$1
        @Override // com.kingroot.common.framework.broadcast.IBroadCastServiceCallback
        public void onReceive(String str, Intent intent) {
            try {
                ((AbstractC3634th) Class.forName(str).newInstance()).onReceive(bzt.m5101ge(), intent);
            } catch (Exception e) {
            }
        }
    };

    /* renamed from: jC */
    public static void m2177jC() {
        C3636tj.m2173a(new Intent(bzt.m5101ge(), C3635ti.class), new ServiceConnection() { // from class: com.kingroot.kinguser.tg.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IBroadCastService asInterface = IBroadCastService.Stub.asInterface(iBinder);
                if (asInterface != null) {
                    try {
                        asInterface.registCallBack(C3632tg.f3562Hf);
                    } catch (RemoteException e) {
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }
        });
    }
}
