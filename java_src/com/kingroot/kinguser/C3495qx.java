package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.animation.Animator;
import com.android.animation.ObjectAnimator;
/* renamed from: com.kingroot.kinguser.qx */
/* loaded from: classes.dex */
public class C3495qx extends AbstractC3490qt {

    /* renamed from: Fs */
    private int f3452Fs;

    public C3495qx(BaseAdapter baseAdapter) {
        this(baseAdapter, 90);
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hB */
    protected long mo2517hB() {
        return 0L;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hC */
    protected long mo2516hC() {
        return 0L;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hD */
    protected long mo2515hD() {
        return 300L;
    }

    public C3495qx(BaseAdapter baseAdapter, int i) {
        super(baseAdapter);
        this.f3452Fs = i;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: b */
    public Animator[] mo2518b(ViewGroup viewGroup, View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "rotationX", this.f3452Fs, 0.0f)};
    }
}
