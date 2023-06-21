package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.bcs;
import com.kingroot.kinguser.bct;
import com.kingroot.kinguser.examination.service.ICloudCheckCallback;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes.dex */
public class bba extends AbstractC3634th {
    private static final C2055a bex = new C2055a();

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, final Intent intent) {
        if (intent != null) {
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bba.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    int i = 1;
                    boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                    ajn.m11456zp().m11455zq();
                    ajb.m11487yT().checkAsync(false, true, null);
                    bbt.m7780WG().checkAppRules();
                    bdx.m7488jS();
                    String action = intent.getAction();
                    if (!TextUtils.isEmpty(action)) {
                        if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action)) {
                            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bba.1.1
                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                public void run() {
                                    super.run();
                                    bfr.aaH().m7236dO(true);
                                }
                            }));
                        }
                        Uri data = intent.getData();
                        if (data != null) {
                            String schemeSpecificPart = data.getSchemeSpecificPart();
                            if (!TextUtils.isEmpty(schemeSpecificPart)) {
                                if (action.equals("android.intent.action.PACKAGE_ADDED")) {
                                    i = 0;
                                } else if (!action.equals("android.intent.action.PACKAGE_REPLACED")) {
                                    i = action.equals("android.intent.action.PACKAGE_REMOVED") ? 2 : -1;
                                }
                                if (i != -1) {
                                    new ajx().m11369u(schemeSpecificPart, i);
                                }
                                if ("android.intent.action.PACKAGE_ADDED".equals(action) || "android.intent.action.PACKAGE_REMOVED".equals(action)) {
                                    beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bba.1.2
                                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                        public void run() {
                                            super.run();
                                            afg.m12081vc();
                                            asm.m9427Od().m9425Of();
                                        }
                                    }));
                                }
                                if (action.equals("android.intent.action.PACKAGE_ADDED") && !booleanExtra) {
                                    bba.bex.m7865ff(schemeSpecificPart);
                                    bba.bex.m1530ny();
                                }
                                if (!booleanExtra && (i == 0 || i == 2)) {
                                    ajv.m11387zD().m11389d(i, intent.getIntExtra("android.intent.extra.UID", -1), schemeSpecificPart);
                                }
                            }
                        }
                    }
                    return null;
                }
            }, new Object[0]);
        }
    }

    /* renamed from: com.kingroot.kinguser.bba$a */
    /* loaded from: classes.dex */
    public static class C2055a extends RunnableC3845wo {
        private LinkedBlockingQueue<String> ahL = new LinkedBlockingQueue<>();

        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            final String take;
            while (true) {
                try {
                    take = this.ahL.take();
                } catch (InterruptedException e) {
                }
                if (take != null) {
                    ajv.m11387zD().m11388gC(take);
                    bbt.m7780WG().startPrepareRootMgrListWhenInstall(take);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(take);
                    arv.m9499Nz().cloudCheckApps(arrayList, new ICloudCheckCallback.Stub() { // from class: com.kingroot.kinguser.receiver.InstallReceiver$InstallProcessThread$1
                        @Override // com.kingroot.kinguser.examination.service.ICloudCheckCallback
                        public void onRiskFound(Bundle bundle) {
                            bct.m7586Yf();
                        }

                        @Override // com.kingroot.kinguser.examination.service.ICloudCheckCallback
                        public void onFinish(int i) {
                            if (bcs.m7594Yc().m7610dF(true).keySet().contains(take)) {
                                bct.m7586Yf();
                            }
                        }
                    });
                    HashSet hashSet = new HashSet();
                    hashSet.add(take);
                    awc.m8697SB().m8689h(hashSet);
                } else {
                    return;
                }
            }
        }

        /* renamed from: ff */
        public boolean m7865ff(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                this.ahL.put(str);
                return true;
            } catch (InterruptedException e) {
                return false;
            }
        }
    }
}
