package com.kingroot.kinguser;

import com.king.uranus.AbstractC0404cS;
import com.king.uranus.C0402cN;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.mq */
/* loaded from: classes.dex */
public final class C3322mq {

    /* renamed from: wg */
    private ByteBuffer f3145wg;

    /* renamed from: wh */
    protected String f3146wh = "GBK";

    /* renamed from: com.kingroot.kinguser.mq$a */
    /* loaded from: classes.dex */
    public static class C3323a {
        public int tag;

        /* renamed from: wi */
        public byte f3147wi;
    }

    public C3322mq() {
    }

    public C3322mq(byte[] bArr) {
        this.f3145wg = ByteBuffer.wrap(bArr);
    }

    public C3322mq(byte[] bArr, int i) {
        this.f3145wg = ByteBuffer.wrap(bArr);
        this.f3145wg.position(i);
    }

    /* renamed from: u */
    public void m3005u(byte[] bArr) {
        this.f3145wg = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    public static int m3028a(C3323a c3323a, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        c3323a.f3147wi = (byte) (b & 15);
        c3323a.tag = (b & 240) >> 4;
        if (c3323a.tag == 15) {
            c3323a.tag = byteBuffer.get() & 255;
            return 2;
        }
        return 1;
    }

    /* renamed from: a */
    public void m3029a(C3323a c3323a) {
        m3028a(c3323a, this.f3145wg);
    }

    /* renamed from: b */
    private int m3012b(C3323a c3323a) {
        return m3028a(c3323a, this.f3145wg.duplicate());
    }

    /* renamed from: ak */
    private void m3015ak(int i) {
        this.f3145wg.position(this.f3145wg.position() + i);
    }

    /* renamed from: al */
    public boolean m3014al(int i) {
        try {
            C3323a c3323a = new C3323a();
            while (true) {
                int m3012b = m3012b(c3323a);
                if (i <= c3323a.tag || c3323a.f3147wi == 11) {
                    break;
                }
                m3015ak(m3012b);
                m3036a(c3323a.f3147wi);
            }
            return i == c3323a.tag;
        } catch (C0402cN e) {
            return false;
        } catch (BufferUnderflowException e2) {
            return false;
        }
    }

    /* renamed from: eH */
    public void m3007eH() {
        C3323a c3323a = new C3323a();
        while (this.f3145wg.remaining() != 0) {
            m3029a(c3323a);
            m3036a(c3323a.f3147wi);
            if (c3323a.f3147wi == 11) {
                return;
            }
        }
    }

    /* renamed from: eI */
    private void m3006eI() {
        C3323a c3323a = new C3323a();
        m3029a(c3323a);
        m3036a(c3323a.f3147wi);
    }

    /* renamed from: a */
    private void m3036a(byte b) {
        int i = 0;
        switch (b) {
            case 0:
                m3015ak(1);
                return;
            case 1:
                m3015ak(2);
                return;
            case 2:
                m3015ak(4);
                return;
            case 3:
                m3015ak(8);
                return;
            case 4:
                m3015ak(4);
                return;
            case 5:
                m3015ak(8);
                return;
            case 6:
                int i2 = this.f3145wg.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                m3015ak(i2);
                return;
            case 7:
                m3015ak(this.f3145wg.getInt());
                return;
            case 8:
                int m3032a = m3032a(0, 0, true);
                while (i < m3032a * 2) {
                    m3006eI();
                    i++;
                }
                return;
            case 9:
                int m3032a2 = m3032a(0, 0, true);
                while (i < m3032a2) {
                    m3006eI();
                    i++;
                }
                return;
            case 10:
                m3007eH();
                return;
            case 11:
            case 12:
                return;
            case 13:
                C3323a c3323a = new C3323a();
                m3029a(c3323a);
                if (c3323a.f3147wi != 0) {
                    throw new C0402cN("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) c3323a.f3147wi));
                }
                m3015ak(m3032a(0, 0, true));
                return;
            default:
                throw new C0402cN("invalid type.");
        }
    }

    /* renamed from: a */
    public boolean m3024a(boolean z, int i, boolean z2) {
        return m3035a((byte) (z ? 1 : 0), i, z2) != 0;
    }

    /* renamed from: a */
    public byte m3035a(byte b, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 0:
                    return this.f3145wg.get();
                case 11:
                    return b;
                case 12:
                    return (byte) 0;
                default:
                    throw new C0402cN("type mismatch.");
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return b;
        }
    }

    /* renamed from: a */
    public short m3025a(short s, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 0:
                    return this.f3145wg.get();
                case 1:
                    return this.f3145wg.getShort();
                case 11:
                    return s;
                case 12:
                    return (short) 0;
                default:
                    throw new C0402cN("type mismatch.");
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return s;
        }
    }

