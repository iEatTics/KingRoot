package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.IntRange;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.common.uilib.MainExpCircleView;
import com.kingroot.common.uilib.MainExpInnerCircleView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class apy {
    private MainExpCircleView aKk;
    private int aKl = 100;
    private int aKm = this.aKl;
    private Handler mHandler = new Handler() { // from class: com.kingroot.kinguser.apy.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (1 == message.what) {
                apy.this.aKk.m13325a(apy.this.aKm, apy.this.aKl, new MainExpInnerCircleView.InterfaceC0531a() { // from class: com.kingroot.kinguser.apy.1.1
                    @Override // com.kingroot.common.uilib.MainExpInnerCircleView.InterfaceC0531a
                    /* renamed from: y */
                    public void mo9650y(int i, int i2) {
                    }

                    @Override // com.kingroot.common.uilib.MainExpInnerCircleView.InterfaceC0531a
                    /* renamed from: bL */
                    public void mo9651bL(int i) {
                        apy.this.aKm = i;
                    }
                });
            }
        }
    };

    public apy(Context context) {
        init(context);
    }

    private void init(Context context) {
        this.aKk = (MainExpCircleView) LayoutInflater.from(context).inflate(R.layout.main_exp_layout, (ViewGroup) null);
        this.aKk.setTitleText(C3953zi.m1311pr().getString(R.string.examination_score_tip));
    }

    /* renamed from: gD */
    public void m9655gD() {
        this.aKk.m13311gD();
    }

    /* renamed from: gl */
    public void m9654gl(@IntRange(from = 0, m13740to = 100) int i) {
        if (i != this.aKl && this.aKl >= 0 && this.aKl <= 100) {
            this.aKl = i;
            if (this.aKl >= 100) {
                this.aKl = 100;
            }
            this.mHandler.sendEmptyMessage(1);
        }
    }

    /* renamed from: Mj */
    public MainExpCircleView m9668Mj() {
        return this.aKk;
    }

    /* renamed from: Mk */
    public void m9667Mk() {
        this.aKk.setState(MainExpCircleView.EnumC0528a.IDLE);
    }

    /* renamed from: Ml */
    public long m9666Ml() {
        return 0L;
    }

    /* renamed from: Mm */
    public int m9665Mm() {
        if (this.aKl >= 100) {
            this.aKl = 100;
        }
        return this.aKl;
    }

    /* renamed from: gm */
    public void m9653gm(int i) {
        this.aKl += i;
        if (this.aKl >= 100) {
            this.aKl = 100;
        }
        this.mHandler.sendEmptyMessage(1);
    }

    /* renamed from: Mn */
    public void m9664Mn() {
        this.aKk.m13308nJ();
    }

    /* renamed from: Mo */
    public void m9663Mo() {
        this.aKk.m13307nK();
    }

    /* renamed from: nL */
    public void m9652nL() {
        this.aKk.m13306nL();
    }

    /* renamed from: a */
    public void m9662a(AnimatorListenerAdapter animatorListenerAdapter) {
        this.aKk.m13323a(animatorListenerAdapter);
    }

    /* renamed from: a */
    public void m9659a(final aqs aqsVar) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.apy.2
            @Override // java.lang.Runnable
            public void run() {
                apy.this.aKk.m13319a(aqsVar);
            }
        });
    }

    /* renamed from: b */
    public void m9657b(final aqs aqsVar) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.apy.3
            @Override // java.lang.Runnable
            public void run() {
                apy.this.aKk.m13317b(aqsVar);
            }
        });
    }
}
