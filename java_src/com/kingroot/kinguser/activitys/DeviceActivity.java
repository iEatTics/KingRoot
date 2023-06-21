package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.kingroot.common.uilib.template.BaseActivity;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aft;
import com.kingroot.kinguser.auq;
import com.kingroot.kinguser.axg;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class DeviceActivity extends BaseActivity {
    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        axg axgVar = new axg(this);
        auq auqVar = new auq(axgVar, this);
        axgVar.m8427a(auqVar);
        auqVar.start();
        ady.m12308tK().mo1746bi(100540);
        return axgVar;
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.none, R.anim.slide_left_out);
    }

    /* renamed from: aL */
    public static void m12628aL(Context context) {
        Intent intent = new Intent();
        if (context == null) {
            context = KUApplication.m13453ge();
            intent.setFlags(268435456);
        }
        intent.setClass(context, DeviceActivity.class);
        context.startActivity(intent);
        Activity m12026vt = aft.m12026vt();
        if (m12026vt != null) {
            m12026vt.overridePendingTransition(R.anim.slide_left_in, R.anim.none);
        }
    }
}
