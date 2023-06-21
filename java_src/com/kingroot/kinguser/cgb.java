package com.kingroot.kinguser;

import android.content.Context;
import android.os.HandlerThread;
/* loaded from: classes.dex */
public class cgb extends cec implements cgd {
    private bzi cea;

    @Override // com.kingroot.kinguser.cdw
    /* renamed from: I */
    public void mo4351I(Context context) {
        this.cea = new bzi();
        this.cea.mo4351I(context);
        m4794a(this.cea);
    }

    /* renamed from: a */
    public void m4350a(Runnable runnable, String str, long j) {
        this.cea.m5134a(runnable, str, j, false, null);
    }

    /* renamed from: b */
    public void m4349b(Runnable runnable, String str, long j) {
        this.cea.m5132b(runnable, str, j, false, null);
    }

    /* renamed from: e */
    public HandlerThread m4348e(String str, int i, long j) {
        return this.cea.m5130e(str, i, j);
    }
}
