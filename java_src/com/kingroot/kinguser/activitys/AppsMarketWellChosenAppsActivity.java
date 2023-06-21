package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.acu;
import com.kingroot.kinguser.aiq;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.alx;
import com.kingroot.kinguser.ane;
import com.kingroot.kinguser.anp;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.aup;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import java.util.List;
/* loaded from: classes.dex */
public class AppsMarketWellChosenAppsActivity extends KUBaseActivity {
    private static final String TAG = aiq.arY + "_AppsMarketWellChosenAppsActivity";

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ane.m10302IR();
        aks m11143BP = aks.m11143BP();
        m11143BP.m10879bG(System.currentTimeMillis());
        m11143BP.m10766eO(m11143BP.m10959FR() + 1);
        alx.m10508HB().mo10406HE();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        anp anpVar = new anp(this);
        anpVar.m10159a(new aup(anpVar));
        return anpVar;
    }

    /* renamed from: f */
    public static void m12635f(Context context, int i) {
        Intent intent = new Intent(context, AppsMarketWellChosenAppsActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("bundle_key_show_type", i);
        context.startActivity(intent);
    }

    @WorkerThread
    /* renamed from: vs */
    public static boolean m12634vs() {
        long j;
        aks m11143BP = aks.m11143BP();
        if (acu.m12573b(m11143BP.m10961FP(), System.currentTimeMillis(), 172800000L) && m11143BP.m10959FR() < 3) {
            Integer mo10407HD = alx.m10508HB().mo10407HD();
            if (mo10407HD.intValue() == 0) {
                return false;
            }
            List<AppBaseModel> mo10403fj = alx.m10508HB().mo10403fj(mo10407HD.intValue());
            if (!C3942yy.m1351d(mo10403fj)) {
                long j2 = 0;
                for (AppBaseModel appBaseModel : mo10403fj.subList(0, Math.min(9, mo10403fj.size()))) {
                    if (j2 == 0) {
                        j = appBaseModel.fileSize;
                    } else {
                        j = appBaseModel.fileSize < j2 ? appBaseModel.fileSize : j2;
                    }
                    j2 = j;
                }
                if (apu.m9747LN() < j2) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
