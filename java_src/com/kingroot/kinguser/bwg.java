package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
/* loaded from: classes.dex */
public class bwg {
    private static bwg bQY = null;

    public static synchronized bwg aiJ() {
        bwg bwgVar;
        synchronized (bwg.class) {
            if (bQY == null) {
                bQY = new bwg();
            }
            bwgVar = bQY;
        }
        return bwgVar;
    }

    private bwg() {
    }

    /* renamed from: bT */
    public void m5336bT(Context context) {
        bra ahv = bra.ahv();
        ahv.setContext(context);
        ahv.m5723d(cgp.isEnable(), "TMSLog");
        ahv.m5719er(cgp.isEnable());
        ahv.m5718es(false);
        ahv.m5717et(false);
        ahv.m5716eu(true);
        ahv.m5715ev(true);
        ahv.m5714ew(false);
        ahv.m5713ex(false);
        ahv.m5712ey(false);
        ahv.m5709mW("tms.pService_5_1");
        ahv.m5708mX("_tms");
        ahv.m5711ez(true);
        ahv.m5710j(null);
        ahv.m5722eA(true);
        if (Build.VERSION.SDK_INT >= 21) {
            ahv.m5721eB(false);
        } else {
            ahv.m5721eB(true);
        }
        ahv.m5707p(new Intent("com.tencent.tmsecure.ACTION_PKG_MONITOR"));
        ahv.m5720eC(true);
    }
}
