package com.kingroot.kinguser;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sm.AbstractC4399ag;
import sm.C4397ac;
/* loaded from: classes.dex */
public final class ccr {

    /* renamed from: a */
    protected String f2248a = "GBK";
    private ByteBuffer bXj;

    /* renamed from: com.kingroot.kinguser.ccr$a */
    /* loaded from: classes.dex */
    public static class C2702a {

        /* renamed from: a */
        public byte f2249a;

        /* renamed from: b */
        public int f2250b;
    }

    public ccr() {
    }

    public ccr(byte[] bArr) {
        this.bXj = ByteBuffer.wrap(bArr);
    }

    public ccr(byte[] bArr, int i) {
        this.bXj = ByteBuffer.wrap(bArr);
        this.bXj.position(i);
    }

    /* renamed from: a */
    public void m4935a(byte[] bArr) {
        this.bXj = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    public static int m4943a(C2702a c2702a, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        c2702a.f2249a = (byte) (b & 15);
        c2702a.f2250b = (b & 240) >> 4;
        if (c2702a.f2250b == 15) {
            c2702a.f2250b = byteBuffer.get() & 255;
            return 2;
        }
        return 1;
    }

    /* renamed from: a */
    public void m4944a(C2702a c2702a) {
        m4943a(c2702a, this.bXj);
    }

    /* renamed from: b */
    private int m4924b(C2702a c2702a) {
        return m4943a(c2702a, this.bXj.duplicate());
    }

    /* renamed from: b */
    private void m4925b(int i) {
        this.bXj.position(this.bXj.position() + i);
    }

    /* renamed from: a */
    public boolean m4948a(int i) {
        try {
            C2702a c2702a = new C2702a();
            while (true) {
                int m4924b = m4924b(c2702a);
                if (i <= c2702a.f2250b || c2702a.f2249a == 11) {
                    break;
                }
                m4925b(m4924b);
                m4952a(c2702a.f2249a);
            }
            return i == c2702a.f2250b;
        } catch (BufferUnderflowException e) {
            return false;
        } catch (C4397ac e2) {
            return false;
        }
    }

    /* renamed from: a */
    public void m4953a() {
        C2702a c2702a = new C2702a();
        while (this.bXj.remaining() != 0) {
            m4944a(c2702a);
            m4952a(c2702a.f2249a);
            if (c2702a.f2249a == 11) {
                return;
            }
        }
    }

    /* renamed from: b */
    private void m4926b() {
        C2702a c2702a = new C2702a();
        m4944a(c2702a);
        m4952a(c2702a.f2249a);
    }

    /* renamed from: a */
    private void m4952a(byte b) {
        int i = 0;
        switch (b) {
            case 0:
                m4925b(1);
                return;
            case 1:
                m4925b(2);
                return;
            case 2:
                m4925b(4);
                return;
            case 3:
                m4925b(8);
                return;
            case 4:
                m4925b(4);
                return;
            case 5:
                m4925b(8);
                return;
            case 6:
                int i2 = this.bXj.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                m4925b(i2);
                return;
            case 7:
                m4925b(this.bXj.getInt());
                return;
            case 8:
                int m4947a = m4947a(0, 0, true);
                while (i < m4947a * 2) {
                    m4926b();
                    i++;
                }
                return;
            case 9:
                int m4947a2 = m4947a(0, 0, true);
                while (i < m4947a2) {
                    m4926b();
                    i++;
                }
                return;
            case 10:
                m4953a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                C2702a c2702a = new C2702a();
                m4944a(c2702a);
                if (c2702a.f2249a != 0) {
                    throw new C4397ac("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) c2702a.f2249a));
                }
                m4925b(m4947a(0, 0, true));
                return;
            default:
                throw new C4397ac("invalid type.");
        }
    }

    /* renamed from: a */
    public boolean m4936a(boolean z, int i, boolean z2) {
        return m4951a((byte) 0, i, z2) != 0;
    }

    /* renamed from: a */
    public byte m4951a(byte b, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 0:
                    return this.bXj.get();
                case 11:
                    return b;
                case 12:
                    return (byte) 0;
                default:
                    throw new C4397ac("type mismatch.");
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return b;
        }
    }

    /* renamed from: a */
    public short m4937a(short s, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 0:
                    return this.bXj.get();
                case 1:
                    return this.bXj.getShort();
                case 11:
                    return s;
                case 12:
                    return (short) 0;
                default:
                    throw new C4397ac("type mismatch.");
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return s;
        }
    }

