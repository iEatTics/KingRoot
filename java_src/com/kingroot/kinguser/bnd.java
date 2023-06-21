package com.kingroot.kinguser;

import com.kingx.cloudsdk.AbstractC4027cb;
import com.kingx.cloudsdk.C4023br;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class bnd {
    private ByteBuffer bCN;
    private String bCO;

    public bnd(int i) {
        this.bCO = "GBK";
        this.bCN = ByteBuffer.allocate(i);
    }

    public bnd() {
        this(128);
    }

    public final ByteBuffer agg() {
        return this.bCN;
    }

    public final byte[] toByteArray() {
        byte[] bArr = new byte[this.bCN.position()];
        System.arraycopy(this.bCN.array(), 0, bArr, 0, this.bCN.position());
        return bArr;
    }

    /* renamed from: jR */
    private void m6244jR(int i) {
        if (this.bCN.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.bCN.capacity() + i) << 1);
            allocate.put(this.bCN.array(), 0, this.bCN.position());
            this.bCN = allocate;
        }
    }

    /* renamed from: a */
    private void m6257a(byte b, int i) {
        if (i < 15) {
            this.bCN.put((byte) ((i << 4) | b));
        } else if (i < 256) {
            this.bCN.put((byte) (b | 240));
            this.bCN.put((byte) i);
        } else {
            throw new C4023br("tag is too large: " + i);
        }
    }

    /* renamed from: a */
    public final void m6248a(boolean z, int i) {
        m6245b((byte) (z ? 1 : 0), i);
    }

    /* renamed from: b */
    public final void m6245b(byte b, int i) {
        m6244jR(3);
        if (b == 0) {
            m6257a((byte) 12, i);
            return;
        }
        m6257a((byte) 0, i);
        this.bCN.put(b);
    }

    /* renamed from: a */
    public final void m6249a(short s, int i) {
        m6244jR(4);
        if (s >= -128 && s <= 127) {
            m6245b((byte) s, i);
            return;
        }
        m6257a((byte) 1, i);
        this.bCN.putShort(s);
    }

    /* renamed from: am */
    public final void m6246am(int i, int i2) {
        m6244jR(6);
        if (i >= -32768 && i <= 32767) {
            m6249a((short) i, i2);
            return;
        }
        m6257a((byte) 2, i2);
        this.bCN.putInt(i);
    }

    /* renamed from: a */
    public final void m6254a(long j, int i) {
        m6244jR(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            m6246am((int) j, i);
            return;
        }
        m6257a((byte) 3, i);
        this.bCN.putLong(j);
    }

    /* renamed from: a */
    private void m6255a(float f, int i) {
        m6244jR(6);
        m6257a((byte) 4, i);
        this.bCN.putFloat(f);
    }

    /* renamed from: a */
    public final void m6256a(double d, int i) {
        m6244jR(10);
        m6257a((byte) 5, i);
        this.bCN.putDouble(d);
    }

    /* renamed from: T */
    public final void m6258T(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.bCO);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        m6244jR(bytes.length + 10);
        if (bytes.length > 255) {
            m6257a((byte) 7, i);
            this.bCN.putInt(bytes.length);
            this.bCN.put(bytes);
            return;
        }
        m6257a((byte) 6, i);
        this.bCN.put((byte) bytes.length);
        this.bCN.put(bytes);
    }

    /* renamed from: a */
    public final <K, V> void m6250a(Map<K, V> map, int i) {
        m6244jR(8);
        m6257a((byte) 8, i);
        m6246am(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                m6252a(entry.getKey(), 0);
                m6252a(entry.getValue(), 1);
            }
        }
    }

    /* renamed from: a */
    public final void m6247a(byte[] bArr, int i) {
        m6244jR(bArr.length + 8);
        m6257a((byte) 13, i);
        m6257a((byte) 0, 0);
        m6246am(bArr.length, 0);
        this.bCN.put(bArr);
    }

    /* renamed from: a */
    public final <T> void m6251a(Collection<T> collection, int i) {
        m6244jR(8);
        m6257a((byte) 9, i);
        m6246am(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t : collection) {
                m6252a(t, 0);
            }
        }
    }

    /* renamed from: a */
    public final void m6253a(AbstractC4027cb abstractC4027cb, int i) {
        m6244jR(2);
        m6257a((byte) 10, i);
        abstractC4027cb.mo1166a(this);
        m6244jR(2);
        m6257a((byte) 11, 0);
    }

    /* renamed from: a */
    public final void m6252a(Object obj, int i) {
        if (obj instanceof Byte) {
            m6245b(((Byte) obj).byteValue(), i);
        } else if (obj instanceof Boolean) {
            m6248a(((Boolean) obj).booleanValue(), i);
        } else if (obj instanceof Short) {
            m6249a(((Short) obj).shortValue(), i);
        } else if (obj instanceof Integer) {
            m6246am(((Integer) obj).intValue(), i);
        } else if (obj instanceof Long) {
            m6254a(((Long) obj).longValue(), i);
        } else if (obj instanceof Float) {
            m6255a(((Float) obj).floatValue(), i);
        } else if (obj instanceof Double) {
            m6256a(((Double) obj).doubleValue(), i);
        } else if (obj instanceof String) {
            m6258T((String) obj, i);
        } else if (obj instanceof Map) {
            m6250a((Map) obj, i);
        } else if (obj instanceof List) {
            m6251a((Collection) ((List) obj), i);
        } else if (obj instanceof AbstractC4027cb) {
            m6253a((AbstractC4027cb) obj, i);
        } else if (obj instanceof byte[]) {
            m6247a((byte[]) obj, i);
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(zArr.length, 0);
            for (boolean z : zArr) {
                m6248a(z, 0);
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(sArr.length, 0);
            for (short s : sArr) {
                m6249a(s, 0);
            }
        } else if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(iArr.length, 0);
            for (int i2 : iArr) {
                m6246am(i2, 0);
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(jArr.length, 0);
            for (long j : jArr) {
                m6254a(j, 0);
            }
        } else if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(fArr.length, 0);
            for (float f : fArr) {
                m6255a(f, 0);
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(dArr.length, 0);
            for (double d : dArr) {
                m6256a(d, 0);
            }
        } else if (obj.getClass().isArray()) {
            Object[] objArr = (Object[]) obj;
            m6244jR(8);
            m6257a((byte) 9, i);
            m6246am(objArr.length, 0);
            for (Object obj2 : objArr) {
                m6252a(obj2, 0);
            }
        } else if (obj instanceof Collection) {
            m6251a((Collection) obj, i);
        } else {
            throw new C4023br("write object error: unsupport type. " + obj.getClass());
        }
    }

    /* renamed from: mu */
    public final int m6243mu(String str) {
        this.bCO = str;
        return 0;
    }
}
