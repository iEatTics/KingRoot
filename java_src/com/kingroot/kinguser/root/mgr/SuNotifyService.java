package com.kingroot.kinguser.root.mgr;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcelable;
import com.kingroot.kinguser.aiv;
import com.kingroot.kinguser.ajn;
import com.kingroot.kinguser.ajs;
import com.kingroot.kinguser.baw;
import com.kingroot.kinguser.bbf;
import com.kingroot.kinguser.bdx;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgy;
import com.kingroot.kinguser.model.SuRequestCmdModel;
/* loaded from: classes.dex */
public class SuNotifyService extends Service {
    private static final bgy bfP = new bgy("SuRequestHandlerThread", 10);
    private bed bfO = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.root.mgr.SuNotifyService.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ajn.m11456zp().m11455zq();
            baw.m7873VY();
            bdx.m7488jS();
            aiv.m11525yw().m11522yz();
        }
    });

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            Parcelable parcelableExtra = intent.getParcelableExtra("su_cmd");
            if (parcelableExtra instanceof SuRequestCmdModel) {
                final SuRequestCmdModel suRequestCmdModel = (SuRequestCmdModel) parcelableExtra;
                bfP.post(new Runnable() { // from class: com.kingroot.kinguser.root.mgr.SuNotifyService.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (suRequestCmdModel.aRr == 2) {
                            ajs.m11423zx().m11424gy(suRequestCmdModel.aRp);
                        } else if (suRequestCmdModel.aRr == 4) {
                            ajs.m11423zx().m11425b(suRequestCmdModel);
                        } else {
                            bbf.m7836Wl().m7827d(suRequestCmdModel);
                        }
                    }
                });
            } else {
                beg.m7461Zj().m7450c(this.bfO);
            }
        }
        stopSelf(i2);
        return super.onStartCommand(intent, i, i2);
    }

    /* renamed from: b */
    public static void m2427b(Context context, SuRequestCmdModel suRequestCmdModel) {
        try {
            Intent intent = new Intent(context, SuNotifyService.class);
            intent.setPackage(context.getPackageName());
            intent.putExtra("su_cmd", suRequestCmdModel);
            context.startService(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
