package com.kingroot.kinguser;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class bdr {
    public int length = 0;
    public byte[] content = null;
    public int bjM = 0;
    public byte[] bjN = null;
    public int bjO = 0;
    private int index = 0;

    /* renamed from: YL */
    private void m7512YL() {
        if (this.content != null && this.content.length >= 8) {
            this.bjM = bds.m7504L(this.content);
            this.bjN = new byte[4];
            System.arraycopy(this.content, 4, this.bjN, 0, 4);
        }
        if (this.bjM == 1) {
            if (this.content != null && this.content.length >= 8) {
                m7511YM();
            }
        } else if (this.bjM == 2) {
            this.index += 8;
        }
    }

    /* renamed from: YM */
    private void m7511YM() {
        int i = 8;
        this.index = 8;
        if (this.content == null) {
            this.bjO = 0;
            return;
        }
        while (i < this.content.length && i + 4 <= this.content.length) {
            i = i + 4 + bds.m7501g(this.content, i);
            if (i <= this.content.length) {
                this.bjO++;
            } else {
                return;
            }
        }
    }

    /* renamed from: YN */
    public int m7510YN() {
        return this.bjO;
    }

    /* renamed from: YO */
    public int m7509YO() {
        bds.m7501g(this.content, this.index);
        this.index += 4;
        int m7501g = bds.m7501g(this.content, this.index);
        this.index += 4;
        return m7501g;
    }

    /* renamed from: YP */
    public String m7508YP() {
        int m7501g = bds.m7501g(this.content, this.index);
        this.index += 4;
        String m7503e = bds.m7503e(this.content, this.index, m7501g);
        this.index = m7501g + this.index;
        return m7503e;
    }

    /* renamed from: K */
    public static bdr m7513K(byte[] bArr) {
        bdr bdrVar = new bdr();
        bdrVar.length = bArr.length;
        bdrVar.content = bArr;
        bdrVar.m7512YL();
        return bdrVar;
    }

    /* renamed from: j */
    public static byte[] m7505j(InputStream inputStream) {
        int i = 0;
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[4];
        try {
            i = m7507a(inputStream, bArr, 0, 4);
        } catch (IOException e) {
            e.printStackTrace();
        }
        C3951zg.write("readRawPacket " + i);
        if (i < 4) {
            return null;
        }
        int m7504L = bds.m7504L(bArr);
        C3951zg.write("read length " + m7504L);
        if (m7504L <= 4 || m7504L > 2097152) {
            return null;
        }
        byte[] bArr2 = new byte[m7504L - 4];
        try {
            i = m7507a(inputStream, bArr2, 0, m7504L - 4);
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        if (i < m7504L - 4) {
            return null;
        }
        C3951zg.write("real read length " + i);
        return bArr2;
    }

    /* renamed from: a */
    public static int m7507a(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (inputStream == null || bArr == null || i < 0 || i2 <= 0) {
            return -1;
        }
        int i4 = 0;
        while (i3 < i2 && i4 != -1) {
            i4 = inputStream.read(bArr, i, i2 - i3);
            if (i4 > 0) {
                i += i4;
                i3 += i4;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static int m7506a(OutputStream outputStream, byte[] bArr, int i, int i2) {
        if (outputStream == null || bArr == null || i < 0 || i2 <= 0) {
            return -1;
        }
        int i3 = 0;
        int i4 = i2;
        while (i4 > 0) {
            i3 = i4 > 8192 ? 8192 : i4;
            outputStream.write(bArr, i, i3);
            i += i3;
            i4 -= i3;
        }
        return i3;
    }
}
