package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class ReservationStatus extends JceStruct {
    public int reservationType = 0;

    /* renamed from: qq */
    public String f4913qq = "";

    /* renamed from: wx */
    public String f4914wx = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new ReservationStatus();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.reservationType != 0) {
            jceOutputStream.write(this.reservationType, 0);
        }
        if (this.f4913qq != null) {
            jceOutputStream.write(this.f4913qq, 1);
        }
        if (this.f4914wx != null) {
            jceOutputStream.write(this.f4914wx, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.reservationType = jceInputStream.read(this.reservationType, 0, false);
        this.f4913qq = jceInputStream.readString(1, false);
        this.f4914wx = jceInputStream.readString(2, false);
    }
}
