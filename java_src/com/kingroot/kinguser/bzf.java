package com.kingroot.kinguser;

import android.os.HandlerThread;
import com.kingroot.loader.common.KlConst;
/* loaded from: classes.dex */
public class bzf {
    private String adZ;
    private cgb bVh;
    private long bVi;

    public bzf(long j, String str) {
        this.bVi = j;
        this.adZ = str != null ? str + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR : "no_pkg_name-";
        this.bVh = (cgb) ced.m4790j(cgb.class);
    }

    /* renamed from: nC */
    private String m5140nC(String str) {
        if (str != null) {
            return this.adZ + str;
        }
        return null;
    }

    /* renamed from: a */
    public void m5142a(Runnable runnable, String str) {
        this.bVh.m4350a(runnable, m5140nC(str), this.bVi);
    }

    /* renamed from: b */
    public void m5141b(Runnable runnable, String str) {
        this.bVh.m4349b(runnable, m5140nC(str), this.bVi);
    }

    /* renamed from: nD */
    public HandlerThread m5139nD(String str) {
        return this.bVh.m4348e(m5140nC(str), 0, this.bVi);
    }
}
