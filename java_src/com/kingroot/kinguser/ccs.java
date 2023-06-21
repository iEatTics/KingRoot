package com.kingroot.kinguser;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import sm.AbstractC4399ag;
import sm.C4398ad;
/* loaded from: classes.dex */
public class ccs {

    /* renamed from: a */
    protected String f2251a;
    private ByteBuffer bXj;

    public ccs(int i) {
        this.f2251a = "GBK";
        this.bXj = ByteBuffer.allocate(i);
    }

    public ccs() {
        this(128);
    }

    /* renamed from: a */
    public ByteBuffer m4921a() {
        return this.bXj;
    }

    /* renamed from: a */
    public void m4917a(int i) {
        if (this.bXj.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.bXj.capacity() + i) * 2);
            allocate.put(this.bXj.array(), 0, this.bXj.position());
            this.bXj = allocate;
        }
    }

    /* renamed from: a */
    public void m4920a(byte b, int i) {
        if (i < 15) {
            this.bXj.put((byte) ((i << 4) | b));
        } else if (i < 256) {
            this.bXj.put((byte) (b | 240));
            this.bXj.put((byte) i);
        } else {
            throw new C4398ad("tag is too large: " + i);
        }
    }

    /* renamed from: a */
    public void m4907a(boolean z, int i) {
        m4898b((byte) (z ? 1 : 0), i);
    }

    /* renamed from: b */
    public void m4898b(byte b, int i) {
        m4917a(3);
        if (b == 0) {
            m4920a((byte) 12, i);
            return;
        }
        m4920a((byte) 0, i);
        this.bXj.put(b);
    }

    /* renamed from: a */
    public void m4908a(short s, int i) {
        m4917a(4);
        if (s >= -128 && s <= 127) {
            m4898b((byte) s, i);
            return;
        }
        m4920a((byte) 1, i);
        this.bXj.putShort(s);
    }

    /* renamed from: a */
    public void m4916a(int i, int i2) {
        m4917a(6);
        if (i >= -32768 && i <= 32767) {
            m4908a((short) i, i2);
            return;
        }
        m4920a((byte) 2, i2);
        this.bXj.putInt(i);
    }

    /* renamed from: a */
    public void m4915a(long j, int i) {
        m4917a(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            m4916a((int) j, i);
            return;
        }
        m4920a((byte) 3, i);
        this.bXj.putLong(j);
    }

    /* renamed from: a */
    public void m4918a(float f, int i) {
        m4917a(6);
        m4920a((byte) 4, i);
        this.bXj.putFloat(f);
    }

    /* renamed from: a */
    public void m4919a(double d, int i) {
        m4917a(10);
        m4920a((byte) 5, i);
        this.bXj.putDouble(d);
    }

    /* renamed from: a */
    public void m4912a(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f2251a);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        m4917a(bytes.length + 10);
        if (bytes.length > 255) {
            m4920a((byte) 7, i);
            this.bXj.putInt(bytes.length);
            this.bXj.put(bytes);
            return;
        }
        m4920a((byte) 6, i);
        this.bXj.put((byte) bytes.length);
        this.bXj.put(bytes);
    }

    /* renamed from: a */
    public <K, V> void m4910a(Map<K, V> map, int i) {
        m4917a(8);
        m4920a((byte) 8, i);
        m4916a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                m4914a(entry.getKey(), 0);
                m4914a(entry.getValue(), 1);
            }
        }
    }

    /* renamed from: a */
    public void m4899a(boolean[] zArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(zArr.length, 0);
        for (boolean z : zArr) {
            m4907a(z, 0);
        }
    }

    /* renamed from: a */
    public void m4906a(byte[] bArr, int i) {
        m4917a(bArr.length + 8);
        m4920a((byte) 13, i);
        m4920a((byte) 0, 0);
        m4916a(bArr.length, 0);
        this.bXj.put(bArr);
    }

    /* renamed from: a */
    public void m4900a(short[] sArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(sArr.length, 0);
        for (short s : sArr) {
            m4908a(s, 0);
        }
    }

    /* renamed from: a */
    public void m4903a(int[] iArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(iArr.length, 0);
        for (int i2 : iArr) {
            m4916a(i2, 0);
        }
    }

    /* renamed from: a */
    public void m4902a(long[] jArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(jArr.length, 0);
        for (long j : jArr) {
            m4915a(j, 0);
        }
    }

    /* renamed from: a */
    public void m4904a(float[] fArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(fArr.length, 0);
        for (float f : fArr) {
            m4918a(f, 0);
        }
    }

    /* renamed from: a */
    public void m4905a(double[] dArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(dArr.length, 0);
        for (double d : dArr) {
            m4919a(d, 0);
        }
    }

    /* renamed from: a */
    private void m4901a(Object[] objArr, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(objArr.length, 0);
        for (Object obj : objArr) {
            m4914a(obj, 0);
        }
    }

    /* renamed from: a */
    public <T> void m4911a(Collection<T> collection, int i) {
        m4917a(8);
        m4920a((byte) 9, i);
        m4916a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t : collection) {
                m4914a(t, 0);
            }
        }
    }

    /* renamed from: a */
    public void m4909a(AbstractC4399ag abstractC4399ag, int i) {
        m4917a(2);
        m4920a((byte) 10, i);
        abstractC4399ag.mo22a(this);
        m4917a(2);
        m4920a((byte) 11, 0);
    }

    /* renamed from: a */
    public void m4914a(Object obj, int i) {
        if (obj instanceof Byte) {
            m4898b(((Byte) obj).byteValue(), i);
        } else if (obj instanceof Boolean) {
            m4907a(((Boolean) obj).booleanValue(), i);
        } else if (obj instanceof Short) {
            m4908a(((Short) obj).shortValue(), i);
        } else if (obj instanceof Integer) {
            m4916a(((Integer) obj).intValue(), i);
        } else if (obj instanceof Long) {
            m4915a(((Long) obj).longValue(), i);
        } else if (obj instanceof Float) {
            m4918a(((Float) obj).floatValue(), i);
        } else if (obj instanceof Double) {
            m4919a(((Double) obj).doubleValue(), i);
        } else if (obj instanceof String) {
            m4912a((String) obj, i);
        } else if (obj instanceof Map) {
            m4910a((Map) obj, i);
        } else if (obj instanceof List) {
            m4911a((Collection) ((List) obj), i);
        } else if (obj instanceof AbstractC4399ag) {
            m4909a((AbstractC4399ag) obj, i);
        } else if (obj instanceof byte[]) {
            m4906a((byte[]) obj, i);
        } else if (obj instanceof boolean[]) {
            m4899a((boolean[]) obj, i);
        } else if (obj instanceof short[]) {
            m4900a((short[]) obj, i);
        } else if (obj instanceof int[]) {
            m4903a((int[]) obj, i);
        } else if (obj instanceof long[]) {
            m4902a((long[]) obj, i);
        } else if (obj instanceof float[]) {
            m4904a((float[]) obj, i);
        } else if (obj instanceof double[]) {
            m4905a((double[]) obj, i);
        } else if (obj.getClass().isArray()) {
            m4901a((Object[]) obj, i);
        } else if (obj instanceof Collection) {
            m4911a((Collection) obj, i);
        } else {
            throw new C4398ad("write object error: unsupport type. " + obj.getClass());
        }
    }

    /* renamed from: a */
    public int m4913a(String str) {
        this.f2251a = str;
        return 0;
    }
}
