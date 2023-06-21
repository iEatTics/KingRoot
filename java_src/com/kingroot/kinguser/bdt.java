package com.kingroot.kinguser;

import java.util.ArrayList;
/* loaded from: classes.dex */
public class bdt {
    private int ret = -1;
    private bdr bjS = null;
    private ArrayList<byte[]> bjT = null;

    public void setData(byte[] bArr) {
        this.bjS = bdr.m7513K(bArr);
    }

    /* renamed from: YQ */
    public byte[] m7499YQ() {
        if (this.bjS == null) {
            return null;
        }
        return this.bjS.bjN;
    }

    /* renamed from: YR */
    public bdr m7498YR() {
        return this.bjS;
    }

    /* renamed from: ir */
    public void m7496ir(int i) {
        this.ret = i;
    }

    /* renamed from: YS */
    public byte[] m7497YS() {
        byte[] m7500iq = bds.m7500iq(this.ret);
        ArrayList<byte[]> arrayList = this.bjT;
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            int i = 12;
            for (int i2 = 0; i2 < size; i2++) {
                i += arrayList.get(i2).length;
            }
            int i3 = (size * 4) + i;
            byte[] bArr = new byte[i3];
            System.arraycopy(bds.m7500iq(i3), 0, bArr, 0, 4);
            System.arraycopy(bds.m7500iq(1), 0, bArr, 4, 4);
            System.arraycopy(m7500iq, 0, bArr, 8, 4);
            int size2 = arrayList.size();
            int i4 = 12;
            for (int i5 = 0; i5 < size2; i5++) {
                byte[] bArr2 = arrayList.get(i5);
                System.arraycopy(bds.m7500iq(bArr2.length), 0, bArr, i4, 4);
                int i6 = i4 + 4;
                System.arraycopy(bArr2, 0, bArr, i6, bArr2.length);
                i4 = i6 + bArr2.length;
            }
            return bArr;
        }
        byte[] bArr3 = new byte[12];
        System.arraycopy(bds.m7500iq(12), 0, bArr3, 0, 4);
        System.arraycopy(bds.m7500iq(1), 0, bArr3, 4, 4);
        System.arraycopy(m7500iq, 0, bArr3, 8, 4);
        return bArr3;
    }
}
