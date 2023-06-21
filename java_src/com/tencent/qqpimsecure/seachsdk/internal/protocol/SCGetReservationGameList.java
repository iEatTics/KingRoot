package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SCGetReservationGameList extends JceStruct {
    static ArrayList<ReservationGame> bQn = new ArrayList<>();
    public int retCode = 0;
    public ArrayList<ReservationGame> resGameList = null;
    public int showType = 0;
    public boolean hasNextPage = false;
    public int nextBeginPos = 0;
    public long categoryId = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGetReservationGameList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.resGameList != null) {
            jceOutputStream.write((Collection) this.resGameList, 1);
        }
        jceOutputStream.write(this.showType, 2);
        jceOutputStream.write(this.hasNextPage, 3);
        if (this.nextBeginPos != 0) {
            jceOutputStream.write(this.nextBeginPos, 4);
        }
        if (this.categoryId != 0) {
            jceOutputStream.write(this.categoryId, 5);
        }
    }

    static {
        bQn.add(new ReservationGame());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.resGameList = (ArrayList) jceInputStream.read((JceInputStream) bQn, 1, false);
        this.showType = jceInputStream.read(this.showType, 2, false);
        this.hasNextPage = jceInputStream.read(this.hasNextPage, 3, false);
        this.nextBeginPos = jceInputStream.read(this.nextBeginPos, 4, false);
        this.categoryId = jceInputStream.read(this.categoryId, 5, false);
    }
}
