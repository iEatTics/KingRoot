package com.kingroot.kinguser;

import android.support.p004v4.view.MotionEventCompat;
/* loaded from: classes.dex */
public final class bqv implements Cloneable {

    /* renamed from: a */
    private int f2057a;

    public bqv(byte[] bArr) {
        this(bArr, 0);
    }

    public bqv(byte[] bArr, int i) {
        this.f2057a = (bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK;
        this.f2057a += bArr[i] & 255;
    }

    public bqv(int i) {
        this.f2057a = i;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof bqv) && this.f2057a == ((bqv) obj).m5730b();
    }

    /* renamed from: a */
    public byte[] m5731a() {
        return new byte[]{(byte) (this.f2057a & 255), (byte) ((this.f2057a & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)};
    }

    /* renamed from: b */
    public int m5730b() {
        return this.f2057a;
    }

    public int hashCode() {
        return this.f2057a;
    }
}
