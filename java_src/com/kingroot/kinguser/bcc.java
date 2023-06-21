package com.kingroot.kinguser;

import android.content.Context;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public final class bcc {
    private bcm bfS;
    private bch bfT;
    private bcn bfU;
    private bcl bfV;
    private bci bfW;
    private bck bfX;
    private bcj bfY;
    private boolean bfZ = false;
    private int bga = 0;
    private ViewGroup bgb;
    private Context mContext;

    public bcc(Context context, ViewGroup viewGroup) {
        this.mContext = context;
        this.bgb = viewGroup;
    }

    /* renamed from: Xd */
    public bci m7730Xd() {
        if (this.bfW == null) {
            this.bfW = new bci(this.mContext);
        }
        return this.bfW;
    }

    /* renamed from: Xe */
    public bcl m7729Xe() {
        if (this.bfV == null) {
            this.bfV = new bcl(this.mContext);
        }
        return this.bfV;
    }

    /* renamed from: a */
    public void m7723a(bcl bclVar) {
        this.bfV = bclVar;
    }

    /* renamed from: Xf */
    public bcn m7728Xf() {
        if (this.bfU == null) {
            this.bfU = new bcn(this.mContext);
        }
        return this.bfU;
    }

    /* renamed from: Xg */
    public bch m7727Xg() {
        if (this.bfT == null) {
            this.bfT = new bch(this.mContext);
        }
        return this.bfT;
    }

    /* renamed from: Xh */
    public bcm m7726Xh() {
        if (this.bfS == null) {
            this.bfS = new bcm(this.mContext);
        }
        return this.bfS;
    }

    /* renamed from: Xi */
    public bck m7725Xi() {
        if (this.bfX == null) {
            this.bfX = new bck(this.mContext);
        }
        return this.bfX;
    }

    /* renamed from: Xj */
    public bcj m7724Xj() {
        if (this.bfY == null) {
            this.bfY = new bcj(this.mContext);
        }
        return this.bfY;
    }
}
