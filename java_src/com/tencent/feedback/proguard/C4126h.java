package com.tencent.feedback.proguard;

import com.tencent.feedback.eup.jni.C4096c;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.h */
/* loaded from: classes.dex */
public final class C4126h {

    /* renamed from: a */
    private ByteBuffer f4736a;

    /* renamed from: b */
    private String f4737b = "GBK";

    public C4126h() {
    }

    public C4126h(byte[] bArr) {
        this.f4736a = ByteBuffer.wrap(bArr);
    }

    public C4126h(byte[] bArr, int i) {
        this.f4736a = ByteBuffer.wrap(bArr);
        this.f4736a.position(4);
    }

    /* renamed from: a */
    public final void m695a(byte[] bArr) {
        if (this.f4736a != null) {
            this.f4736a.clear();
        }
        this.f4736a = ByteBuffer.wrap(bArr);
    }

    /* renamed from: a */
    private static int m702a(C4096c c4096c, ByteBuffer byteBuffer) {
        byte b = byteBuffer.get();
        c4096c.f4605a = (byte) (b & 15);
        c4096c.f4606b = (b & 240) >> 4;
        if (c4096c.f4606b == 15) {
            c4096c.f4606b = byteBuffer.get();
            return 2;
        }
        return 1;
    }

    /* renamed from: a */
    private boolean m706a(int i) {
        try {
            C4096c c4096c = new C4096c();
            while (true) {
                int m702a = m702a(c4096c, this.f4736a.duplicate());
                if (i <= c4096c.f4606b || c4096c.f4605a == 11) {
                    break;
                }
                this.f4736a.position(m702a + this.f4736a.position());
                m710a(c4096c.f4605a);
            }
            return i == c4096c.f4606b;
        } catch (C4125g e) {
            return false;
        } catch (BufferUnderflowException e2) {
            return false;
        }
    }

    /* renamed from: a */
    private void m711a() {
        C4096c c4096c = new C4096c();
        do {
            m702a(c4096c, this.f4736a);
            m710a(c4096c.f4605a);
        } while (c4096c.f4605a != 11);
    }

    /* renamed from: a */
    private void m710a(byte b) {
        int i = 0;
        switch (b) {
            case 0:
                this.f4736a.position(this.f4736a.position() + 1);
                return;
            case 1:
                this.f4736a.position(2 + this.f4736a.position());
                return;
            case 2:
                this.f4736a.position(this.f4736a.position() + 4);
                return;
            case 3:
                this.f4736a.position(this.f4736a.position() + 8);
                return;
            case 4:
                this.f4736a.position(this.f4736a.position() + 4);
                return;
            case 5:
                this.f4736a.position(this.f4736a.position() + 8);
                return;
            case 6:
                int i2 = this.f4736a.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                this.f4736a.position(i2 + this.f4736a.position());
                return;
            case 7:
                this.f4736a.position(this.f4736a.getInt() + this.f4736a.position());
                return;
            case 8:
                int m705a = m705a(0, 0, true);
                while (i < (m705a << 1)) {
                    C4096c c4096c = new C4096c();
                    m702a(c4096c, this.f4736a);
                    m710a(c4096c.f4605a);
                    i++;
                }
                return;
            case 9:
                int m705a2 = m705a(0, 0, true);
                while (i < m705a2) {
                    C4096c c4096c2 = new C4096c();
                    m702a(c4096c2, this.f4736a);
                    m710a(c4096c2.f4605a);
                    i++;
                }
                return;
            case 10:
                m711a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                C4096c c4096c3 = new C4096c();
                m702a(c4096c3, this.f4736a);
                if (c4096c3.f4605a != 0) {
                    throw new C4125g("skipField with invalid type, type value: " + ((int) b) + ", " + ((int) c4096c3.f4605a));
                }
                this.f4736a.position(m705a(0, 0, true) + this.f4736a.position());
                return;
            default:
                throw new C4125g("invalid type.");
        }
    }

    /* renamed from: a */
    public final boolean m704a(int i, boolean z) {
        return m709a((byte) 0, i, z) != 0;
    }

