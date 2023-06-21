package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class byr extends JceStruct {
    static ArrayList<byt> bUM;
    static ArrayList<byu> bUN;
    public long bUI = 0;
    public ArrayList<byt> bUJ = null;
    public int bJE = 0;
    public int action = 0;

    /* renamed from: nu */
    public double f2167nu = 0.0d;
    public double bUK = 0.0d;
    public ArrayList<byu> bUL = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUI, 0);
        jceOutputStream.write((Collection) this.bUJ, 1);
        if (this.bJE != 0) {
            jceOutputStream.write(this.bJE, 2);
        }
        if (this.action != 0) {
            jceOutputStream.write(this.action, 3);
        }
        if (this.f2167nu != 0.0d) {
            jceOutputStream.write(this.f2167nu, 4);
        }
        if (this.bUK != 0.0d) {
            jceOutputStream.write(this.bUK, 5);
        }
        if (this.bUL != null) {
            jceOutputStream.write((Collection) this.bUL, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUI = jceInputStream.read(this.bUI, 0, true);
        if (bUM == null) {
            bUM = new ArrayList<>();
            bUM.add(new byt());
        }
        this.bUJ = (ArrayList) jceInputStream.read((JceInputStream) bUM, 1, true);
        this.bJE = jceInputStream.read(this.bJE, 2, false);
        this.action = jceInputStream.read(this.action, 3, false);
        this.f2167nu = jceInputStream.read(this.f2167nu, 4, false);
        this.bUK = jceInputStream.read(this.bUK, 5, false);
        if (bUN == null) {
            bUN = new ArrayList<>();
            bUN.add(new byu());
        }
        this.bUL = (ArrayList) jceInputStream.read((JceInputStream) bUN, 6, false);
    }
}
