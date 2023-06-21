package com.kingroot.kinguser;

import android.util.Log;
import com.p019qq.taf.jce.JceStruct;
import java.util.List;
/* loaded from: classes.dex */
public class brp implements brj {
    final String TAG = "AdSharkCallBack";
    List<bsc> bKl;
    InterfaceC2590a bKm;

    /* renamed from: com.kingroot.kinguser.brp$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2590a {
        /* renamed from: m */
        void mo5600m(List<bsc> list, boolean z);
    }

    public brp(List<bsc> list, InterfaceC2590a interfaceC2590a) {
        this.bKl = list;
        this.bKm = interfaceC2590a;
    }

    @Override // com.kingroot.kinguser.brj
    /* renamed from: a */
    public void mo5670a(int i, JceStruct jceStruct) {
        if (i != 0) {
            Log.w("AdSharkCallBack", "resp==null");
            this.bKm.mo5600m(this.bKl, false);
        } else if (jceStruct == null) {
            Log.w("AdSharkCallBack", "resp==null");
            this.bKm.mo5600m(this.bKl, false);
        } else {
            this.bKm.mo5600m(this.bKl, true);
        }
    }
}
