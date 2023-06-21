package com.kingroot.kinguser.activitys;

import android.content.Context;
import android.content.Intent;
import cloudsdk.ext.p008kr.RootSdk;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.aiq;
import com.kingroot.kinguser.aus;
import com.kingroot.kinguser.axq;
/* loaded from: classes.dex */
public class RootProcessActivity extends KUBaseActivity {
    private final String TAG = aiq.asd + "RootProcessActivity";
    private aus aiC;

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        axq axqVar = new axq(this);
        this.aiC = new aus(axqVar, this);
        axqVar.m8208a(this.aiC);
        return axqVar;
    }

    /* renamed from: h */
    public static void m12608h(Context context, int i) {
        Intent intent = new Intent();
        intent.setClass(context, RootProcessActivity.class);
        intent.putExtra("root_process_state", i);
        context.startActivity(intent);
    }

    /* renamed from: cW */
    public void m12610cW(int i) {
        RootSdk.getInstance().dispatchRoot(i, this.aiC, this.aiC);
    }

    /* renamed from: cX */
    public void m12609cX(int i) {
        this.aiC.mo8976cX(i);
    }
}
