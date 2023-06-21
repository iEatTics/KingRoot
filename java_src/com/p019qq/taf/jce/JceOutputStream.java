package com.p019qq.taf.jce;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.qq.taf.jce.JceOutputStream */
/* loaded from: classes.dex */
public class JceOutputStream {
    private ByteBuffer bDR;
    protected String bDS;

    public JceOutputStream(ByteBuffer byteBuffer) {
        this.bDS = "GBK";
        this.bDR = byteBuffer;
    }

    public JceOutputStream(int i) {
        this.bDS = "GBK";
        this.bDR = ByteBuffer.allocate(i);
    }

    public JceOutputStream() {
        this(128);
    }

    public ByteBuffer getByteBuffer() {
        return this.bDR;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[this.bDR.position()];
        System.arraycopy(this.bDR.array(), 0, bArr, 0, this.bDR.position());
        return bArr;
    }

    public void reserve(int i) {
        if (this.bDR.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.bDR.capacity() + i) * 2);
            allocate.put(this.bDR.array(), 0, this.bDR.position());
            this.bDR = allocate;
        }
    }

    public void writeHead(byte b, int i) {
        if (i < 15) {
            this.bDR.put((byte) ((i << 4) | b));
        } else if (i < 256) {
            this.bDR.put((byte) (b | 240));
            this.bDR.put((byte) i);
        } else {
            throw new JceEncodeException("tag is too large: " + i);
        }
    }

    public void write(boolean z, int i) {
        write((byte) (z ? 1 : 0), i);
    }

    public void write(byte b, int i) {
        reserve(3);
        if (b == 0) {
            writeHead((byte) 12, i);
            return;
        }
        writeHead((byte) 0, i);
        this.bDR.put(b);
    }

    public void write(short s, int i) {
        reserve(4);
        if (s >= -128 && s <= 127) {
            write((byte) s, i);
            return;
        }
        writeHead((byte) 1, i);
        this.bDR.putShort(s);
    }

    public void write(int i, int i2) {
        reserve(6);
        if (i >= -32768 && i <= 32767) {
            write((short) i, i2);
            return;
        }
        writeHead((byte) 2, i2);
        this.bDR.putInt(i);
    }

    public void write(long j, int i) {
        reserve(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            write((int) j, i);
            return;
        }
        writeHead((byte) 3, i);
        this.bDR.putLong(j);
    }

    public void write(float f, int i) {
        reserve(6);
        writeHead((byte) 4, i);
        this.bDR.putFloat(f);
    }

    public void write(double d, int i) {
        reserve(10);
        writeHead((byte) 5, i);
        this.bDR.putDouble(d);
    }

    public void writeStringByte(String str, int i) {
        byte[] hexStr2Bytes = HexUtil.hexStr2Bytes(str);
        reserve(hexStr2Bytes.length + 10);
        if (hexStr2Bytes.length > 255) {
            writeHead((byte) 7, i);
            this.bDR.putInt(hexStr2Bytes.length);
            this.bDR.put(hexStr2Bytes);
            return;
        }
        writeHead((byte) 6, i);
        this.bDR.put((byte) hexStr2Bytes.length);
        this.bDR.put(hexStr2Bytes);
    }

    public void writeByteString(String str, int i) {
        reserve(str.length() + 10);
        byte[] hexStr2Bytes = HexUtil.hexStr2Bytes(str);
        if (hexStr2Bytes.length > 255) {
            writeHead((byte) 7, i);
            this.bDR.putInt(hexStr2Bytes.length);
            this.bDR.put(hexStr2Bytes);
            return;
        }
        writeHead((byte) 6, i);
        this.bDR.put((byte) hexStr2Bytes.length);
        this.bDR.put(hexStr2Bytes);
    }

    public void write(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.bDS);
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        reserve(bytes.length + 10);
        if (bytes.length > 255) {
            writeHead((byte) 7, i);
            this.bDR.putInt(bytes.length);
            this.bDR.put(bytes);
            return;
        }
        writeHead((byte) 6, i);
        this.bDR.put((byte) bytes.length);
        this.bDR.put(bytes);
    }

    public <K, V> void write(Map<K, V> map, int i) {
        reserve(8);
        writeHead((byte) 8, i);
        write(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                write(entry.getKey(), 0);
                write(entry.getValue(), 1);
            }
        }
    }

    public void write(boolean[] zArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(zArr.length, 0);
        for (boolean z : zArr) {
            write(z, 0);
        }
    }

    public void write(byte[] bArr, int i) {
        reserve(bArr.length + 8);
        writeHead((byte) 13, i);
        writeHead((byte) 0, 0);
        write(bArr.length, 0);
        this.bDR.put(bArr);
    }

    public void write(short[] sArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(sArr.length, 0);
        for (short s : sArr) {
            write(s, 0);
        }
    }

    public void write(int[] iArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(iArr.length, 0);
        for (int i2 : iArr) {
            write(i2, 0);
        }
    }

    public void write(long[] jArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(jArr.length, 0);
        for (long j : jArr) {
            write(j, 0);
        }
    }

    public void write(float[] fArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(fArr.length, 0);
        for (float f : fArr) {
            write(f, 0);
        }
    }

    public void write(double[] dArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(dArr.length, 0);
        for (double d : dArr) {
            write(d, 0);
        }
    }

    public <T> void write(T[] tArr, int i) {
        m1156b(tArr, i);
    }

    /* renamed from: b */
    private void m1156b(Object[] objArr, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(objArr.length, 0);
        for (Object obj : objArr) {
            write(obj, 0);
        }
    }

    public <T> void write(Collection<T> collection, int i) {
        reserve(8);
        writeHead((byte) 9, i);
        write(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            for (T t : collection) {
                write(t, 0);
            }
        }
    }

    public void write(JceStruct jceStruct, int i) {
        reserve(2);
        writeHead((byte) 10, i);
        jceStruct.writeTo(this);
        reserve(2);
        writeHead((byte) 11, 0);
    }

    public void write(Byte b, int i) {
        write(b.byteValue(), i);
    }

    public void write(Boolean bool, int i) {
        write(bool.booleanValue(), i);
    }

    public void write(Short sh, int i) {
        write(sh.shortValue(), i);
    }

    public void write(Integer num, int i) {
        write(num.intValue(), i);
    }

    public void write(Long l, int i) {
        write(l.longValue(), i);
    }

    public void write(Float f, int i) {
        write(f.floatValue(), i);
    }

    public void write(Double d, int i) {
        write(d.doubleValue(), i);
    }

    public void write(Object obj, int i) {
        if (obj instanceof Byte) {
            write(((Byte) obj).byteValue(), i);
        } else if (obj instanceof Boolean) {
            write(((Boolean) obj).booleanValue(), i);
        } else if (obj instanceof Short) {
            write(((Short) obj).shortValue(), i);
        } else if (obj instanceof Integer) {
            write(((Integer) obj).intValue(), i);
        } else if (obj instanceof Long) {
            write(((Long) obj).longValue(), i);
        } else if (obj instanceof Float) {
            write(((Float) obj).floatValue(), i);
        } else if (obj instanceof Double) {
            write(((Double) obj).doubleValue(), i);
        } else if (obj instanceof String) {
            write((String) obj, i);
        } else if (obj instanceof Map) {
            write((Map) obj, i);
        } else if (obj instanceof List) {
            write((Collection) ((List) obj), i);
        } else if (obj instanceof JceStruct) {
            write((JceStruct) obj, i);
        } else if (obj instanceof byte[]) {
            write((byte[]) obj, i);
        } else if (obj instanceof boolean[]) {
            write((boolean[]) obj, i);
        } else if (obj instanceof short[]) {
            write((short[]) obj, i);
        } else if (obj instanceof int[]) {
            write((int[]) obj, i);
        } else if (obj instanceof long[]) {
            write((long[]) obj, i);
        } else if (obj instanceof float[]) {
            write((float[]) obj, i);
        } else if (obj instanceof double[]) {
            write((double[]) obj, i);
        } else if (obj.getClass().isArray()) {
            m1156b((Object[]) obj, i);
        } else if (obj instanceof Collection) {
            write((Collection) obj, i);
        } else {
            throw new JceEncodeException("write object error: unsupport type. " + obj.getClass());
        }
    }

    public int setServerEncoding(String str) {
        this.bDS = str;
        return 0;
    }

    public static void main(String[] strArr) {
        JceOutputStream jceOutputStream = new JceOutputStream();
        jceOutputStream.write(1311768467283714885L, 0);
        System.out.println(HexUtil.bytes2HexStr(jceOutputStream.getByteBuffer().array()));
        System.out.println(Arrays.toString(jceOutputStream.toByteArray()));
    }
}
