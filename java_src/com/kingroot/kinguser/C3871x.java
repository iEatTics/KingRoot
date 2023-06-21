package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.x */
/* loaded from: classes.dex */
public final class C3871x extends JceStruct {

    /* renamed from: gz */
    static ArrayList<C3683u> f3935gz;

    /* renamed from: gt */
    public long f3936gt = 0;

    /* renamed from: gu */
    public long f3937gu = 0;

    /* renamed from: gy */
    public ArrayList<C3683u> f3938gy = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3936gt != 0) {
            jceOutputStream.write(this.f3936gt, 0);
        }
        if (this.f3937gu != 0) {
            jceOutputStream.write(this.f3937gu, 1);
        }
        if (this.f3938gy != null) {
            jceOutputStream.write((Collection) this.f3938gy, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3936gt = jceInputStream.read(this.f3936gt, 0, false);
        this.f3937gu = jceInputStream.read(this.f3937gu, 1, false);
        if (f3935gz == null) {
            f3935gz = new ArrayList<>();
            f3935gz.add(new C3683u());
        }
        this.f3938gy = (ArrayList) jceInputStream.read((JceInputStream) f3935gz, 2, false);
    }
}
