package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SCGetGameReservation extends JceStruct {
    static ArrayList<GetGameReservationResp> bQm = new ArrayList<>();
    public int retCode = 0;
    public ArrayList<GetGameReservationResp> vecResp = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGetGameReservation();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.vecResp != null) {
            jceOutputStream.write((Collection) this.vecResp, 1);
        }
    }

    static {
        bQm.add(new GetGameReservationResp());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.vecResp = (ArrayList) jceInputStream.read((JceInputStream) bQm, 1, false);
    }
}
