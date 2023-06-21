package com.kingroot.kinguser;

import com.kingx.cloudsdk.AbstractC4027cb;
import com.kingx.cloudsdk.C4025bx;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class bnc {
    private ByteBuffer bCN;
    private String bCO = "GBK";

    /* renamed from: com.kingroot.kinguser.bnc$a */
    /* loaded from: classes.dex */
    public static class C2517a {
        public byte bCP;
        public int tag;
    }

    public bnc() {
    }

    public bnc(byte[] bArr) {
        this.bCN = ByteBuffer.wrap(bArr);
    }

    public bnc(byte[] bArr, int i) {
        this.bCN = ByteBuffer.wrap(bArr);
        this.bCN.position(4);
    }

    /* renamed from: u */
    public final void m6261u(byte[] bArr) {
        this.bCN = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    private static int m6271a(C2517a c2517a, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        c2517a.bCP = (byte) (b & 15);
        c2517a.tag = (b & 240) >> 4;
        if (c2517a.tag == 15) {
            c2517a.tag = byteBuffer.get() & 255;
            return 2;
        }
        return 1;
    }

    /* renamed from: a */
    private void m6272a(C2517a c2517a) {
        m6271a(c2517a, this.bCN);
    }

    private void skip(int i) {
        this.bCN.position(this.bCN.position() + i);
    }

    /* renamed from: jQ */
    private boolean m6263jQ(int i) {
        try {
            C2517a c2517a = new C2517a();
            while (true) {
                int m6271a = m6271a(c2517a, this.bCN.duplicate());
                if (i <= c2517a.tag || c2517a.bCP == 11) {
                    break;
                }
                skip(m6271a);
                m6278a(c2517a.bCP);
            }
            return i == c2517a.tag;
        } catch (C4025bx e) {
            return false;
        } catch (BufferUnderflowException e2) {
            return false;
        }
    }

    private void age() {
        C2517a c2517a = new C2517a();
        while (this.bCN.remaining() != 0) {
            m6272a(c2517a);
            m6278a(c2517a.bCP);
            if (c2517a.bCP == 11) {
                return;
            }
        }
    }

    private void agf() {
        C2517a c2517a = new C2517a();
        m6272a(c2517a);
        m6278a(c2517a.bCP);
    }

    /* renamed from: a */
    private void m6278a(byte b) {
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
                int i2 = this.bCN.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                skip(i2);
                return;
            case 7:
                skip(this.bCN.getInt());
                return;
            case 8:
                int m6274a = m6274a(0, 0, true);
                while (i < (m6274a << 1)) {
                    agf();
                    i++;
                }
                return;
            case 9:
                int m6274a2 = m6274a(0, 0, true);
                while (i < m6274a2) {
                    agf();
                    i++;
                }
                return;
            case 10:
                age();
                return;
            case 11:
            case 12:
                return;
            case 13:
                C2517a c2517a = new C2517a();
                m6272a(c2517a);
                if (c2517a.bCP != 0) {
                    throw new C4025bx("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) c2517a.bCP));
                }
                skip(m6274a(0, 0, true));
                return;
            default:
                throw new C4025bx("invalid type.");
        }
    }

    /* renamed from: y */
    public final boolean m6260y(int i, boolean z) {
        return m6277a((byte) 0, i, z) != 0;
    }

    /* renamed from: a */
    public final byte m6277a(byte b, int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 0:
                    return this.bCN.get();
                case 11:
                    return b;
                case 12:
                    return (byte) 0;
                default:
                    throw new C4025bx("type mismatch.");
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return b;
        }
    }

    /* renamed from: a */
    public final short m6267a(short s, int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 0:
                    return this.bCN.get();
                case 1:
                    return this.bCN.getShort();
                case 11:
                    return s;
                case 12:
                    return (short) 0;
                default:
                    throw new C4025bx("type mismatch.");
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return s;
        }
    }

    /* renamed from: a */
    public final int m6274a(int i, int i2, boolean z) {
        if (m6263jQ(i2)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 0:
                    return this.bCN.get();
                case 1:
                    return this.bCN.getShort();
                case 2:
                    return this.bCN.getInt();
                case 11:
                    return i;
                case 12:
                    return 0;
                default:
                    throw new C4025bx("type mismatch.");
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return i;
        }
    }

    /* renamed from: a */
    public final long m6273a(long j, int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 0:
                    return this.bCN.get();
                case 1:
                    return this.bCN.getShort();
                case 2:
                    return this.bCN.getInt();
                case 3:
                    return this.bCN.getLong();
                case 12:
                    return 0L;
                default:
                    throw new C4025bx("type mismatch.");
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return j;
        }
    }

    /* renamed from: a */
    private float m6275a(float f, int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 4:
                    return this.bCN.getFloat();
                case 11:
                    return f;
                case 12:
                    return 0.0f;
                default:
                    throw new C4025bx("type mismatch.");
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return f;
        }
    }

    /* renamed from: a */
    public final double m6276a(double d, int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 4:
                    return this.bCN.getFloat();
                case 5:
                    return this.bCN.getDouble();
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 11:
                    return d;
                case 12:
                    return 0.0d;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return d;
        }
    }

    /* renamed from: z */
    public final String m6259z(int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 6:
                    int i2 = this.bCN.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.bCN.get(bArr);
                    try {
                        return new String(bArr, this.bCO);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.bCN.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new C4025bx("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.bCN.get(bArr2);
                    try {
                        return new String(bArr2, this.bCO);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                case 8:
                case 9:
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 11:
                    return null;
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4025bx("require field not exist.");
        }
    }

    /* renamed from: a */
    public final <K, V> HashMap<K, V> m6269a(Map<K, V> map, int i, boolean z) {
        return (HashMap) m6268a(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K, V> Map<K, V> m6268a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 8:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        map.put(m6264d(key, 0, true), m6264d(value, 1, true));
                    }
                    return map;
                case 9:
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 11:
                    return map;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        } else {
            return map;
        }
    }

    /* renamed from: A */
    private boolean[] m6285A(int i, boolean z) {
        boolean[] zArr = null;
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    zArr = new boolean[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        zArr[i2] = m6260y(0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return zArr;
    }

    /* renamed from: B */
    public final byte[] m6284B(int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    byte[] bArr = new byte[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        bArr[i2] = m6277a(bArr[0], 0, true);
                    }
                    return bArr;
                case 10:
                case 12:
                default:
                    throw new C4025bx("type mismatch.");
                case 11:
                    return null;
                case 13:
                    C2517a c2517a2 = new C2517a();
                    m6272a(c2517a2);
                    if (c2517a2.bCP != 0) {
                        throw new C4025bx("type mismatch, tag: " + i + ", type: " + ((int) c2517a.bCP) + ", " + ((int) c2517a2.bCP));
                    }
                    int m6274a2 = m6274a(0, 0, true);
                    if (m6274a2 < 0) {
                        throw new C4025bx("invalid size, tag: " + i + ", type: " + ((int) c2517a.bCP) + ", " + ((int) c2517a2.bCP) + ", size: " + m6274a2);
                    }
                    byte[] bArr2 = new byte[m6274a2];
                    this.bCN.get(bArr2);
                    return bArr2;
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4025bx("require field not exist.");
        }
    }

    /* renamed from: C */
    private short[] m6283C(int i, boolean z) {
        short[] sArr = null;
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    sArr = new short[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        sArr[i2] = m6267a(sArr[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return sArr;
    }

    /* renamed from: D */
    private int[] m6282D(int i, boolean z) {
        int[] iArr = null;
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    iArr = new int[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        iArr[i2] = m6274a(iArr[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return iArr;
    }

    /* renamed from: E */
    private long[] m6281E(int i, boolean z) {
        long[] jArr = null;
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    jArr = new long[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        jArr[i2] = m6273a(jArr[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return jArr;
    }

    /* renamed from: F */
    private float[] m6280F(int i, boolean z) {
        float[] fArr = null;
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    fArr = new float[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        fArr[i2] = m6275a(fArr[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return fArr;
    }

    /* renamed from: G */
    private double[] m6279G(int i, boolean z) {
        double[] dArr = null;
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    dArr = new double[m6274a];
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        dArr[i2] = m6276a(dArr[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return dArr;
    }

    /* renamed from: a */
    private <T> T[] m6266a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new C4025bx("unable to get type of key and value.");
        }
        return (T[]) m6265c(tArr[0], i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private <T> T[] m6265c(T t, int i, boolean z) {
        if (m6263jQ(i)) {
            C2517a c2517a = new C2517a();
            m6272a(c2517a);
            switch (c2517a.bCP) {
                case 9:
                    int m6274a = m6274a(0, 0, true);
                    if (m6274a < 0) {
                        throw new C4025bx("size invalid: " + m6274a);
                    }
                    T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), m6274a));
                    for (int i2 = 0; i2 < m6274a; i2++) {
                        tArr[i2] = m6264d(t, 0, true);
                    }
                    return tArr;
                case 10:
                default:
                    throw new C4025bx("type mismatch.");
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return null;
    }

    /* renamed from: a */
    public final AbstractC4027cb m6270a(AbstractC4027cb abstractC4027cb, int i, boolean z) {
        AbstractC4027cb abstractC4027cb2 = null;
        if (m6263jQ(i)) {
            try {
                abstractC4027cb2 = (AbstractC4027cb) abstractC4027cb.getClass().newInstance();
                C2517a c2517a = new C2517a();
                m6272a(c2517a);
                if (c2517a.bCP != 10) {
                    throw new C4025bx("type mismatch.");
                }
                abstractC4027cb2.mo1167a(this);
                age();
            } catch (Exception e) {
                throw new C4025bx(e.getMessage());
            }
        } else if (z) {
            throw new C4025bx("require field not exist.");
        }
        return abstractC4027cb2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final <T> Object m6264d(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(m6277a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(m6260y(i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(m6267a((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(m6274a(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(m6273a(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(m6275a(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(m6276a(0.0d, i, z));
        }
        if (t instanceof String) {
            return m6259z(i, z);
        }
        if (t instanceof Map) {
            return m6269a((Map) t, i, z);
        }
        if (t instanceof List) {
            List list = (List) t;
            if (list == null || list.isEmpty()) {
                return new ArrayList();
            }
            Object[] m6265c = m6265c(list.get(0), i, z);
            if (m6265c == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : m6265c) {
                arrayList.add(obj);
            }
            return arrayList;
        } else if (t instanceof AbstractC4027cb) {
            return m6270a((AbstractC4027cb) t, i, z);
        } else {
            if (t.getClass().isArray()) {
                if ((t instanceof byte[]) || (t instanceof Byte[])) {
                    return m6284B(i, z);
                }
                if (t instanceof boolean[]) {
                    return m6285A(i, z);
                }
                if (t instanceof short[]) {
                    return m6283C(i, z);
                }
                if (t instanceof int[]) {
                    return m6282D(i, z);
                }
                if (t instanceof long[]) {
                    return m6281E(i, z);
                }
                if (t instanceof float[]) {
                    return m6280F(i, z);
                }
                if (t instanceof double[]) {
                    return m6279G(i, z);
                }
                return m6266a((Object[]) t, i, z);
            }
            throw new C4025bx("read object error: unsupport type.");
        }
    }

    /* renamed from: mu */
    public final int m6262mu(String str) {
        this.bCO = str;
        return 0;
    }
}
