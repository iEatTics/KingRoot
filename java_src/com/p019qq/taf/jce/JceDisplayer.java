package com.p019qq.taf.jce;

import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.qq.taf.jce.JceDisplayer */
/* loaded from: classes.dex */
public final class JceDisplayer {
    private StringBuilder bDP;
    private int bDQ;

    /* renamed from: mG */
    private void m1161mG(String str) {
        for (int i = 0; i < this.bDQ; i++) {
            this.bDP.append('\t');
        }
        if (str != null) {
            this.bDP.append(str).append(": ");
        }
    }

    public JceDisplayer(StringBuilder sb, int i) {
        this.bDQ = 0;
        this.bDP = sb;
        this.bDQ = i;
    }

    public JceDisplayer(StringBuilder sb) {
        this.bDQ = 0;
        this.bDP = sb;
    }

    public JceDisplayer display(boolean z, String str) {
        m1161mG(str);
        this.bDP.append(z ? 'T' : 'F').append('\n');
        return this;
    }

    public JceDisplayer display(byte b, String str) {
        m1161mG(str);
        this.bDP.append((int) b).append('\n');
        return this;
    }

    public JceDisplayer display(char c, String str) {
        m1161mG(str);
        this.bDP.append(c).append('\n');
        return this;
    }

    public JceDisplayer display(short s, String str) {
        m1161mG(str);
        this.bDP.append((int) s).append('\n');
        return this;
    }

    public JceDisplayer display(int i, String str) {
        m1161mG(str);
        this.bDP.append(i).append('\n');
        return this;
    }

    public JceDisplayer display(long j, String str) {
        m1161mG(str);
        this.bDP.append(j).append('\n');
        return this;
    }

    public JceDisplayer display(float f, String str) {
        m1161mG(str);
        this.bDP.append(f).append('\n');
        return this;
    }

    public JceDisplayer display(double d, String str) {
        m1161mG(str);
        this.bDP.append(d).append('\n');
        return this;
    }

    public JceDisplayer display(String str, String str2) {
        m1161mG(str2);
        if (str == null) {
            this.bDP.append("null").append('\n');
        } else {
            this.bDP.append(str).append('\n');
        }
        return this;
    }

