package com.kingroot.kinguser;

import java.io.DataInputStream;
import java.io.DataOutputStream;
/* loaded from: classes.dex */
public class btp {
    boolean bNA;
    byte[] bNB;
    byte[] bNC;
    byte[] bND;
    byte[] bNE;
    short bNk;
    short bNl;
    short bNm;
    short bNn;
    short bNo;
    short bNp;
    int bNq;
    int bNr;
    int bNs;
    short bNt;
    short bNu;
    short bNv;
    short bNw;
    short bNx;
    short bNy;
    int bNz;
    int offset;

    /* renamed from: a */
    public void m5530a(DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(1347092738);
        dataOutputStream.writeShort(bto.m5533d(this.bNk));
        dataOutputStream.writeShort(bto.m5533d(this.bNl));
        dataOutputStream.writeShort(bto.m5533d(this.bNm));
        dataOutputStream.writeShort(bto.m5533d(this.bNn));
        dataOutputStream.writeShort(bto.m5533d(this.bNo));
        dataOutputStream.writeShort(bto.m5533d(this.bNp));
        dataOutputStream.writeInt(bto.m5532kj(this.bNq));
        dataOutputStream.writeInt(bto.m5532kj(this.bNr));
        dataOutputStream.writeInt(bto.m5532kj(this.bNs));
        dataOutputStream.writeShort(bto.m5533d(this.bNt));
        dataOutputStream.writeShort(bto.m5533d(this.bNv));
        dataOutputStream.writeShort(bto.m5533d(this.bNw));
        dataOutputStream.writeShort(bto.m5533d(this.bNx));
        dataOutputStream.writeShort(bto.m5533d(this.bNy));
        dataOutputStream.writeInt(bto.m5532kj(this.bNz));
        dataOutputStream.writeInt(bto.m5532kj(this.offset));
        if (this.bNt > 0) {
            dataOutputStream.write(this.bNB);
        }
        if (this.bNv > 0) {
            dataOutputStream.write(this.bND);
        }
        if (this.bNw > 0) {
            dataOutputStream.write(this.bNE);
        }
    }

    /* renamed from: a */
    public void m5531a(DataInputStream dataInputStream) {
        this.bNk = bto.m5533d(dataInputStream.readShort());
        this.bNl = bto.m5533d(dataInputStream.readShort());
        this.bNm = bto.m5533d(dataInputStream.readShort());
        this.bNn = bto.m5533d(dataInputStream.readShort());
        this.bNo = bto.m5533d(dataInputStream.readShort());
        this.bNp = bto.m5533d(dataInputStream.readShort());
        this.bNq = bto.m5532kj(dataInputStream.readInt());
        this.bNr = bto.m5532kj(dataInputStream.readInt());
        this.bNs = bto.m5532kj(dataInputStream.readInt());
        this.bNt = bto.m5533d(dataInputStream.readShort());
        this.bNv = bto.m5533d(dataInputStream.readShort());
        this.bNw = bto.m5533d(dataInputStream.readShort());
        this.bNx = bto.m5533d(dataInputStream.readShort());
        this.bNy = bto.m5533d(dataInputStream.readShort());
        this.bNz = bto.m5532kj(dataInputStream.readInt());
        this.offset = bto.m5532kj(dataInputStream.readInt());
        this.bNA = false;
        this.bNB = new byte[this.bNt];
        this.bND = new byte[this.bNv];
        this.bNE = new byte[this.bNw];
        dataInputStream.read(this.bNB, 0, this.bNt);
        dataInputStream.read(this.bND, 0, this.bNv);
        dataInputStream.read(this.bNE, 0, this.bNw);
    }

    /* renamed from: b */
    public void m5529b(DataInputStream dataInputStream) {
        this.bNk = dataInputStream.readShort();
        this.bNl = dataInputStream.readShort();
        this.bNm = dataInputStream.readShort();
        this.bNn = dataInputStream.readShort();
        this.bNo = dataInputStream.readShort();
        this.bNp = dataInputStream.readShort();
        this.bNq = dataInputStream.readInt();
        this.bNr = dataInputStream.readInt();
        this.bNs = dataInputStream.readInt();
        this.bNt = dataInputStream.readShort();
        this.bNu = dataInputStream.readShort();
        this.bNv = dataInputStream.readShort();
        this.bNw = dataInputStream.readShort();
        this.bNx = dataInputStream.readShort();
        this.bNy = dataInputStream.readShort();
        this.bNz = dataInputStream.readInt();
        this.offset = dataInputStream.readInt();
        this.bNA = dataInputStream.readBoolean();
        this.bNB = new byte[this.bNt];
        this.bNC = new byte[this.bNu];
        this.bND = new byte[this.bNv];
        this.bNE = new byte[this.bNw];
        dataInputStream.read(this.bNB, 0, this.bNt);
        dataInputStream.read(this.bNC, 0, this.bNu);
        dataInputStream.read(this.bND, 0, this.bNv);
        dataInputStream.read(this.bNE, 0, this.bNw);
    }

    public boolean aia() {
        return (this.bNm & 8) != 0;
    }
}
