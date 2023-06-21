package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SCGetBanner extends JceStruct {
    static ArrayList<BannerDetail> bQk = new ArrayList<>();
    public int retCode = 0;
    public ArrayList<BannerDetail> vecBannerDetail = null;
    public long adsId = -1;
    public long adsPosition = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGetBanner();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.vecBannerDetail != null) {
            jceOutputStream.write((Collection) this.vecBannerDetail, 1);
        }
        if (this.adsId != -1) {
            jceOutputStream.write(this.adsId, 2);
        }
        if (this.adsPosition != 0) {
            jceOutputStream.write(this.adsPosition, 3);
        }
    }

    static {
        bQk.add(new BannerDetail());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.vecBannerDetail = (ArrayList) jceInputStream.read((JceInputStream) bQk, 1, false);
        this.adsId = jceInputStream.read(this.adsId, 2, false);
        this.adsPosition = jceInputStream.read(this.adsPosition, 3, false);
    }
}
