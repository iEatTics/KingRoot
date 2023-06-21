package com.kingroot.kinguser;

import com.king.uranus.AbstractC0404cS;
import com.king.uranus.C0403cP;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.mr */
/* loaded from: classes.dex */
public class C3324mr {

    /* renamed from: wg */
    private ByteBuffer f3148wg;

    /* renamed from: wh */
    protected String f3149wh;

    public C3324mr(int i) {
        this.f3149wh = "GBK";
        this.f3148wg = ByteBuffer.allocate(i);
    }

    public C3324mr() {
        this(128);
    }

    /* renamed from: eJ */
    public ByteBuffer m2982eJ() {
        return this.f3148wg;
    }

    /* renamed from: am */
    public void m2986am(int i) {
        if (this.f3148wg.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.f3148wg.capacity() + i) * 2);
            allocate.put(this.f3148wg.array(), 0, this.f3148wg.position());
            this.f3148wg = allocate;
        }
    }

    /* renamed from: a */
    public void m3004a(byte b, int i) {
        if (i < 15) {
            this.f3148wg.put((byte) ((i << 4) | b));
        } else if (i < 256) {
            this.f3148wg.put((byte) (b | 240));
            this.f3148wg.put((byte) i);
        } else {
            throw new C0403cP("tag is too large: " + i);
        }
    }

    /* renamed from: a */
    public void m2995a(boolean z, int i) {
        m2985b((byte) (z ? 1 : 0), i);
    }

    /* renamed from: b */
    public void m2985b(byte b, int i) {
        m2986am(3);
        if (b == 0) {
            m3004a((byte) 12, i);
            return;
        }
        m3004a((byte) 0, i);
        this.f3148wg.put(b);
    }

    /* renamed from: a */
    public void m2996a(short s, int i) {
        m2986am(4);
        if (s >= -128 && s <= 127) {
            m2985b((byte) s, i);
            return;
        }
        m3004a((byte) 1, i);
        this.f3148wg.putShort(s);
    }

    /* renamed from: e */
    public void m2983e(int i, int i2) {
        m2986am(6);
        if (i >= -32768 && i <= 32767) {
            m2996a((short) i, i2);
            return;
        }
        m3004a((byte) 2, i2);
        this.f3148wg.putInt(i);
    }

    /* renamed from: a */
    public void m3001a(long j, int i) {
        m2986am(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            m2983e((int) j, i);
            return;
        }
        m3004a((byte) 3, i);
        this.f3148wg.putLong(j);
    }

    /* renamed from: a */
    public void m3002a(float f, int i) {
        m2986am(6);
        m3004a((byte) 4, i);
        this.f3148wg.putFloat(f);
    }

    /* renamed from: a */
    public void m3003a(double d, int i) {
        m2986am(10);
        m3004a((byte) 5, i);
        this.f3148wg.putDouble(d);
    }

    /* renamed from: f */
    public void m2981f(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f3149wh);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        m2986am(bytes.length + 10);
        if (bytes.length > 255) {
            m3004a((byte) 7, i);
            this.f3148wg.putInt(bytes.length);
            this.f3148wg.put(bytes);
            return;
        }
        m3004a((byte) 6, i);
        this.f3148wg.put((byte) bytes.length);
        this.f3148wg.put(bytes);
    }

    /* renamed from: a */
    public <K, V> void m2997a(Map<K, V> map, int i) {
        m2986am(8);
        m3004a((byte) 8, i);
        m2983e(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                m2999a(entry.getKey(), 0);
                m2999a(entry.getValue(), 1);
            }
        }
    }

    /* renamed from: a */
    public void m2987a(boolean[] zArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(zArr.length, 0);
        for (boolean z : zArr) {
            m2995a(z, 0);
        }
    }

    /* renamed from: a */
    public void m2994a(byte[] bArr, int i) {
        m2986am(bArr.length + 8);
        m3004a((byte) 13, i);
        m3004a((byte) 0, 0);
        m2983e(bArr.length, 0);
        this.f3148wg.put(bArr);
    }

    /* renamed from: a */
    public void m2988a(short[] sArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(sArr.length, 0);
        for (short s : sArr) {
            m2996a(s, 0);
        }
    }

    /* renamed from: a */
    public void m2991a(int[] iArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(iArr.length, 0);
        for (int i2 : iArr) {
            m2983e(i2, 0);
        }
    }

    /* renamed from: a */
    public void m2990a(long[] jArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(jArr.length, 0);
        for (long j : jArr) {
            m3001a(j, 0);
        }
    }

    /* renamed from: a */
    public void m2992a(float[] fArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(fArr.length, 0);
        for (float f : fArr) {
            m3002a(f, 0);
        }
    }

    /* renamed from: a */
    public void m2993a(double[] dArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(dArr.length, 0);
        for (double d : dArr) {
            m3003a(d, 0);
        }
    }

    /* renamed from: a */
    private void m2989a(Object[] objArr, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(objArr.length, 0);
        for (Object obj : objArr) {
            m2999a(obj, 0);
        }
    }

    /* renamed from: a */
    public <T> void m2998a(Collection<T> collection, int i) {
        m2986am(8);
        m3004a((byte) 9, i);
        m2983e(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t : collection) {
                m2999a(t, 0);
            }
        }
    }

    /* renamed from: a */
    public void m3000a(AbstractC0404cS abstractC0404cS, int i) {
        m2986am(2);
        m3004a((byte) 10, i);
        abstractC0404cS.mo13632a(this);
        m2986am(2);
        m3004a((byte) 11, 0);
    }

    /* renamed from: a */
    public void m2999a(Object obj, int i) {
        if (obj instanceof Byte) {
            m2985b(((Byte) obj).byteValue(), i);
        } else if (obj instanceof Boolean) {
            m2995a(((Boolean) obj).booleanValue(), i);
        } else if (obj instanceof Short) {
            m2996a(((Short) obj).shortValue(), i);
        } else if (obj instanceof Integer) {
            m2983e(((Integer) obj).intValue(), i);
        } else if (obj instanceof Long) {
            m3001a(((Long) obj).longValue(), i);
        } else if (obj instanceof Float) {
            m3002a(((Float) obj).floatValue(), i);
        } else if (obj instanceof Double) {
            m3003a(((Double) obj).doubleValue(), i);
        } else if (obj instanceof String) {
            m2981f((String) obj, i);
        } else if (obj instanceof Map) {
            m2997a((Map) obj, i);
        } else if (obj instanceof List) {
            m2998a((Collection) ((List) obj), i);
        } else if (obj instanceof AbstractC0404cS) {
            m3000a((AbstractC0404cS) obj, i);
        } else if (obj instanceof byte[]) {
            m2994a((byte[]) obj, i);
        } else if (obj instanceof boolean[]) {
            m2987a((boolean[]) obj, i);
        } else if (obj instanceof short[]) {
            m2988a((short[]) obj, i);
        } else if (obj instanceof int[]) {
            m2991a((int[]) obj, i);
        } else if (obj instanceof long[]) {
            m2990a((long[]) obj, i);
        } else if (obj instanceof float[]) {
            m2992a((float[]) obj, i);
        } else if (obj instanceof double[]) {
            m2993a((double[]) obj, i);
        } else if (obj.getClass().isArray()) {
            m2989a((Object[]) obj, i);
        } else if (obj instanceof Collection) {
            m2998a((Collection) obj, i);
        } else {
            throw new C0403cP("write object error: unsupport type. " + obj.getClass());
        }
    }

    /* renamed from: by */
    public int m2984by(String str) {
        this.f3149wh = str;
        return 0;
    }
}
