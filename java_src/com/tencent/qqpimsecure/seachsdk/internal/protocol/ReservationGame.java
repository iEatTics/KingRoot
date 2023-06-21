package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class ReservationGame extends JceStruct {
    static SoftDetail bPN = new SoftDetail();
    static ReservationStatus bQj = new ReservationStatus();
    static TimeInfo bPP = new TimeInfo();
    public long reservationId = 0;
    public SoftDetail softDetail = null;
    public String activityId = "";
    public String reservationUrl = "";
    public ReservationStatus reservationStatus = null;
    public String publicDesc = "";
    public long reservationCount = 0;
    public TimeInfo validTime = null;
    public boolean onlineFlag = false;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new ReservationGame();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.reservationId != 0) {
            jceOutputStream.write(this.reservationId, 0);
        }
        if (this.softDetail != null) {
            jceOutputStream.write((JceStruct) this.softDetail, 1);
        }
        if (this.activityId != null) {
            jceOutputStream.write(this.activityId, 2);
        }
        if (this.reservationUrl != null) {
            jceOutputStream.write(this.reservationUrl, 3);
        }
        if (this.reservationStatus != null) {
            jceOutputStream.write((JceStruct) this.reservationStatus, 4);
        }
        if (this.publicDesc != null) {
            jceOutputStream.write(this.publicDesc, 5);
        }
        if (this.reservationCount != 0) {
            jceOutputStream.write(this.reservationCount, 6);
        }
        if (this.validTime != null) {
            jceOutputStream.write((JceStruct) this.validTime, 7);
        }
        jceOutputStream.write(this.onlineFlag, 8);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.reservationId = jceInputStream.read(this.reservationId, 0, false);
        this.softDetail = (SoftDetail) jceInputStream.read((JceStruct) bPN, 1, false);
        this.activityId = jceInputStream.readString(2, false);
        this.reservationUrl = jceInputStream.readString(3, false);
        this.reservationStatus = (ReservationStatus) jceInputStream.read((JceStruct) bQj, 4, false);
        this.publicDesc = jceInputStream.readString(5, false);
        this.reservationCount = jceInputStream.read(this.reservationCount, 6, false);
        this.validTime = (TimeInfo) jceInputStream.read((JceStruct) bPP, 7, false);
        this.onlineFlag = jceInputStream.read(this.onlineFlag, 8, false);
    }
}
