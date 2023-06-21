package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.b */
/* loaded from: classes.dex */
public final class C2037b extends JceStruct {
    static ArrayList<Integer> cache_intValues;
    static ArrayList<String> cache_strValues;
    public int featureId = 0;
    public int timestamp = 0;
    public int count = 1;
    public ArrayList<Integer> intValues = null;
    public ArrayList<String> strValues = null;
    public int pluginId = 0;

    /* renamed from: dQ */
    public int f1645dQ = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.featureId, 0);
        jceOutputStream.write(this.timestamp, 1);
        if (this.count != 1) {
            jceOutputStream.write(this.count, 2);
        }
        if (this.intValues != null) {
            jceOutputStream.write((Collection) this.intValues, 3);
        }
        if (this.strValues != null) {
            jceOutputStream.write((Collection) this.strValues, 4);
        }
        if (this.pluginId != 0) {
            jceOutputStream.write(this.pluginId, 5);
        }
        if (this.f1645dQ != 0) {
            jceOutputStream.write(this.f1645dQ, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.featureId = jceInputStream.read(this.featureId, 0, true);
        this.timestamp = jceInputStream.read(this.timestamp, 1, true);
        this.count = jceInputStream.read(this.count, 2, false);
        if (cache_intValues == null) {
            cache_intValues = new ArrayList<>();
            cache_intValues.add(0);
        }
        this.intValues = (ArrayList) jceInputStream.read((JceInputStream) cache_intValues, 3, false);
        if (cache_strValues == null) {
            cache_strValues = new ArrayList<>();
            cache_strValues.add("");
        }
        this.strValues = (ArrayList) jceInputStream.read((JceInputStream) cache_strValues, 4, false);
        this.pluginId = jceInputStream.read(this.pluginId, 5, false);
        this.f1645dQ = jceInputStream.read(this.f1645dQ, 6, false);
    }
}
