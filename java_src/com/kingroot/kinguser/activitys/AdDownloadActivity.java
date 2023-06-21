package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aea;
import com.kingroot.kinguser.afu;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import com.tencent.qqpim.discovery.AdDisplayModel;
/* loaded from: classes.dex */
public class AdDownloadActivity extends KUBaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        aea.m12288g(7, 0, 0);
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.activitys.AdDownloadActivity.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                aks.m11143BP().m10859bU(true);
                afu.InterfaceC0829a interfaceC0829a = new afu.InterfaceC0829a() { // from class: com.kingroot.kinguser.activitys.AdDownloadActivity.1.1
                    @Override // com.kingroot.kinguser.afu.InterfaceC0829a
                    /* renamed from: a */
                    public void mo8437a(AdDisplayModel adDisplayModel) {
                        synchronized (this) {
                            notifyAll();
                        }
                    }

                    @Override // com.kingroot.kinguser.afu.InterfaceC0829a
                    /* renamed from: cT */
                    public void mo8436cT(int i) {
                        synchronized (this) {
                            notifyAll();
                        }
                    }
                };
                afu.m12017vB().m12021a(true, interfaceC0829a);
                synchronized (interfaceC0829a) {
                    try {
                        interfaceC0829a.wait(BuglyBroadcastRecevier.UPLOADLIMITED);
                    } catch (InterruptedException e) {
                    }
                }
            }
        }));
        finish();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        return null;
    }

    /* renamed from: aL */
    public static void m12652aL(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClass(context, AdDownloadActivity.class);
            intent.setFlags(268435456);
            context.startActivity(intent);
            aea.m12288g(6, 1, 0);
        } catch (Exception e) {
            aea.m12288g(6, 2, 0);
        }
    }
}
