package com.kingroot.kinguser;

import android.util.Log;
/* loaded from: classes.dex */
public class brw implements brg {
    private static brw bLe;
    private final String TAG = "FeatureReportProxy";
    private brg bLf;

    private brw() {
    }

    /* renamed from: b */
    public void m5618b(brg brgVar) {
        this.bLf = brgVar;
    }

    public static brw ahO() {
        if (bLe == null) {
            synchronized (brw.class) {
                if (bLe == null) {
                    bLe = new brw();
                }
            }
        }
        return bLe;
    }

    private boolean ahP() {
        if (this.bLf == null) {
            Log.w("FeatureReportProxy", "please implement IFeatureReport interface,then set into DiscoverySdk");
            return false;
        }
        return true;
    }

    @Override // com.kingroot.kinguser.brg
    /* renamed from: c */
    public void mo5617c(int i, String str, int i2) {
        if (ahP()) {
            this.bLf.mo5617c(i, str, i2);
        }
    }
}
