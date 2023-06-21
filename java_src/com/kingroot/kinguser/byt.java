package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class byt extends JceStruct {
    static Map<Integer, ArrayList<bys>> bUS;
    public long bUP = 0;
    public Map<Integer, ArrayList<bys>> bUQ = null;
    public int bSN = 0;
    public int bSO = 0;
    public int bSP = 0;
    public int bSQ = 0;
    public int bUR = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUP, 0);
        jceOutputStream.write((Map) this.bUQ, 1);
        jceOutputStream.write(this.bSN, 2);
        jceOutputStream.write(this.bSO, 3);
        jceOutputStream.write(this.bSP, 4);
        jceOutputStream.write(this.bSQ, 5);
        if (this.bUR != 0) {
            jceOutputStream.write(this.bUR, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUP = jceInputStream.read(this.bUP, 0, true);
        if (bUS == null) {
            bUS = new HashMap();
            ArrayList<bys> arrayList = new ArrayList<>();
            arrayList.add(new bys());
            bUS.put(0, arrayList);
        }
        this.bUQ = (Map) jceInputStream.read((JceInputStream) bUS, 1, true);
        this.bSN = jceInputStream.read(this.bSN, 2, false);
        this.bSO = jceInputStream.read(this.bSO, 3, false);
        this.bSP = jceInputStream.read(this.bSP, 4, false);
        this.bSQ = jceInputStream.read(this.bSQ, 5, false);
        this.bUR = jceInputStream.read(this.bUR, 6, false);
    }
}