    public JceDisplayer display(byte[] bArr, String str) {
        m1161mG(str);
        if (bArr == null) {
            this.bDP.append("null").append('\n');
        } else if (bArr.length == 0) {
            this.bDP.append(bArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(bArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (byte b : bArr) {
                jceDisplayer.display(b, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public JceDisplayer display(char[] cArr, String str) {
        m1161mG(str);
        if (cArr == null) {
            this.bDP.append("null").append('\n');
        } else if (cArr.length == 0) {
            this.bDP.append(cArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(cArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (char c : cArr) {
                jceDisplayer.display(c, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public JceDisplayer display(short[] sArr, String str) {
        m1161mG(str);
        if (sArr == null) {
            this.bDP.append("null").append('\n');
        } else if (sArr.length == 0) {
            this.bDP.append(sArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(sArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (short s : sArr) {
                jceDisplayer.display(s, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public JceDisplayer display(int[] iArr, String str) {
        m1161mG(str);
        if (iArr == null) {
            this.bDP.append("null").append('\n');
        } else if (iArr.length == 0) {
            this.bDP.append(iArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(iArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (int i : iArr) {
                jceDisplayer.display(i, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public JceDisplayer display(long[] jArr, String str) {
        m1161mG(str);
        if (jArr == null) {
            this.bDP.append("null").append('\n');
        } else if (jArr.length == 0) {
            this.bDP.append(jArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(jArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (long j : jArr) {
                jceDisplayer.display(j, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public JceDisplayer display(float[] fArr, String str) {
        m1161mG(str);
        if (fArr == null) {
            this.bDP.append("null").append('\n');
        } else if (fArr.length == 0) {
            this.bDP.append(fArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(fArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (float f : fArr) {
                jceDisplayer.display(f, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public JceDisplayer display(double[] dArr, String str) {
        m1161mG(str);
        if (dArr == null) {
            this.bDP.append("null").append('\n');
        } else if (dArr.length == 0) {
            this.bDP.append(dArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(dArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (double d : dArr) {
                jceDisplayer.display(d, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    public <K, V> JceDisplayer display(Map<K, V> map, String str) {
        m1161mG(str);
        if (map == null) {
            this.bDP.append("null").append('\n');
        } else if (map.isEmpty()) {
            this.bDP.append(map.size()).append(", {}").append('\n');
        } else {
            this.bDP.append(map.size()).append(", {").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            JceDisplayer jceDisplayer2 = new JceDisplayer(this.bDP, this.bDQ + 2);
            for (Map.Entry<K, V> entry : map.entrySet()) {
                jceDisplayer.display('(', (String) null);
                jceDisplayer2.display((JceDisplayer) entry.getKey(), (String) null);
                jceDisplayer2.display((JceDisplayer) entry.getValue(), (String) null);
                jceDisplayer.display(')', (String) null);
            }
            display('}', (String) null);
        }
        return this;
    }

    public <T> JceDisplayer display(T[] tArr, String str) {
        m1161mG(str);
        if (tArr == null) {
            this.bDP.append("null").append('\n');
        } else if (tArr.length == 0) {
            this.bDP.append(tArr.length).append(", []").append('\n');
        } else {
            this.bDP.append(tArr.length).append(", [").append('\n');
            JceDisplayer jceDisplayer = new JceDisplayer(this.bDP, this.bDQ + 1);
            for (T t : tArr) {
                jceDisplayer.display((JceDisplayer) t, (String) null);
            }
            display(']', (String) null);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> JceDisplayer display(Collection<T> collection, String str) {
        if (collection == null) {
            m1161mG(str);
            this.bDP.append("null").append('\t');
            return this;
        }
        return display(collection.toArray(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> JceDisplayer display(T t, String str) {
        if (t == null) {
            this.bDP.append("null").append('\n');
        } else if (t instanceof Byte) {
            display(((Byte) t).byteValue(), str);
        } else if (t instanceof Boolean) {
            display(((Boolean) t).booleanValue(), str);
        } else if (t instanceof Short) {
            display(((Short) t).shortValue(), str);
        } else if (t instanceof Integer) {
            display(((Integer) t).intValue(), str);
        } else if (t instanceof Long) {
            display(((Long) t).longValue(), str);
        } else if (t instanceof Float) {
            display(((Float) t).floatValue(), str);
        } else if (t instanceof Double) {
            display(((Double) t).doubleValue(), str);
        } else if (t instanceof String) {
            display((String) t, str);
        } else if (t instanceof Map) {
            display((Map) t, str);
        } else if (t instanceof List) {
            display((Collection) ((List) t), str);
        } else if (t instanceof JceStruct) {
            display((JceStruct) t, str);
        } else if (t instanceof byte[]) {
            display((byte[]) t, str);
        } else if (t instanceof boolean[]) {
            display((JceDisplayer) ((boolean[]) t), str);
        } else if (t instanceof short[]) {
            display((short[]) t, str);
        } else if (t instanceof int[]) {
            display((int[]) t, str);
        } else if (t instanceof long[]) {
            display((long[]) t, str);
        } else if (t instanceof float[]) {
            display((float[]) t, str);
        } else if (t instanceof double[]) {
            display((double[]) t, str);
        } else if (t.getClass().isArray()) {
            display((Object[]) t, str);
        } else {
            throw new JceEncodeException("write object error: unsupport type.");
        }
        return this;
    }

    public JceDisplayer display(JceStruct jceStruct, String str) {
        display('{', str);
        if (jceStruct == null) {
            this.bDP.append('\t').append("null");
        } else {
            jceStruct.display(this.bDP, this.bDQ + 1);
        }
        display('}', (String) null);
        return this;
    }

    public static void main(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(1.2d);
        System.out.println(sb.toString());
    }
}
