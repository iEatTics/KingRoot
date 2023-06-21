package com.kingroot.common.uilib;

import com.kingroot.kinguser.InterfaceC3562rr;
/* loaded from: classes.dex */
public class ShadowProperty implements InterfaceC3562rr {
    private int mShadowColor;
    private int mShadowDx;
    private int mShadowDy;
    private int mShadowRadius;
    private int mStrokeWidth = 0;
    private int mStrokeColor = 0;
    private boolean mLeftEdgeEnable = true;
    private boolean mTopEdgeEnable = true;
    private boolean mRightEdgeEnable = true;
    private boolean mBottomEdgeEnable = true;

    /* renamed from: nX */
    public boolean m13238nX() {
        return this.mLeftEdgeEnable;
    }

    /* renamed from: nY */
    public boolean m13237nY() {
        return this.mTopEdgeEnable;
    }

    /* renamed from: nZ */
    public boolean m13236nZ() {
        return this.mRightEdgeEnable;
    }

    /* renamed from: oa */
    public boolean m13235oa() {
        return this.mBottomEdgeEnable;
    }

    /* renamed from: ob */
    public int m13234ob() {
        return m13233oc() * 2;
    }

    /* renamed from: oc */
    public int m13233oc() {
        if (this.mShadowRadius <= 0) {
            return 0;
        }
        return Math.max(this.mShadowDx, this.mShadowDy) + this.mShadowRadius;
    }

    public int getShadowColor() {
        return this.mShadowColor;
    }

    /* renamed from: bO */
    public ShadowProperty m13240bO(int i) {
        this.mShadowColor = i;
        return this;
    }

    /* renamed from: od */
    public int m13232od() {
        return this.mShadowRadius;
    }

    /* renamed from: bP */
    public ShadowProperty m13239bP(int i) {
        this.mShadowRadius = i;
        return this;
    }

    /* renamed from: oe */
    public int m13231oe() {
        return this.mShadowDx;
    }

    /* renamed from: of */
    public int m13230of() {
        return this.mShadowDy;
    }

    /* renamed from: og */
    public int m13229og() {
        return this.mStrokeWidth;
    }

    /* renamed from: oh */
    public int m13228oh() {
        return this.mStrokeColor;
    }

    /* renamed from: a */
    public ShadowProperty m13241a(boolean z, boolean z2, boolean z3, boolean z4) {
        this.mLeftEdgeEnable = z;
        this.mTopEdgeEnable = z2;
        this.mRightEdgeEnable = z3;
        this.mBottomEdgeEnable = z4;
        return this;
    }
}