    /* renamed from: a */
    public int m4947a(int i, int i2, boolean z) {
        if (m4948a(i2)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 0:
                    return this.bXj.get();
                case 1:
                    return this.bXj.getShort();
                case 2:
                    return this.bXj.getInt();
                case 11:
                    return i;
                case 12:
                    return 0;
                default:
                    throw new C4397ac("type mismatch.");
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return i;
        }
    }

    /* renamed from: a */
    public long m4945a(long j, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 0:
                    return this.bXj.get();
                case 1:
                    return this.bXj.getShort();
                case 2:
                    return this.bXj.getInt();
                case 3:
                    return this.bXj.getLong();
                case 12:
                    return 0L;
                default:
                    throw new C4397ac("type mismatch.");
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return j;
        }
    }

    /* renamed from: a */
    public float m4949a(float f, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 4:
                    return this.bXj.getFloat();
                case 11:
                    return f;
                case 12:
                    return 0.0f;
                default:
                    throw new C4397ac("type mismatch.");
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return f;
        }
    }

    /* renamed from: a */
    public double m4950a(double d, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 4:
                    return this.bXj.getFloat();
                case 5:
                    return this.bXj.getDouble();
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 11:
                    return d;
                case 12:
                    return 0.0d;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return d;
        }
    }

    /* renamed from: a */
    public String m4946a(int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 6:
                    int i2 = this.bXj.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.bXj.get(bArr);
                    try {
                        return new String(bArr, this.f2248a);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.bXj.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new C4397ac("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.bXj.get(bArr2);
                    try {
                        return new String(bArr2, this.f2248a);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                case 8:
                case 9:
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 11:
                    return null;
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4397ac("require field not exist.");
        }
    }

    /* renamed from: a */
    public <K, V> HashMap<K, V> m4940a(Map<K, V> map, int i, boolean z) {
        return (HashMap) m4939a(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K, V> Map<K, V> m4939a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 8:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        map.put(m4942a((ccr) key, 0, true), m4942a((ccr) value, 1, true));
                    }
                    return map;
                case 9:
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 11:
                    return map;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        } else {
            return map;
        }
    }

    /* renamed from: a */
    public boolean[] m4927a(boolean[] zArr, int i, boolean z) {
        boolean[] zArr2 = null;
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    zArr2 = new boolean[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        zArr2[i2] = m4936a(zArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return zArr2;
    }

    /* renamed from: a */
    public byte[] m4934a(byte[] bArr, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    byte[] bArr2 = new byte[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        bArr2[i2] = m4951a(bArr2[0], 0, true);
                    }
                    return bArr2;
                case 10:
                case 12:
                default:
                    throw new C4397ac("type mismatch.");
                case 11:
                    return null;
                case 13:
                    C2702a c2702a2 = new C2702a();
                    m4944a(c2702a2);
                    if (c2702a2.f2249a != 0) {
                        throw new C4397ac("type mismatch, tag: " + i + ", type: " + ((int) c2702a.f2249a) + ", " + ((int) c2702a2.f2249a));
                    }
                    int m4947a2 = m4947a(0, 0, true);
                    if (m4947a2 < 0) {
                        throw new C4397ac("invalid size, tag: " + i + ", type: " + ((int) c2702a.f2249a) + ", " + ((int) c2702a2.f2249a) + ", size: " + m4947a2);
                    }
                    byte[] bArr3 = new byte[m4947a2];
                    this.bXj.get(bArr3);
                    return bArr3;
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4397ac("require field not exist.");
        }
    }

    /* renamed from: a */
    public short[] m4928a(short[] sArr, int i, boolean z) {
        short[] sArr2 = null;
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    sArr2 = new short[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        sArr2[i2] = m4937a(sArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return sArr2;
    }

    /* renamed from: a */
    public int[] m4931a(int[] iArr, int i, boolean z) {
        int[] iArr2 = null;
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    iArr2 = new int[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        iArr2[i2] = m4947a(iArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return iArr2;
    }

    /* renamed from: a */
    public long[] m4930a(long[] jArr, int i, boolean z) {
        long[] jArr2 = null;
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    jArr2 = new long[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        jArr2[i2] = m4945a(jArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return jArr2;
    }

    /* renamed from: a */
    public float[] m4932a(float[] fArr, int i, boolean z) {
        float[] fArr2 = null;
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    fArr2 = new float[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        fArr2[i2] = m4949a(fArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return fArr2;
    }

    /* renamed from: a */
    public double[] m4933a(double[] dArr, int i, boolean z) {
        double[] dArr2 = null;
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    dArr2 = new double[m4947a];
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        dArr2[i2] = m4950a(dArr2[0], 0, true);
                    }
                    break;
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return dArr2;
    }

    /* renamed from: a */
    public <T> T[] m4929a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new C4397ac("unable to get type of key and value.");
        }
        return (T[]) m4923b((ccr) tArr[0], i, z);
    }

    /* renamed from: b */
    public <T> List<T> m4922b(List<T> list, int i, boolean z) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        Object[] m4923b = m4923b((ccr) list.get(0), i, z);
        if (m4923b == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : m4923b) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <T> T[] m4923b(T t, int i, boolean z) {
        if (m4948a(i)) {
            C2702a c2702a = new C2702a();
            m4944a(c2702a);
            switch (c2702a.f2249a) {
                case 9:
                    int m4947a = m4947a(0, 0, true);
                    if (m4947a < 0) {
                        throw new C4397ac("size invalid: " + m4947a);
                    }
                    T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), m4947a));
                    for (int i2 = 0; i2 < m4947a; i2++) {
                        tArr[i2] = m4942a((ccr) t, 0, true);
                    }
                    return tArr;
                case 10:
                default:
                    throw new C4397ac("type mismatch.");
                case 11:
                    break;
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC4399ag m4938a(AbstractC4399ag abstractC4399ag, int i, boolean z) {
        AbstractC4399ag abstractC4399ag2 = null;
        if (m4948a(i)) {
            try {
                abstractC4399ag2 = (AbstractC4399ag) abstractC4399ag.getClass().newInstance();
                C2702a c2702a = new C2702a();
                m4944a(c2702a);
                if (c2702a.f2249a != 10) {
                    throw new C4397ac("type mismatch.");
                }
                abstractC4399ag2.mo23a(this);
                m4953a();
            } catch (Exception e) {
                throw new C4397ac(e.getMessage());
            }
        } else if (z) {
            throw new C4397ac("require field not exist.");
        }
        return abstractC4399ag2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> Object m4942a(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(m4951a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(m4936a(false, i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(m4937a((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(m4947a(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(m4945a(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(m4949a(0.0f, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(m4950a(0.0d, i, z));
        }
        if (t instanceof String) {
            return m4946a(i, z);
        }
        if (t instanceof Map) {
            return m4940a((Map) t, i, z);
        }
        if (t instanceof List) {
            return m4922b((List) t, i, z);
        }
        if (t instanceof AbstractC4399ag) {
            return m4938a((AbstractC4399ag) t, i, z);
        }
        if (t.getClass().isArray()) {
            if ((t instanceof byte[]) || (t instanceof Byte[])) {
                return m4934a((byte[]) null, i, z);
            }
            if (t instanceof boolean[]) {
                return m4927a((boolean[]) null, i, z);
            }
            if (t instanceof short[]) {
                return m4928a((short[]) null, i, z);
            }
            if (t instanceof int[]) {
                return m4931a((int[]) null, i, z);
            }
            if (t instanceof long[]) {
                return m4930a((long[]) null, i, z);
            }
            if (t instanceof float[]) {
                return m4932a((float[]) null, i, z);
            }
            if (t instanceof double[]) {
                return m4933a((double[]) null, i, z);
            }
            return m4929a((Object[]) t, i, z);
        }
        throw new C4397ac("read object error: unsupport type.");
    }

    /* renamed from: a */
    public int m4941a(String str) {
        this.f2248a = str;
        return 0;
    }
}
