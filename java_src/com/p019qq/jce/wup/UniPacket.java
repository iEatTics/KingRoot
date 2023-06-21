package com.p019qq.jce.wup;

import com.p019qq.taf.RequestPacket;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceUtil;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.qq.jce.wup.UniPacket */
/* loaded from: classes.dex */
public class UniPacket extends UniAttribute {
    static HashMap<String, byte[]> bDA = null;
    static HashMap<String, HashMap<String, byte[]>> bDB = null;
    protected RequestPacket bDz = new RequestPacket();
    private int bDC = 0;

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object get(String str) {
        return super.get(str);
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object get(String str, Object obj) {
        return super.get(str, obj);
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ String getEncodeName() {
        return super.getEncodeName();
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object getJceStruct(String str) {
        return super.getJceStruct(str);
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ void setEncodeName(String str) {
        super.setEncodeName(str);
    }

    public UniPacket() {
        this.bDz.bDD = (short) 2;
    }

    public UniPacket(boolean z) {
        if (z) {
            useVersion3();
        } else {
            this.bDz.bDD = (short) 2;
        }
    }

    public int getPackageVersion() {
        return this.bDz.bDD;
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public <T> void put(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is " + str);
        }
        super.put(str, t);
    }

    @Override // com.p019qq.jce.wup.UniAttribute
    public void useVersion3() {
        super.useVersion3();
        this.bDz.bDD = (short) 3;
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public byte[] encode() {
        if (this.bDz.bDD == 2) {
            if (this.bDz.bDH == null || this.bDz.bDH.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.bDz.bDI == null || this.bDz.bDI.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        } else {
            if (this.bDz.bDH == null) {
                this.bDz.bDH = "";
            }
            if (this.bDz.bDI == null) {
                this.bDz.bDI = "";
            }
        }
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.bDw);
        if (this.bDz.bDD == 2) {
            jceOutputStream.write((Map) this.bDt, 0);
        } else {
            jceOutputStream.write((Map) this.bDy, 0);
        }
        this.bDz.bDJ = JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
        JceOutputStream jceOutputStream2 = new JceOutputStream(0);
        jceOutputStream2.setServerEncoding(this.bDw);
        this.bDz.writeTo(jceOutputStream2);
        byte[] jceBufArray = JceUtil.getJceBufArray(jceOutputStream2.getByteBuffer());
        int length = jceBufArray.length;
        ByteBuffer allocate = ByteBuffer.allocate(length + 4);
        allocate.putInt(length + 4).put(jceBufArray).flip();
        return allocate.array();
    }

    @Override // com.p019qq.jce.wup.UniAttribute
    public void decodeVersion3(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            JceInputStream jceInputStream = new JceInputStream(bArr, 4);
            jceInputStream.setServerEncoding(this.bDw);
            this.bDz.readFrom(jceInputStream);
            agh();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private void agh() {
        JceInputStream jceInputStream = new JceInputStream(this.bDz.bDJ);
        jceInputStream.setServerEncoding(this.bDw);
        if (bDA == null) {
            bDA = new HashMap<>();
            bDA.put("", new byte[0]);
        }
        this.bDy = jceInputStream.readMap(bDA, 0, false);
    }

    @Override // com.p019qq.jce.wup.UniAttribute
    public void decodeVersion2(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            JceInputStream jceInputStream = new JceInputStream(bArr, 4);
            jceInputStream.setServerEncoding(this.bDw);
            this.bDz.readFrom(jceInputStream);
            agi();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private void agi() {
        JceInputStream jceInputStream = new JceInputStream(this.bDz.bDJ);
        jceInputStream.setServerEncoding(this.bDw);
        if (bDB == null) {
            bDB = new HashMap<>();
            HashMap<String, byte[]> hashMap = new HashMap<>();
            hashMap.put("", new byte[0]);
            bDB.put("", hashMap);
        }
        this.bDt = jceInputStream.readMap(bDB, 0, false);
        this.bDu = new HashMap<>();
    }

    @Override // com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public void decode(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            JceInputStream jceInputStream = new JceInputStream(bArr, 4);
            jceInputStream.setServerEncoding(this.bDw);
            this.bDz.readFrom(jceInputStream);
            if (this.bDz.bDD == 3) {
                agh();
                return;
            }
            this.bDy = null;
            agi();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public String getServantName() {
        return this.bDz.bDH;
    }

    public void setServantName(String str) {
        this.bDz.bDH = str;
    }

    public String getFuncName() {
        return this.bDz.bDI;
    }

    public void setFuncName(String str) {
        this.bDz.bDI = str;
    }

    public int getRequestId() {
        return this.bDz.bDG;
    }

    public void setRequestId(int i) {
        this.bDz.bDG = i;
    }

    public void writeTo(JceOutputStream jceOutputStream) {
        this.bDz.writeTo(jceOutputStream);
    }

    public void readFrom(JceInputStream jceInputStream) {
        this.bDz.readFrom(jceInputStream);
    }

    public UniPacket createResponse() {
        UniPacket uniPacket = new UniPacket();
        uniPacket.setRequestId(getRequestId());
        uniPacket.setServantName(getServantName());
        uniPacket.setFuncName(getFuncName());
        uniPacket.setEncodeName(this.bDw);
        uniPacket.bDz.bDD = this.bDz.bDD;
        return uniPacket;
    }

    public byte[] createOldRespEncode() {
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.bDw);
        jceOutputStream.write((Map) this.bDt, 0);
        byte[] jceBufArray = JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
        JceOutputStream jceOutputStream2 = new JceOutputStream(0);
        jceOutputStream2.setServerEncoding(this.bDw);
        jceOutputStream2.write(this.bDz.bDD, 1);
        jceOutputStream2.write(this.bDz.bDE, 2);
        jceOutputStream2.write(this.bDz.bDG, 3);
        jceOutputStream2.write(this.bDz.bDF, 4);
        jceOutputStream2.write(this.bDC, 5);
        jceOutputStream2.write(jceBufArray, 6);
        jceOutputStream2.write((Map) this.bDz.bDM, 7);
        return JceUtil.getJceBufArray(jceOutputStream2.getByteBuffer());
    }

    public int getOldRespIret() {
        return this.bDC;
    }

    public void setOldRespIret(int i) {
        this.bDC = i;
    }
}
