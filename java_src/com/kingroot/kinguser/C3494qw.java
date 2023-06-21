package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.animation.Animator;
/* renamed from: com.kingroot.kinguser.qw */
/* loaded from: classes.dex */
public class C3494qw extends AbstractC3490qt {

    /* renamed from: Fq */
    private long f3450Fq;

    /* renamed from: Fr */
    private long f3451Fr;
    private int type;

    public C3494qw(BaseAdapter baseAdapter) {
        this(baseAdapter, 1);
    }

    public C3494qw(BaseAdapter baseAdapter, int i) {
        this(baseAdapter, 100L, 300L, i);
    }

    public C3494qw(BaseAdapter baseAdapter, long j, long j2, int i) {
        super(baseAdapter);
        this.f3451Fr = j;
        this.f3450Fq = j2;
        this.type = i;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hB */
    protected long mo2517hB() {
        return 0L;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hC */
    protected long mo2516hC() {
        return this.f3451Fr;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: hD */
    protected long mo2515hD() {
        return this.f3450Fq;
    }

    @Override // com.kingroot.kinguser.AbstractC3490qt
    /* renamed from: b */
    public Animator[] mo2518b(ViewGroup viewGroup, View view) {
        return new Animator[0];
    }
}
