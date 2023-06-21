package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class CSGetGameReservation extends JceStruct {
    static ArrayList<GetGameReservationReq> bPL = new ArrayList<>();
    public ArrayList<GetGameReservationReq> vecGetGameReservation = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGetGameReservation();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.vecGetGameReservation != null) {
            jceOutputStream.write((Collection) this.vecGetGameReservation, 0);
        }
    }

    static {
        bPL.add(new GetGameReservationReq());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.vecGetGameReservation = (ArrayList) jceInputStream.read((JceInputStream) bPL, 0, false);
    }
}
