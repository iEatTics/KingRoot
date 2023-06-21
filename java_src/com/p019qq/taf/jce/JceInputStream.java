package com.p019qq.taf.jce;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.qq.taf.jce.JceInputStream */
/* loaded from: classes.dex */
public final class JceInputStream {
    private ByteBuffer bDR;
    protected String bDS = "GBK";

    /* renamed from: com.qq.taf.jce.JceInputStream$HeadData */
    /* loaded from: classes.dex */
    public static class HeadData {
        public int tag;
        public byte type;

        public void clear() {
            this.type = (byte) 0;
            this.tag = 0;
        }
    }

    public JceInputStream() {
    }

    public JceInputStream(ByteBuffer byteBuffer) {
        this.bDR = byteBuffer;
    }

    public JceInputStream(byte[] bArr) {
        this.bDR = ByteBuffer.wrap(bArr);
    }

    public JceInputStream(byte[] bArr, int i) {
        this.bDR = ByteBuffer.wrap(bArr);
        this.bDR.position(i);
    }

    public void warp(byte[] bArr) {
        wrap(bArr);
    }

    public void wrap(byte[] bArr) {
        this.bDR = ByteBuffer.wrap(bArr);
    }

    public static int readHead(HeadData headData, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        headData.type = (byte) (b & 15);
        headData.tag = (b & 240) >> 4;
        if (headData.tag == 15) {
            headData.tag = byteBuffer.get() & 255;
            return 2;
        }
        return 1;
    }

    public void readHead(HeadData headData) {
        readHead(headData, this.bDR);
    }

    /* renamed from: a */
    private int m1160a(HeadData headData) {
        return readHead(headData, this.bDR.duplicate());
    }

    private void skip(int i) {
        this.bDR.position(this.bDR.position() + i);
    }

    public boolean skipToTag(int i) {
        try {
            HeadData headData = new HeadData();
            while (true) {
                int m1160a = m1160a(headData);
                if (i <= headData.tag || headData.type == 11) {
                    break;
                }
                skip(m1160a);
                m1159b(headData.type);
            }
            return i == headData.tag;
        } catch (JceDecodeException e) {
            return false;
        } catch (BufferUnderflowException e2) {
            return false;
        }
    }

    public void skipToStructEnd() {
        HeadData headData = new HeadData();
        while (this.bDR.remaining() != 0) {
            readHead(headData);
            m1159b(headData.type);
            if (headData.type == 11) {
                return;
            }
        }
    }

    private void agj() {
        HeadData headData = new HeadData();
        readHead(headData);
        m1159b(headData.type);
    }

    /* renamed from: b */
    private void m1159b(byte b) {
        int i = 0;
        switch (b) {
            case 0:
                skip(1);
                return;
            case 1:
                skip(2);
                return;
            case 2:
                skip(4);
                return;
            case 3:
                skip(8);
                return;
            case 4:
                skip(4);
                return;
            case 5:
                skip(8);
                return;
            case 6:
                int i2 = this.bDR.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                skip(i2);
                return;
            case 7:
                skip(this.bDR.getInt());
                return;
            case 8:
                int read = read(0, 0, true);
                while (i < read * 2) {
                    agj();
                    i++;
                }
                return;
            case 9:
                int read2 = read(0, 0, true);
                while (i < read2) {
                    agj();
                    i++;
                }
                return;
            case 10:
                skipToStructEnd();
                return;
            case 11:
            case 12:
                return;
            case 13:
                HeadData headData = new HeadData();
                readHead(headData);
                if (headData.type != 0) {
                    throw new JceDecodeException("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) headData.type));
                }
                skip(read(0, 0, true));
                return;
            default:
                throw new JceDecodeException("invalid type.");
        }
    }

    public boolean read(boolean z, int i, boolean z2) {
        return read((byte) 0, i, z2) != 0;
    }

    public byte read(byte b, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 0:
                    return this.bDR.get();
                case 11:
                    return b;
                case 12:
                    return (byte) 0;
                default:
                    throw new JceDecodeException("type mismatch.");
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return b;
        }
    }

