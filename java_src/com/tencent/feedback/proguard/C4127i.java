package com.tencent.feedback.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.tencent.feedback.proguard.i */
/* loaded from: classes.dex */
public final class C4127i {

    /* renamed from: a */
    private ByteBuffer f4738a;

    /* renamed from: b */
    private String f4739b;

    public C4127i(int i) {
        this.f4739b = "GBK";
        this.f4738a = ByteBuffer.allocate(i);
    }

    public C4127i() {
        this(128);
    }

    /* renamed from: a */
    public final ByteBuffer m684a() {
        return this.f4738a;
    }

    /* renamed from: b */
    public final byte[] m670b() {
        byte[] bArr = new byte[this.f4738a.position()];
        System.arraycopy(this.f4738a.array(), 0, bArr, 0, this.f4738a.position());
        return bArr;
    }

    /* renamed from: a */
    private void m682a(int i) {
        if (this.f4738a.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.f4738a.capacity() + i) << 1);
            allocate.put(this.f4738a.array(), 0, this.f4738a.position());
            this.f4738a = allocate;
        }
    }

    /* renamed from: b */
    private void m669b(byte b, int i) {
        if (i < 15) {
            this.f4738a.put((byte) ((i << 4) | b));
        } else if (i < 256) {
            this.f4738a.put((byte) (b | 240));
            this.f4738a.put((byte) i);
        } else {
            throw new C4120b("tag is too large: " + i);
        }
    }

    /* renamed from: a */
    public final void m672a(boolean z, int i) {
        m683a((byte) (z ? 1 : 0), i);
    }

    /* renamed from: a */
    public final void m683a(byte b, int i) {
        m682a(3);
        if (b == 0) {
            m669b((byte) 12, i);
            return;
        }
        m669b((byte) 0, i);
        this.f4738a.put(b);
    }

    /* renamed from: a */
    public final void m673a(short s, int i) {
        m682a(4);
        if (s >= -128 && s <= 127) {
            m683a((byte) s, i);
            return;
        }
        m669b((byte) 1, i);
        this.f4738a.putShort(s);
    }

    /* renamed from: a */
    public final void m681a(int i, int i2) {
        m682a(6);
        if (i >= -32768 && i <= 32767) {
            m673a((short) i, i2);
            return;
        }
        m669b((byte) 2, i2);
        this.f4738a.putInt(i);
    }

    /* renamed from: a */
    public final void m680a(long j, int i) {
        m682a(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            m681a((int) j, i);
            return;
        }
        m669b((byte) 3, i);
        this.f4738a.putLong(j);
    }

    /* renamed from: a */
    public final void m676a(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f4739b);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        m682a(bytes.length + 10);
        if (bytes.length > 255) {
            m669b((byte) 7, i);
            this.f4738a.putInt(bytes.length);
            this.f4738a.put(bytes);
            return;
        }
        m669b((byte) 6, i);
        this.f4738a.put((byte) bytes.length);
        this.f4738a.put(bytes);
    }

    /* renamed from: a */
    public final <K, V> void m674a(Map<K, V> map, int i) {
        m682a(8);
        m669b((byte) 8, i);
        m681a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                m678a(entry.getKey(), 0);
                m678a(entry.getValue(), 1);
            }
        }
    }

    /* renamed from: a */
    public final void m671a(byte[] bArr, int i) {
        m682a(bArr.length + 8);
        m669b((byte) 13, i);
        m669b((byte) 0, 0);
        m681a(bArr.length, 0);
        this.f4738a.put(bArr);
    }

    /* renamed from: a */
    public final <T> void m675a(Collection<T> collection, int i) {
        m682a(8);
        m669b((byte) 9, i);
        m681a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t : collection) {
                m678a(t, 0);
            }
        }
    }

    /* renamed from: a */
    public final void m679a(AbstractC4128j abstractC4128j, int i) {
        m682a(2);
        m669b((byte) 10, i);
        abstractC4128j.mo666a(this);
        m682a(2);
        m669b((byte) 11, 0);
    }

    /* renamed from: a */
    public final void m678a(Object obj, int i) {
        if (obj instanceof Byte) {
            m683a(((Byte) obj).byteValue(), i);
        } else if (obj instanceof Boolean) {
            m683a((byte) (((Boolean) obj).booleanValue() ? 1 : 0), i);
        } else if (obj instanceof Short) {
            m673a(((Short) obj).shortValue(), i);
        } else if (obj instanceof Integer) {
            m681a(((Integer) obj).intValue(), i);
        } else if (obj instanceof Long) {
            m680a(((Long) obj).longValue(), i);
        } else if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            m682a(6);
            m669b((byte) 4, i);
            this.f4738a.putFloat(floatValue);
        } else if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            m682a(10);
            m669b((byte) 5, i);
            this.f4738a.putDouble(doubleValue);
        } else if (obj instanceof String) {
            m676a((String) obj, i);
        } else if (obj instanceof Map) {
            m674a((Map) obj, i);
        } else if (obj instanceof List) {
            m675a((Collection) ((List) obj), i);
        } else if (obj instanceof AbstractC4128j) {
            m682a(2);
            m669b((byte) 10, i);
            ((AbstractC4128j) obj).mo666a(this);
            m682a(2);
            m669b((byte) 11, 0);
        } else if (obj instanceof byte[]) {
            m671a((byte[]) obj, i);
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(zArr.length, 0);
            for (boolean z : zArr) {
                m683a((byte) (z ? 1 : 0), 0);
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(sArr.length, 0);
            for (short s : sArr) {
                m673a(s, 0);
            }
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(iArr.length, 0);
            for (int i2 : iArr) {
                m681a(i2, 0);
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(jArr.length, 0);
            for (long j : jArr) {
                m680a(j, 0);
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(fArr.length, 0);
            for (float f : fArr) {
                m682a(6);
                m669b((byte) 4, 0);
                this.f4738a.putFloat(f);
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(dArr.length, 0);
            for (double d : dArr) {
                m682a(10);
                m669b((byte) 5, 0);
                this.f4738a.putDouble(d);
            }
        } else if (obj.getClass().isArray()) {
            Object[] objArr = (Object[]) obj;
            m682a(8);
            m669b((byte) 9, i);
            m681a(objArr.length, 0);
            for (Object obj2 : objArr) {
                m678a(obj2, 0);
            }
        } else if (obj instanceof Collection) {
            m675a((Collection) obj, i);
        } else {
            throw new C4120b("write object error: unsupport type. " + obj.getClass());
        }
    }

    /* renamed from: a */
    public final int m677a(String str) {
        this.f4739b = str;
        return 0;
    }
}
