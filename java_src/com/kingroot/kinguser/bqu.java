package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class bqu implements Cloneable {

    /* renamed from: a */
    private long f2056a;

    public bqu(long j) {
        this.f2056a = j;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof bqu) && this.f2056a == ((bqu) obj).m5732b();
    }

    /* renamed from: a */
    public byte[] m5733a() {
        return new byte[]{(byte) (this.f2056a & 255), (byte) ((this.f2056a & 65280) >> 8), (byte) ((this.f2056a & 16711680) >> 16), (byte) ((this.f2056a & 4278190080L) >> 24)};
    }

    /* renamed from: b */
    public long m5732b() {
        return this.f2056a;
    }

    public int hashCode() {
        return (int) this.f2056a;
    }
}