    /* renamed from: a */
    public int m3032a(int i, int i2, boolean z) {
        if (m3014al(i2)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 0:
                    return this.f3145wg.get();
                case 1:
                    return this.f3145wg.getShort();
                case 2:
                    return this.f3145wg.getInt();
                case 11:
                    return i;
                case 12:
                    return 0;
                default:
                    throw new C0402cN("type mismatch.");
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return i;
        }
    }

    /* renamed from: a */
    public long m3031a(long j, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 0:
                    return this.f3145wg.get();
                case 1:
                    return this.f3145wg.getShort();
                case 2:
                    return this.f3145wg.getInt();
                case 3:
                    return this.f3145wg.getLong();
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 11:
                    return j;
                case 12:
                    return 0L;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return j;
        }
    }

    /* renamed from: a */
    public float m3033a(float f, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 4:
                    return this.f3145wg.getFloat();
                case 11:
                    return f;
                case 12:
                    return 0.0f;
                default:
                    throw new C0402cN("type mismatch.");
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return f;
        }
    }

    /* renamed from: a */
    public double m3034a(double d, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 4:
                    return this.f3145wg.getFloat();
                case 5:
                    return this.f3145wg.getDouble();
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 11:
                    return d;
                case 12:
                    return 0.0d;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return d;
        }
    }

    /* renamed from: b */
    public String m3013b(int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 6:
                    int i2 = this.f3145wg.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.f3145wg.get(bArr);
                    try {
                        return new String(bArr, this.f3146wh);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.f3145wg.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new C0402cN("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.f3145wg.get(bArr2);
                    try {
                        return new String(bArr2, this.f3146wh);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                case 8:
                case 9:
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 11:
                    return null;
            }
        } else if (!z) {
            return null;
        } else {
            throw new C0402cN("require field not exist.");
        }
    }

    /* renamed from: a */
    public <K, V> HashMap<K, V> m3027a(Map<K, V> map, int i, boolean z) {
        return (HashMap) m3026a(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K, V> Map<K, V> m3026a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 8:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        map.put(m3008d(key, 0, true), m3008d(value, 1, true));
                    }
                    return map;
                case 9:
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 11:
                    return map;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        } else {
            return map;
        }
    }

    /* renamed from: a */
    public boolean[] m3016a(boolean[] zArr, int i, boolean z) {
        boolean[] zArr2 = null;
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    zArr2 = new boolean[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        zArr2[i2] = m3024a(zArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return zArr2;
    }

    /* renamed from: a */
    public byte[] m3023a(byte[] bArr, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    byte[] bArr2 = new byte[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        bArr2[i2] = m3035a(bArr2[0], 0, true);
                    }
                    return bArr2;
                case 10:
                case 12:
                default:
                    throw new C0402cN("type mismatch.");
                case 11:
                    return null;
                case 13:
                    C3323a c3323a2 = new C3323a();
                    m3029a(c3323a2);
                    if (c3323a2.f3147wi != 0) {
                        throw new C0402cN("type mismatch, tag: " + i + ", type: " + ((int) c3323a.f3147wi) + ", " + ((int) c3323a2.f3147wi));
                    }
                    int m3032a2 = m3032a(0, 0, true);
                    if (m3032a2 < 0) {
                        throw new C0402cN("invalid size, tag: " + i + ", type: " + ((int) c3323a.f3147wi) + ", " + ((int) c3323a2.f3147wi) + ", size: " + m3032a2);
                    }
                    byte[] bArr3 = new byte[m3032a2];
                    this.f3145wg.get(bArr3);
                    return bArr3;
            }
        } else if (!z) {
            return null;
        } else {
            throw new C0402cN("require field not exist.");
        }
    }

    /* renamed from: a */
    public short[] m3017a(short[] sArr, int i, boolean z) {
        short[] sArr2 = null;
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    sArr2 = new short[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        sArr2[i2] = m3025a(sArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return sArr2;
    }

    /* renamed from: a */
    public int[] m3020a(int[] iArr, int i, boolean z) {
        int[] iArr2 = null;
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    iArr2 = new int[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        iArr2[i2] = m3032a(iArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return iArr2;
    }

    /* renamed from: a */
    public long[] m3019a(long[] jArr, int i, boolean z) {
        long[] jArr2 = null;
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    jArr2 = new long[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        jArr2[i2] = m3031a(jArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return jArr2;
    }

    /* renamed from: a */
    public float[] m3021a(float[] fArr, int i, boolean z) {
        float[] fArr2 = null;
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    fArr2 = new float[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        fArr2[i2] = m3033a(fArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return fArr2;
    }

    /* renamed from: a */
    public double[] m3022a(double[] dArr, int i, boolean z) {
        double[] dArr2 = null;
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    dArr2 = new double[m3032a];
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        dArr2[i2] = m3034a(dArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return dArr2;
    }

    /* renamed from: a */
    public <T> T[] m3018a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new C0402cN("unable to get type of key and value.");
        }
        return (T[]) m3009c(tArr[0], i, z);
    }

    /* renamed from: b */
    public <T> List<T> m3011b(List<T> list, int i, boolean z) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        Object[] m3009c = m3009c(list.get(0), i, z);
        if (m3009c == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : m3009c) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private <T> T[] m3009c(T t, int i, boolean z) {
        if (m3014al(i)) {
            C3323a c3323a = new C3323a();
            m3029a(c3323a);
            switch (c3323a.f3147wi) {
                case 9:
                    int m3032a = m3032a(0, 0, true);
                    if (m3032a < 0) {
                        throw new C0402cN("size invalid: " + m3032a);
                    }
                    T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), m3032a));
                    for (int i2 = 0; i2 < m3032a; i2++) {
                        tArr[i2] = m3008d(t, 0, true);
                    }
                    return tArr;
                case 10:
                default:
                    throw new C0402cN("type mismatch.");
                case 11:
                    break;
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC0404cS m3030a(AbstractC0404cS abstractC0404cS, int i, boolean z) {
        AbstractC0404cS abstractC0404cS2 = null;
        if (m3014al(i)) {
            try {
                abstractC0404cS2 = (AbstractC0404cS) abstractC0404cS.getClass().newInstance();
                C3323a c3323a = new C3323a();
                m3029a(c3323a);
                if (c3323a.f3147wi != 10) {
                    throw new C0402cN("type mismatch.");
                }
                abstractC0404cS2.mo13633a(this);
                m3007eH();
            } catch (Exception e) {
                throw new C0402cN(e.getMessage());
            }
        } else if (z) {
            throw new C0402cN("require field not exist.");
        }
        return abstractC0404cS2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public <T> Object m3008d(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(m3035a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(m3024a(false, i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(m3025a((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(m3032a(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(m3031a(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(m3033a(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(m3034a(0.0d, i, z));
        }
        if (t instanceof String) {
            return m3013b(i, z);
        }
        if (t instanceof Map) {
            return m3027a((Map) t, i, z);
        }
        if (t instanceof List) {
            return m3011b((List) t, i, z);
        }
        if (t instanceof AbstractC0404cS) {
            return m3030a((AbstractC0404cS) t, i, z);
        }
        if (t.getClass().isArray()) {
            if ((t instanceof byte[]) || (t instanceof Byte[])) {
                return m3023a((byte[]) null, i, z);
            }
            if (t instanceof boolean[]) {
                return m3016a((boolean[]) null, i, z);
            }
            if (t instanceof short[]) {
                return m3017a((short[]) null, i, z);
            }
            if (t instanceof int[]) {
                return m3020a((int[]) null, i, z);
            }
            if (t instanceof long[]) {
                return m3019a((long[]) null, i, z);
            }
            if (t instanceof float[]) {
                return m3021a((float[]) null, i, z);
            }
            if (t instanceof double[]) {
                return m3022a((double[]) null, i, z);
            }
            return m3018a((Object[]) t, i, z);
        }
        throw new C0402cN("read object error: unsupport type.");
    }

    /* renamed from: by */
    public int m3010by(String str) {
        this.f3146wh = str;
        return 0;
    }
}