    public short read(short s, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 0:
                    return this.bDR.get();
                case 1:
                    return this.bDR.getShort();
                case 11:
                    return s;
                case 12:
                    return (short) 0;
                default:
                    throw new JceDecodeException("type mismatch.");
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return s;
        }
    }

    public int read(int i, int i2, boolean z) {
        if (skipToTag(i2)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 0:
                    return this.bDR.get();
                case 1:
                    return this.bDR.getShort();
                case 2:
                    return this.bDR.getInt();
                case 11:
                    return i;
                case 12:
                    return 0;
                default:
                    throw new JceDecodeException("type mismatch.");
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return i;
        }
    }

    public long read(long j, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 0:
                    return this.bDR.get();
                case 1:
                    return this.bDR.getShort();
                case 2:
                    return this.bDR.getInt();
                case 3:
                    return this.bDR.getLong();
                case 12:
                    return 0L;
                default:
                    throw new JceDecodeException("type mismatch.");
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return j;
        }
    }

    public float read(float f, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 4:
                    return this.bDR.getFloat();
                case 11:
                    return f;
                case 12:
                    return 0.0f;
                default:
                    throw new JceDecodeException("type mismatch.");
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return f;
        }
    }

    public double read(double d, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 4:
                    return this.bDR.getFloat();
                case 5:
                    return this.bDR.getDouble();
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    return d;
                case 12:
                    return 0.0d;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return d;
        }
    }

    public String readByteString(String str, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 6:
                    int i2 = this.bDR.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.bDR.get(bArr);
                    return HexUtil.bytes2HexStr(bArr);
                case 7:
                    int i3 = this.bDR.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new JceDecodeException("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.bDR.get(bArr2);
                    return HexUtil.bytes2HexStr(bArr2);
                case 8:
                case 9:
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    return str;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return str;
        }
    }

    public String read(String str, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 6:
                    int i2 = this.bDR.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.bDR.get(bArr);
                    try {
                        return new String(bArr, this.bDS);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.bDR.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new JceDecodeException("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.bDR.get(bArr2);
                    try {
                        return new String(bArr2, this.bDS);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                case 8:
                case 9:
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    return str;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return str;
        }
    }

    public String readString(int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 6:
                    int i2 = this.bDR.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.bDR.get(bArr);
                    try {
                        return new String(bArr, this.bDS);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.bDR.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new JceDecodeException("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.bDR.get(bArr2);
                    try {
                        return new String(bArr2, this.bDS);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                case 8:
                case 9:
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    return null;
            }
        } else if (!z) {
            return null;
        } else {
            throw new JceDecodeException("require field not exist.");
        }
    }

    public String[] read(String[] strArr, int i, boolean z) {
        return (String[]) readArray(strArr, i, z);
    }

    public Map<String, String> readStringMap(int i, boolean z) {
        HashMap hashMap = new HashMap();
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 9:
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 8:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    for (int i2 = 0; i2 < read; i2++) {
                        hashMap.put(readString(0, true), readString(1, true));
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return hashMap;
    }

    public <K, V> HashMap<K, V> readMap(Map<K, V> map, int i, boolean z) {
        return (HashMap) m1158b(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <K, V> Map<K, V> m1158b(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 8:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    for (int i2 = 0; i2 < read; i2++) {
                        map.put(read((JceInputStream) key, 0, true), read((JceInputStream) value, 1, true));
                    }
                    return map;
                case 9:
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    return map;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return map;
        }
    }

    public List readList(int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    for (int i2 = 0; i2 < read; i2++) {
                        HeadData headData2 = new HeadData();
                        readHead(headData2);
                        switch (headData2.type) {
                            case 0:
                                skip(1);
                                break;
                            case 1:
                                skip(2);
                                break;
                            case 2:
                                skip(4);
                                break;
                            case 3:
                                skip(8);
                                break;
                            case 4:
                                skip(4);
                                break;
                            case 5:
                                skip(8);
                                break;
                            case 6:
                                int i3 = this.bDR.get();
                                if (i3 < 0) {
                                    i3 += 256;
                                }
                                skip(i3);
                                break;
                            case 7:
                                skip(this.bDR.getInt());
                                break;
                            case 8:
                            case 9:
                            case 11:
                                break;
                            case 10:
                                try {
                                    JceStruct jceStruct = (JceStruct) Class.forName(JceStruct.class.getName()).getConstructor(new Class[0]).newInstance(new Object[0]);
                                    jceStruct.readFrom(this);
                                    skipToStructEnd();
                                    arrayList.add(jceStruct);
                                    break;
                                } catch (Exception e) {
                                    e.printStackTrace();
                                    throw new JceDecodeException("type mismatch." + e);
                                }
                            case 12:
                                arrayList.add(new Integer(0));
                                break;
                            default:
                                throw new JceDecodeException("type mismatch.");
                        }
                    }
                    break;
                default:
                    throw new JceDecodeException("type mismatch.");
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return arrayList;
    }

    public boolean[] read(boolean[] zArr, int i, boolean z) {
        boolean[] zArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    zArr2 = new boolean[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        zArr2[i2] = read(zArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return zArr2;
    }

    public byte[] read(byte[] bArr, int i, boolean z) {
        byte[] bArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    byte[] bArr3 = new byte[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        bArr3[i2] = read(bArr3[0], 0, true);
                    }
                    return bArr3;
                case 10:
                case 12:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    return bArr2;
                case 13:
                    HeadData headData2 = new HeadData();
                    readHead(headData2);
                    if (headData2.type != 0) {
                        throw new JceDecodeException("type mismatch, tag: " + i + ", type: " + ((int) headData.type) + ", " + ((int) headData2.type));
                    }
                    int read2 = read(0, 0, true);
                    if (read2 < 0) {
                        throw new JceDecodeException("invalid size, tag: " + i + ", type: " + ((int) headData.type) + ", " + ((int) headData2.type) + ", size: " + read2);
                    }
                    byte[] bArr4 = new byte[read2];
                    this.bDR.get(bArr4);
                    return bArr4;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        } else {
            return bArr2;
        }
    }

    public short[] read(short[] sArr, int i, boolean z) {
        short[] sArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    sArr2 = new short[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        sArr2[i2] = read(sArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return sArr2;
    }

    public int[] read(int[] iArr, int i, boolean z) {
        int[] iArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    iArr2 = new int[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        iArr2[i2] = read(iArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return iArr2;
    }

    public long[] read(long[] jArr, int i, boolean z) {
        long[] jArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    jArr2 = new long[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        jArr2[i2] = read(jArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return jArr2;
    }

    public float[] read(float[] fArr, int i, boolean z) {
        float[] fArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    fArr2 = new float[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        fArr2[i2] = read(fArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return fArr2;
    }

    public double[] read(double[] dArr, int i, boolean z) {
        double[] dArr2 = null;
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    dArr2 = new double[read];
                    for (int i2 = 0; i2 < read; i2++) {
                        dArr2[i2] = read(dArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return dArr2;
    }

    public <T> T[] readArray(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new JceDecodeException("unable to get type of key and value.");
        }
        return (T[]) m1157e(tArr[0], i, z);
    }

    public <T> List<T> readArray(List<T> list, int i, boolean z) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        Object[] m1157e = m1157e(list.get(0), i, z);
        if (m1157e == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : m1157e) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    private <T> T[] m1157e(T t, int i, boolean z) {
        if (skipToTag(i)) {
            HeadData headData = new HeadData();
            readHead(headData);
            switch (headData.type) {
                case 9:
                    int read = read(0, 0, true);
                    if (read < 0) {
                        throw new JceDecodeException("size invalid: " + read);
                    }
                    T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), read));
                    for (int i2 = 0; i2 < read; i2++) {
                        tArr[i2] = read((JceInputStream) t, 0, true);
                    }
                    return tArr;
                case 10:
                default:
                    throw new JceDecodeException("type mismatch.");
                case 11:
                    break;
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return null;
    }

    public JceStruct directRead(JceStruct jceStruct, int i, boolean z) {
        JceStruct jceStruct2 = null;
        if (skipToTag(i)) {
            try {
                jceStruct2 = jceStruct.newInit();
                HeadData headData = new HeadData();
                readHead(headData);
                if (headData.type != 10) {
                    throw new JceDecodeException("type mismatch.");
                }
                jceStruct2.readFrom(this);
                skipToStructEnd();
            } catch (Exception e) {
                throw new JceDecodeException(e.getMessage());
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return jceStruct2;
    }

    public JceStruct read(JceStruct jceStruct, int i, boolean z) {
        JceStruct jceStruct2 = null;
        if (skipToTag(i)) {
            try {
                jceStruct2 = (JceStruct) jceStruct.getClass().newInstance();
                HeadData headData = new HeadData();
                readHead(headData);
                if (headData.type != 10) {
                    throw new JceDecodeException("type mismatch.");
                }
                jceStruct2.readFrom(this);
                skipToStructEnd();
            } catch (Exception e) {
                throw new JceDecodeException(e.getMessage());
            }
        } else if (z) {
            throw new JceDecodeException("require field not exist.");
        }
        return jceStruct2;
    }

    public JceStruct[] read(JceStruct[] jceStructArr, int i, boolean z) {
        return (JceStruct[]) readArray(jceStructArr, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> Object read(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(read((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(read(false, i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(read((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(read(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(read(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(read(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(read(0.0d, i, z));
        }
        if (t instanceof String) {
            return readString(i, z);
        }
        if (t instanceof Map) {
            return readMap((Map) t, i, z);
        }
        if (t instanceof List) {
            return readArray((List) t, i, z);
        }
        if (t instanceof JceStruct) {
            return read((JceStruct) t, i, z);
        }
        if (t.getClass().isArray()) {
            if ((t instanceof byte[]) || (t instanceof Byte[])) {
                return read((byte[]) null, i, z);
            }
            if (t instanceof boolean[]) {
                return read((boolean[]) null, i, z);
            }
            if (t instanceof short[]) {
                return read((short[]) null, i, z);
            }
            if (t instanceof int[]) {
                return read((int[]) null, i, z);
            }
            if (t instanceof long[]) {
                return read((long[]) null, i, z);
            }
            if (t instanceof float[]) {
                return read((float[]) null, i, z);
            }
            if (t instanceof double[]) {
                return read((double[]) null, i, z);
            }
            return readArray((Object[]) t, i, z);
        }
        throw new JceDecodeException("read object error: unsupport type.");
    }

    public int setServerEncoding(String str) {
        this.bDS = str;
        return 0;
    }

    public static void main(String[] strArr) {
    }

    public ByteBuffer getBs() {
        return this.bDR;
    }
}