    /* renamed from: a */
    public final byte m709a(byte b, int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 0:
                    return this.f4736a.get();
                case 12:
                    return (byte) 0;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return b;
        }
    }

    /* renamed from: a */
    public final short m696a(short s, int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 0:
                    return this.f4736a.get();
                case 1:
                    return this.f4736a.getShort();
                case 12:
                    return (short) 0;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return s;
        }
    }

    /* renamed from: a */
    public final int m705a(int i, int i2, boolean z) {
        if (m706a(i2)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 0:
                    return this.f4736a.get();
                case 1:
                    return this.f4736a.getShort();
                case 2:
                    return this.f4736a.getInt();
                case 12:
                    return 0;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return i;
        }
    }

    /* renamed from: a */
    public final long m703a(long j, int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 0:
                    return this.f4736a.get();
                case 1:
                    return this.f4736a.getShort();
                case 2:
                    return this.f4736a.getInt();
                case 3:
                    return this.f4736a.getLong();
                case 12:
                    return 0L;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return j;
        }
    }

    /* renamed from: a */
    private float m707a(float f, int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 4:
                    return this.f4736a.getFloat();
                case 12:
                    return 0.0f;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return f;
        }
    }

    /* renamed from: a */
    private double m708a(double d, int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 4:
                    return this.f4736a.getFloat();
                case 5:
                    return this.f4736a.getDouble();
                case 12:
                    return 0.0d;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return d;
        }
    }

    /* renamed from: b */
    public final String m693b(int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 6:
                    int i2 = this.f4736a.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.f4736a.get(bArr);
                    try {
                        return new String(bArr, this.f4737b);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.f4736a.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new C4125g("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.f4736a.get(bArr2);
                    try {
                        return new String(bArr2, this.f4737b);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4125g("require field not exist.");
        }
    }

    /* renamed from: a */
    public final <K, V> HashMap<K, V> m698a(Map<K, V> map, int i, boolean z) {
        return (HashMap) m697a(new HashMap(), map, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private <K, V> Map<K, V> m697a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 8:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    for (int i2 = 0; i2 < m705a; i2++) {
                        map.put(m700a((C4126h) key, 0, true), m700a((C4126h) value, 1, true));
                    }
                    return map;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return map;
        }
    }

    /* renamed from: d */
    private boolean[] m690d(int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    boolean[] zArr = new boolean[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        zArr[i2] = m709a((byte) 0, 0, true) != 0;
                    }
                    return zArr;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4125g("require field not exist.");
        }
    }

    /* renamed from: c */
    public final byte[] m691c(int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    byte[] bArr = new byte[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        bArr[i2] = m709a(bArr[0], 0, true);
                    }
                    return bArr;
                case 13:
                    C4096c c4096c2 = new C4096c();
                    m702a(c4096c2, this.f4736a);
                    if (c4096c2.f4605a != 0) {
                        throw new C4125g("type mismatch, tag: " + i + ", type: " + ((int) c4096c.f4605a) + ", " + ((int) c4096c2.f4605a));
                    }
                    int m705a2 = m705a(0, 0, true);
                    if (m705a2 < 0) {
                        throw new C4125g("invalid size, tag: " + i + ", type: " + ((int) c4096c.f4605a) + ", " + ((int) c4096c2.f4605a) + ", size: " + m705a2);
                    }
                    byte[] bArr2 = new byte[m705a2];
                    this.f4736a.get(bArr2);
                    return bArr2;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new C4125g("require field not exist.");
        }
    }

    /* renamed from: e */
    private short[] m689e(int i, boolean z) {
        short[] sArr = null;
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    sArr = new short[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        sArr[i2] = m696a(sArr[0], 0, true);
                    }
                    break;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        }
        return sArr;
    }

    /* renamed from: f */
    private int[] m688f(int i, boolean z) {
        int[] iArr = null;
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    iArr = new int[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        iArr[i2] = m705a(iArr[0], 0, true);
                    }
                    break;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        }
        return iArr;
    }

    /* renamed from: g */
    private long[] m687g(int i, boolean z) {
        long[] jArr = null;
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    jArr = new long[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        jArr[i2] = m703a(jArr[0], 0, true);
                    }
                    break;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        }
        return jArr;
    }

    /* renamed from: h */
    private float[] m686h(int i, boolean z) {
        float[] fArr = null;
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    fArr = new float[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        fArr[i2] = m707a(fArr[0], 0, true);
                    }
                    break;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        }
        return fArr;
    }

    /* renamed from: i */
    private double[] m685i(int i, boolean z) {
        double[] dArr = null;
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    dArr = new double[m705a];
                    for (int i2 = 0; i2 < m705a; i2++) {
                        dArr[i2] = m708a(dArr[0], 0, true);
                    }
                    break;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        }
        return dArr;
    }

    /* renamed from: a */
    private <T> T[] m694a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new C4125g("unable to get type of key and value.");
        }
        return (T[]) m692b(tArr[0], i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private <T> T[] m692b(T t, int i, boolean z) {
        if (m706a(i)) {
            C4096c c4096c = new C4096c();
            m702a(c4096c, this.f4736a);
            switch (c4096c.f4605a) {
                case 9:
                    int m705a = m705a(0, 0, true);
                    if (m705a < 0) {
                        throw new C4125g("size invalid: " + m705a);
                    }
                    T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), m705a));
                    for (int i2 = 0; i2 < m705a; i2++) {
                        tArr[i2] = m700a((C4126h) t, 0, true);
                    }
                    return tArr;
                default:
                    throw new C4125g("type mismatch.");
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        } else {
            return null;
        }
    }

    /* renamed from: a */
    public final AbstractC4128j m701a(AbstractC4128j abstractC4128j, int i, boolean z) {
        AbstractC4128j abstractC4128j2 = null;
        if (m706a(i)) {
            try {
                abstractC4128j2 = (AbstractC4128j) abstractC4128j.getClass().newInstance();
                C4096c c4096c = new C4096c();
                m702a(c4096c, this.f4736a);
                if (c4096c.f4605a != 10) {
                    throw new C4125g("type mismatch.");
                }
                abstractC4128j2.mo667a(this);
                m711a();
            } catch (Exception e) {
                throw new C4125g(e.getMessage());
            }
        } else if (z) {
            throw new C4125g("require field not exist.");
        }
        return abstractC4128j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> Object m700a(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(m709a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(m709a((byte) 0, i, z) != 0);
        } else if (t instanceof Short) {
            return Short.valueOf(m696a((short) 0, i, z));
        } else {
            if (t instanceof Integer) {
                return Integer.valueOf(m705a(0, i, z));
            }
            if (t instanceof Long) {
                return Long.valueOf(m703a(0L, i, z));
            }
            if (t instanceof Float) {
                return Float.valueOf(m707a(0.0f, i, z));
            }
            if (t instanceof Double) {
                return Double.valueOf(m708a(0.0d, i, z));
            }
            if (t instanceof String) {
                return String.valueOf(m693b(i, z));
            }
            if (t instanceof Map) {
                return (HashMap) m697a(new HashMap(), (Map) t, i, z);
            } else if (t instanceof List) {
                List list = (List) t;
                if (list == null || list.isEmpty()) {
                    return new ArrayList();
                }
                Object[] m692b = m692b(list.get(0), i, z);
                if (m692b == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : m692b) {
                    arrayList.add(obj);
                }
                return arrayList;
            } else if (t instanceof AbstractC4128j) {
                return m701a((AbstractC4128j) t, i, z);
            } else {
                if (t.getClass().isArray()) {
                    if ((t instanceof byte[]) || (t instanceof Byte[])) {
                        return m691c(i, z);
                    }
                    if (t instanceof boolean[]) {
                        return m690d(i, z);
                    }
                    if (t instanceof short[]) {
                        return m689e(i, z);
                    }
                    if (t instanceof int[]) {
                        return m688f(i, z);
                    }
                    if (t instanceof long[]) {
                        return m687g(i, z);
                    }
                    if (t instanceof float[]) {
                        return m686h(i, z);
                    }
                    if (t instanceof double[]) {
                        return m685i(i, z);
                    }
                    return m694a((Object[]) t, i, z);
                }
                throw new C4125g("read object error: unsupport type.");
            }
        }
    }

    /* renamed from: a */
    public final int m699a(String str) {
        this.f4737b = str;
        return 0;
    }
}
