package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.animation.Animator;
import com.android.animation.ObjectAnimator;
/* renamed from: com.kingroot.kinguser.qz */
/* loaded from: classes.dex */
public class C3497qz extends AbstractC3490qt {

    /* renamed from: Fl */
    private final long f3457Fl;

    /* renamed from: Fm */
    private final long f3458Fm;
    private int mType;

    public C3497qz(BaseAdapter baseAdapter, int i) {
        this(baseAdapter, 100L, 300L, i);
    }

    public C3497qz(BaseAdapter baseAdapter, long j, long j2, int i) {
        super(baseAdapter);
        this.f3457Fl = j;
        this.f3458Fm = j2;
        this.mType = i;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hB */
    protected long mo2517hB() {
        return this.f3457Fl;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hC */
    protected long mo2516hC() {
        return this.f3457Fl;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hD */
    protected long mo2515hD() {
        return this.f3458Fm;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: b */
    public Animator[] mo2518b(ViewGroup viewGroup, View view) {
        ObjectAnimator ofFloat;
        switch (this.mType) {
            case 1:
                ofFloat = ObjectAnimator.ofFloat(view, "translationX", (-viewGroup.getWidth()) * 0.66f, 0.0f);
                break;
            case 2:
            case 4:
            case 6:
            default:
                ofFloat = ObjectAnimator.ofFloat(view, "translationY", view.getHeight() * 4, 0.0f);
                break;
            case 3:
                ofFloat = ObjectAnimator.ofFloat(view, "translationX", viewGroup.getWidth() * 0.66f, 0.0f);
                break;
            case 5:
                ofFloat = ObjectAnimator.ofFloat(view, "translationY", view.getHeight() * 4, 0.0f);
                break;
            case 7:
                ofFloat = ObjectAnimator.ofFloat(view, "translationY", (-view.getHeight()) * 4, 0.0f);
                break;
        }
        return new Animator[]{ofFloat};
    }
}
