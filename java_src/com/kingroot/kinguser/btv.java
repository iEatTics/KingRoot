package com.kingroot.kinguser;

import java.io.DataInputStream;
import java.io.DataOutputStream;
/* loaded from: classes.dex */
public class btv {
    byte[] bNB;
    short bNP;
    byte[] bNQ;
    short bNl;
    short bNm;
    short bNn;
    short bNo;
    short bNp;
    int bNq;
    int bNr;
    int bNs;
    short bNt;

    /* renamed from: a */
    public static void m5520a(btp btpVar, DataOutputStream dataOutputStream) {
        btpVar.offset = dataOutputStream.size();
        dataOutputStream.writeInt(1347093252);
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNl));
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNm));
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNn));
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNo));
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNp));
        if ((btpVar.bNm & 8) == 8) {
            dataOutputStream.writeInt(bto.m5532kj(0));
            dataOutputStream.writeInt(bto.m5532kj(0));
            dataOutputStream.writeInt(bto.m5532kj(0));
        } else {
            dataOutputStream.writeInt(bto.m5532kj(btpVar.bNq));
            dataOutputStream.writeInt(bto.m5532kj(btpVar.bNr));
            dataOutputStream.writeInt(bto.m5532kj(btpVar.bNs));
        }
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNt));
        dataOutputStream.writeShort(bto.m5533d(btpVar.bNu));
        if (btpVar.bNt > 0) {
            dataOutputStream.write(btpVar.bNB);
        }
        if (btpVar.bNu > 0) {
            dataOutputStream.write(btpVar.bNC);
        }
    }

    /* renamed from: a */
    public void m5519a(DataInputStream dataInputStream) {
        this.bNl = bto.m5533d(dataInputStream.readShort());
        this.bNm = bto.m5533d(dataInputStream.readShort());
        this.bNn = bto.m5533d(dataInputStream.readShort());
        this.bNo = bto.m5533d(dataInputStream.readShort());
        this.bNp = bto.m5533d(dataInputStream.readShort());
        this.bNq = bto.m5532kj(dataInputStream.readInt());
        this.bNr = bto.m5532kj(dataInputStream.readInt());
        this.bNs = bto.m5532kj(dataInputStream.readInt());
        this.bNt = bto.m5533d(dataInputStream.readShort());
        this.bNP = bto.m5533d(dataInputStream.readShort());
        this.bNB = new byte[this.bNt];
        this.bNQ = new byte[this.bNP];
        dataInputStream.read(this.bNB, 0, this.bNt);
        dataInputStream.read(this.bNQ, 0, this.bNP);
    }
}
