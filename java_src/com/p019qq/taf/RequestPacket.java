package com.p019qq.taf;

import com.p019qq.jce.wup.WupHexUtil;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.qq.taf.RequestPacket */
/* loaded from: classes.dex */
public final class RequestPacket extends JceStruct {
    static byte[] bDN;
    static Map<String, String> bDO;

    /* renamed from: lo */
    static final /* synthetic */ boolean f4380lo;
    public short bDD;
    public byte bDE;
    public int bDF;
    public int bDG;
    public String bDH;
    public String bDI;
    public byte[] bDJ;
    public int bDK;
    public Map<String, String> bDL;
    public Map<String, String> bDM;

    static {
        f4380lo = !RequestPacket.class.desiredAssertionStatus();
        bDN = null;
        bDO = null;
    }

    public RequestPacket() {
        this.bDD = (short) 0;
        this.bDE = (byte) 0;
        this.bDF = 0;
        this.bDG = 0;
        this.bDH = null;
        this.bDI = null;
        this.bDK = 0;
    }

    public RequestPacket(short s, byte b, int i, int i2, String str, String str2, byte[] bArr, int i3, Map<String, String> map, Map<String, String> map2) {
        this.bDD = (short) 0;
        this.bDE = (byte) 0;
        this.bDF = 0;
        this.bDG = 0;
        this.bDH = null;
        this.bDI = null;
        this.bDK = 0;
        this.bDD = s;
        this.bDE = b;
        this.bDF = i;
        this.bDG = i2;
        this.bDH = str;
        this.bDI = str2;
        this.bDJ = bArr;
        this.bDK = i3;
        this.bDL = map;
        this.bDM = map2;
    }

    public boolean equals(Object obj) {
        RequestPacket requestPacket = (RequestPacket) obj;
        return JceUtil.equals(1, (int) requestPacket.bDD) && JceUtil.equals(1, (int) requestPacket.bDE) && JceUtil.equals(1, requestPacket.bDF) && JceUtil.equals(1, requestPacket.bDG) && JceUtil.equals((Object) 1, (Object) requestPacket.bDH) && JceUtil.equals((Object) 1, (Object) requestPacket.bDI) && JceUtil.equals((Object) 1, (Object) requestPacket.bDJ) && JceUtil.equals(1, requestPacket.bDK) && JceUtil.equals((Object) 1, (Object) requestPacket.bDL) && JceUtil.equals((Object) 1, (Object) requestPacket.bDM);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f4380lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bDD, 1);
        jceOutputStream.write(this.bDE, 2);
        jceOutputStream.write(this.bDF, 3);
        jceOutputStream.write(this.bDG, 4);
        jceOutputStream.write(this.bDH, 5);
        jceOutputStream.write(this.bDI, 6);
        jceOutputStream.write(this.bDJ, 7);
        jceOutputStream.write(this.bDK, 8);
        jceOutputStream.write((Map) this.bDL, 9);
        jceOutputStream.write((Map) this.bDM, 10);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        try {
            this.bDD = jceInputStream.read(this.bDD, 1, true);
            this.bDE = jceInputStream.read(this.bDE, 2, true);
            this.bDF = jceInputStream.read(this.bDF, 3, true);
            this.bDG = jceInputStream.read(this.bDG, 4, true);
            this.bDH = jceInputStream.readString(5, true);
            this.bDI = jceInputStream.readString(6, true);
            if (bDN == null) {
                bDN = new byte[1];
            }
            this.bDJ = jceInputStream.read(bDN, 7, true);
            this.bDK = jceInputStream.read(this.bDK, 8, true);
            if (bDO == null) {
                bDO = new HashMap();
                bDO.put("", "");
            }
            this.bDL = (Map) jceInputStream.read((JceInputStream) bDO, 9, true);
            if (bDO == null) {
                bDO = new HashMap();
                bDO.put("", "");
            }
            this.bDM = (Map) jceInputStream.read((JceInputStream) bDO, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("RequestPacket decode error " + WupHexUtil.bytes2HexStr(this.bDJ));
            throw new RuntimeException(e);
        }
    }
}
