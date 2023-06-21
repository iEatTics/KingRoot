package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.C3671tw;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aiy;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.axf;
import com.kingroot.kinguser.axj;
/* loaded from: classes.dex */
public class SliderMainActivity extends KUBaseActivity {
    private static long mStartTime = 0;
    private boolean aiX = false;

    @Override // com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        mStartTime = System.currentTimeMillis();
        ady.m12308tK().mo1746bi(100026);
        adm.m12480st().m12501cy(12);
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        if (m12588vx()) {
            aiy.asP = true;
            return new axj(this);
        }
        aks.m11143BP().m10846be(false);
        aks.m11143BP().m11030Dy();
        return new axf(this);
    }

    /* renamed from: vx */
    private boolean m12588vx() {
        return aks.m11143BP().m11134BY() || aks.m11143BP().m11031Dx();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (!this.aiX) {
            this.aiX = true;
            C3671tw.m2086t(System.currentTimeMillis() - mStartTime);
        }
        try {
            Intent intent = getIntent();
            if (intent != null) {
                int intExtra = intent.getIntExtra("ku_goto_mainpage_notify", 0);
                if (intExtra == 1) {
                    ady.m12308tK().mo1746bi(100320);
                } else if (intExtra == 2) {
                    ady.m12308tK().mo1746bi(100322);
                }
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: i */
    public static Intent m12589i(Context context, int i) {
        Intent intent = new Intent();
        try {
            intent.setClass(context, SliderMainActivity.class);
            intent.setFlags(268435456);
            intent.setAction("com.kingroot.kinguser.KU_MainPage");
            intent.putExtra("ku_goto_mainpage_notify", i);
            intent.setPackage(context.getPackageName());
        } catch (Exception e) {
        }
        return intent;
    }
}
