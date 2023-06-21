package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ek */
/* loaded from: classes.dex */
public final class C3023ek extends JceStruct {

    /* renamed from: pl */
    static ArrayList<Long> f2599pl;

    /* renamed from: id */
    public int f2601id = 0;
    public int count = 0;
    public long time = 0;

    /* renamed from: gv */
    public int f2600gv = 0;

    /* renamed from: pi */
    public String f2602pi = "";

    /* renamed from: pj */
    public String f2603pj = "";

    /* renamed from: pk */
    public ArrayList<Long> f2604pk = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2601id, 0);
        jceOutputStream.write(this.count, 1);
        jceOutputStream.write(this.time, 2);
        if (this.f2600gv != 0) {
            jceOutputStream.write(this.f2600gv, 3);
        }
        if (this.f2602pi != null) {
            jceOutputStream.write(this.f2602pi, 4);
        }
        if (this.f2603pj != null) {
            jceOutputStream.write(this.f2603pj, 5);
        }
        if (this.f2604pk != null) {
            jceOutputStream.write((Collection) this.f2604pk, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2601id = jceInputStream.read(this.f2601id, 0, true);
        this.count = jceInputStream.read(this.count, 1, true);
        this.time = jceInputStream.read(this.time, 2, true);
        this.f2600gv = jceInputStream.read(this.f2600gv, 3, false);
        this.f2602pi = jceInputStream.readString(4, false);
        this.f2603pj = jceInputStream.readString(5, false);
        if (f2599pl == null) {
            f2599pl = new ArrayList<>();
            f2599pl.add(0L);
        }
        this.f2604pk = (ArrayList) jceInputStream.read((JceInputStream) f2599pl, 6, false);
    }
}
