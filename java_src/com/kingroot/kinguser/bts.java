package com.kingroot.kinguser;

import java.io.DataInputStream;
import java.io.DataOutputStream;
/* loaded from: classes.dex */
public class bts {
    byte[] bNE;
    short bNG;
    short bNH;
    short bNI;
    short bNJ;
    int bNK;
    int bNL;
    short bNw;

    /* renamed from: a */
    public void m5524a(DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(1347093766);
        dataOutputStream.writeShort(bto.m5533d(this.bNG));
        dataOutputStream.writeShort(bto.m5533d(this.bNH));
        dataOutputStream.writeShort(bto.m5533d(this.bNI));
        dataOutputStream.writeShort(bto.m5533d(this.bNJ));
        dataOutputStream.writeInt(bto.m5532kj(this.bNK));
        dataOutputStream.writeInt(bto.m5532kj(this.bNL));
        dataOutputStream.writeShort(bto.m5533d(this.bNw));
        if (this.bNw > 0) {
            dataOutputStream.write(this.bNE);
        }
    }

    /* renamed from: a */
    public void m5525a(DataInputStream dataInputStream) {
        this.bNG = bto.m5533d(dataInputStream.readShort());
        this.bNH = bto.m5533d(dataInputStream.readShort());
        this.bNI = bto.m5533d(dataInputStream.readShort());
        this.bNJ = bto.m5533d(dataInputStream.readShort());
        this.bNK = bto.m5532kj(dataInputStream.readInt());
        this.bNL = bto.m5532kj(dataInputStream.readInt());
        this.bNw = bto.m5533d(dataInputStream.readShort());
        this.bNE = new byte[this.bNw];
        dataInputStream.read(this.bNE, 0, this.bNw);
    }
}
