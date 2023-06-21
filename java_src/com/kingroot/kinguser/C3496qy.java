package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.animation.Animator;
import com.android.animation.ObjectAnimator;
/* renamed from: com.kingroot.kinguser.qy */
/* loaded from: classes.dex */
public class C3496qy extends AbstractC3490qt {

    /* renamed from: Fl */
    private final long f3453Fl;

    /* renamed from: Fm */
    private final long f3454Fm;

    /* renamed from: Ft */
    private final float f3455Ft;

    /* renamed from: Fu */
    private final float f3456Fu;

    public C3496qy(BaseAdapter baseAdapter) {
        this(baseAdapter, 0.0f, 1.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hB */
    protected long mo2517hB() {
        return 0L;
    }

    public C3496qy(BaseAdapter baseAdapter, float f, float f2) {
        this(baseAdapter, f, f2, 100L, 300L);
    }

    public C3496qy(BaseAdapter baseAdapter, float f, float f2, long j, long j2) {
        super(baseAdapter);
        this.f3455Ft = f;
        this.f3456Fu = f2;
        this.f3453Fl = j;
        this.f3454Fm = j2;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hC */
    protected long mo2516hC() {
        return this.f3453Fl;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hD */
    protected long mo2515hD() {
        return this.f3454Fm;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: b */
    public Animator[] mo2518b(ViewGroup viewGroup, View view) {
        return new ObjectAnimator[]{ObjectAnimator.ofFloat(view, "scaleX", this.f3455Ft, this.f3456Fu), ObjectAnimator.ofFloat(view, "scaleY", this.f3455Ft, this.f3456Fu)};
    }
}
