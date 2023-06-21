package com.p019qq.taf.jce.dynamic;

import com.p019qq.taf.jce.JceDecodeException;
import com.p019qq.taf.jce.JceInputStream;
import java.io.UnsupportedEncodingException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
/* renamed from: com.qq.taf.jce.dynamic.DynamicInputStream */
/* loaded from: classes.dex */
public final class DynamicInputStream {
    private ByteBuffer bDR;
    private String bDS = "GBK";

    public DynamicInputStream(ByteBuffer byteBuffer) {
        this.bDR = byteBuffer;
    }

    public DynamicInputStream(byte[] bArr) {
        this.bDR = ByteBuffer.wrap(bArr);
    }

    public int setServerEncoding(String str) {
        this.bDS = str;
        return 0;
    }

    public JceField read() {
        try {
            JceInputStream.HeadData headData = new JceInputStream.HeadData();
            JceInputStream.readHead(headData, this.bDR);
            switch (headData.type) {
                case 0:
                    return JceField.create(this.bDR.get(), headData.tag);
                case 1:
                    return JceField.create(this.bDR.getShort(), headData.tag);
                case 2:
                    return JceField.create(this.bDR.getInt(), headData.tag);
                case 3:
                    return JceField.create(this.bDR.getLong(), headData.tag);
                case 4:
                    return JceField.create(this.bDR.getFloat(), headData.tag);
                case 5:
                    return JceField.create(this.bDR.getDouble(), headData.tag);
                case 6:
                    int i = this.bDR.get();
                    if (i < 0) {
                        i += 256;
                    }
                    return m1155a(headData, i);
                case 7:
                    return m1155a(headData, this.bDR.getInt());
                case 8:
                    int intValue = ((NumberField) read()).intValue();
                    JceField[] jceFieldArr = new JceField[intValue];
                    JceField[] jceFieldArr2 = new JceField[intValue];
                    for (int i2 = 0; i2 < intValue; i2++) {
                        jceFieldArr[i2] = read();
                        jceFieldArr2[i2] = read();
                    }
                    return JceField.createMap(jceFieldArr, jceFieldArr2, headData.tag);
                case 9:
                    int intValue2 = ((NumberField) read()).intValue();
                    JceField[] jceFieldArr3 = new JceField[intValue2];
                    for (int i3 = 0; i3 < intValue2; i3++) {
                        jceFieldArr3[i3] = read();
                    }
                    return JceField.createList(jceFieldArr3, headData.tag);
                case 10:
                    ArrayList arrayList = new ArrayList();
                    while (true) {
                        JceField read = read();
                        if (read != null) {
                            arrayList.add(read);
                        } else {
                            return JceField.createStruct((JceField[]) arrayList.toArray(new JceField[0]), headData.tag);
                        }
                    }
                case 11:
                    return null;
                case 12:
                    return JceField.createZero(headData.tag);
                case 13:
                    int i4 = headData.tag;
                    JceInputStream.readHead(headData, this.bDR);
                    if (headData.type != 0) {
                        throw new JceDecodeException("type mismatch, simple_list only support byte, tag: " + i4 + ", type: " + ((int) headData.type));
                    }
                    byte[] bArr = new byte[((NumberField) read()).intValue()];
                    this.bDR.get(bArr);
                    return JceField.create(bArr, i4);
                default:
                    return null;
            }
        } catch (BufferUnderflowException e) {
            return null;
        }
    }

    /* renamed from: a */
    private JceField m1155a(JceInputStream.HeadData headData, int i) {
        String str;
        byte[] bArr = new byte[i];
        this.bDR.get(bArr);
        try {
            str = new String(bArr, this.bDS);
        } catch (UnsupportedEncodingException e) {
            str = new String(bArr);
        }
        return JceField.create(str, headData.tag);
    }
}
