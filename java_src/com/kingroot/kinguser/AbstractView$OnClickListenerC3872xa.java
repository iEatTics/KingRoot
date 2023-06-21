package com.kingroot.kinguser;

import android.view.View;
/* renamed from: com.kingroot.kinguser.xa */
/* loaded from: classes.dex */
public abstract class AbstractView$OnClickListenerC3872xa implements View.OnClickListener {

    /* renamed from: TK */
    private int f3939TK = 1000;

    /* renamed from: TL */
    private long f3940TL = 0;

    /* renamed from: j */
    public abstract void mo1481j(View view);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f3940TL > this.f3939TK) {
            this.f3940TL = currentTimeMillis;
            mo1481j(view);
        }
    }
}
