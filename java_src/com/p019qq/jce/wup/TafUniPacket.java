package com.p019qq.jce.wup;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.qq.jce.wup.TafUniPacket */
/* loaded from: classes.dex */
public class TafUniPacket extends UniPacket {
    @Override // com.p019qq.jce.wup.UniPacket, com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object get(String str) {
        return super.get(str);
    }

    @Override // com.p019qq.jce.wup.UniPacket, com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object get(String str, Object obj) {
        return super.get(str, obj);
    }

    @Override // com.p019qq.jce.wup.UniPacket, com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ String getEncodeName() {
        return super.getEncodeName();
    }

    @Override // com.p019qq.jce.wup.UniPacket, com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object getJceStruct(String str) {
        return super.getJceStruct(str);
    }

    @Override // com.p019qq.jce.wup.UniPacket, com.p019qq.jce.wup.UniAttribute, com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ void setEncodeName(String str) {
        super.setEncodeName(str);
    }

    public TafUniPacket() {
        this.bDz.bDD = (short) 2;
        this.bDz.bDE = (byte) 0;
        this.bDz.bDF = 0;
        this.bDz.bDK = 0;
        this.bDz.bDJ = new byte[0];
        this.bDz.bDL = new HashMap();
        this.bDz.bDM = new HashMap();
    }

    public void setTafVersion(short s) {
        this.bDz.bDD = s;
        if (s == 3) {
            useVersion3();
        }
    }

    public void setTafPacketType(byte b) {
        this.bDz.bDE = b;
    }

    public void setTafMessageType(int i) {
        this.bDz.bDF = i;
    }

    public void setTafTimeout(int i) {
        this.bDz.bDK = i;
    }

    public void setTafBuffer(byte[] bArr) {
        this.bDz.bDJ = bArr;
    }

    public void setTafContext(Map<String, String> map) {
        this.bDz.bDL = map;
    }

    public void setTafStatus(Map<String, String> map) {
        this.bDz.bDM = map;
    }

    public short getTafVersion() {
        return this.bDz.bDD;
    }

    public byte getTafPacketType() {
        return this.bDz.bDE;
    }

    public int getTafMessageType() {
        return this.bDz.bDF;
    }

    public int getTafTimeout() {
        return this.bDz.bDK;
    }

    public byte[] getTafBuffer() {
        return this.bDz.bDJ;
    }

    public Map<String, String> getTafContext() {
        return this.bDz.bDL;
    }

    public Map<String, String> getTafStatus() {
        return this.bDz.bDM;
    }

    public int getTafResultCode() {
        String str = this.bDz.bDM.get("STATUS_RESULT_CODE");
        if (str != null) {
            return Integer.parseInt(str);
        }
        return 0;
    }

    public String getTafResultDesc() {
        String str = this.bDz.bDM.get("STATUS_RESULT_DESC");
        if (str == null) {
            return "";
        }
        return str;
    }
}
