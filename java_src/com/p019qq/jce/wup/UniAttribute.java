package com.p019qq.jce.wup;

import com.kingroot.kinguser.bni;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.qq.jce.wup.UniAttribute */
/* loaded from: classes.dex */
public class UniAttribute extends bni {
    protected HashMap<String, byte[]> bDy = null;
    private HashMap<String, Object> bDv = new HashMap<>();
    JceInputStream bDx = new JceInputStream();

    @Override // com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object get(String str) {
        return super.get(str);
    }

    @Override // com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object get(String str, Object obj) {
        return super.get(str, obj);
    }

    @Override // com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ String getEncodeName() {
        return super.getEncodeName();
    }

    @Override // com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ Object getJceStruct(String str) {
        return super.getJceStruct(str);
    }

    @Override // com.kingroot.kinguser.bni
    public /* bridge */ /* synthetic */ void setEncodeName(String str) {
        super.setEncodeName(str);
    }

    public void useVersion3() {
        this.bDy = new HashMap<>();
    }

    @Override // com.kingroot.kinguser.bni
    public void clearCacheData() {
        this.bDv.clear();
    }

    @Override // com.kingroot.kinguser.bni
    public Set<String> getKeySet() {
        return this.bDy != null ? Collections.unmodifiableSet(this.bDy.keySet()) : Collections.unmodifiableSet(this.bDt.keySet());
    }

    @Override // com.kingroot.kinguser.bni
    public boolean isEmpty() {
        return this.bDy != null ? this.bDy.isEmpty() : this.bDt.isEmpty();
    }

    @Override // com.kingroot.kinguser.bni
    public int size() {
        return this.bDy != null ? this.bDy.size() : this.bDt.size();
    }

    @Override // com.kingroot.kinguser.bni
    public boolean containsKey(String str) {
        return this.bDy != null ? this.bDy.containsKey(str) : this.bDt.containsKey(str);
    }

    @Override // com.kingroot.kinguser.bni
    public <T> void put(String str, T t) {
        if (this.bDy != null) {
            if (str == null) {
                throw new IllegalArgumentException("put key can not is null");
            }
            if (t == null) {
                throw new IllegalArgumentException("put value can not is null");
            }
            if (t instanceof Set) {
                throw new IllegalArgumentException("can not support Set");
            }
            JceOutputStream jceOutputStream = new JceOutputStream();
            jceOutputStream.setServerEncoding(this.bDw);
            jceOutputStream.write(t, 0);
            this.bDy.put(str, JceUtil.getJceBufArray(jceOutputStream.getByteBuffer()));
            return;
        }
        super.put(str, t);
    }

    public <T> T getJceStruct(String str, T t) {
        if (!this.bDy.containsKey(str)) {
            return null;
        }
        if (this.bDv.containsKey(str)) {
            return (T) this.bDv.get(str);
        }
        try {
            T t2 = (T) m1163b(this.bDy.get(str), t);
            if (t2 != null) {
                m1162g(str, t2);
                return t2;
            }
            return t2;
        } catch (Exception e) {
            throw new ObjectCreateException(e);
        }
    }

    public <T> T getByClass(String str, T t) {
        byte[] bArr;
        if (this.bDy != null) {
            if (this.bDy.containsKey(str)) {
                if (this.bDv.containsKey(str)) {
                    return (T) this.bDv.get(str);
                }
                try {
                    T t2 = (T) m1163b(this.bDy.get(str), t);
                    if (t2 != null) {
                        m1162g(str, t2);
                        return t2;
                    }
                    return t2;
                } catch (Exception e) {
                    throw new ObjectCreateException(e);
                }
            }
            return null;
        } else if (this.bDt.containsKey(str)) {
            if (this.bDv.containsKey(str)) {
                return (T) this.bDv.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.bDt.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.bDx.wrap(bArr);
                this.bDx.setServerEncoding(this.bDw);
                T t3 = (T) this.bDx.read((JceInputStream) t, 0, true);
                m1162g(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new ObjectCreateException(e2);
            }
        } else {
            return null;
        }
    }

    public <T> T getByClass(String str, T t, T t2) {
        byte[] bArr;
        if (this.bDy != null) {
            if (this.bDy.containsKey(str)) {
                if (this.bDv.containsKey(str)) {
                    return (T) this.bDv.get(str);
                }
                try {
                    T t3 = (T) m1163b(this.bDy.get(str), t);
                    if (t3 != null) {
                        m1162g(str, t3);
                        return t3;
                    }
                    return t3;
                } catch (Exception e) {
                    throw new ObjectCreateException(e);
                }
            }
            return t2;
        } else if (this.bDt.containsKey(str)) {
            if (this.bDv.containsKey(str)) {
                return (T) this.bDv.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.bDt.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.bDx.wrap(bArr);
                this.bDx.setServerEncoding(this.bDw);
                T t4 = (T) this.bDx.read((JceInputStream) t, 0, true);
                m1162g(str, t4);
                return t4;
            } catch (Exception e2) {
                throw new ObjectCreateException(e2);
            }
        } else {
            return t2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T get(String str, T t, Object obj) {
        return !this.bDy.containsKey(str) ? obj : (T) getByClass(str, t);
    }

    /* renamed from: b */
    private Object m1163b(byte[] bArr, Object obj) {
        this.bDx.wrap(bArr);
        this.bDx.setServerEncoding(this.bDw);
        return this.bDx.read((JceInputStream) obj, 0, true);
    }

    /* renamed from: g */
    private void m1162g(String str, Object obj) {
        this.bDv.put(str, obj);
    }

    @Override // com.kingroot.kinguser.bni
    public <T> T remove(String str) {
        if (this.bDy != null) {
            if (this.bDy.containsKey(str)) {
                this.bDy.remove(str);
                return null;
            }
            return null;
        }
        return (T) super.remove(str);
    }

    public <T> T remove(String str, T t) {
        if (this.bDy.containsKey(str)) {
            if (t != null) {
                return (T) m1163b(this.bDy.remove(str), t);
            }
            this.bDy.remove(str);
            return null;
        }
        return null;
    }

    @Override // com.kingroot.kinguser.bni
    public byte[] encode() {
        if (this.bDy != null) {
            JceOutputStream jceOutputStream = new JceOutputStream(0);
            jceOutputStream.setServerEncoding(this.bDw);
            jceOutputStream.write((Map) this.bDy, 0);
            return JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
        }
        return super.encode();
    }

    public void decodeVersion3(byte[] bArr) {
        this.bDx.wrap(bArr);
        this.bDx.setServerEncoding(this.bDw);
        HashMap hashMap = new HashMap(1);
        hashMap.put("", new byte[0]);
        this.bDy = this.bDx.readMap(hashMap, 0, false);
    }

    public void decodeVersion2(byte[] bArr) {
        super.decode(bArr);
    }

    @Override // com.kingroot.kinguser.bni
    public void decode(byte[] bArr) {
        try {
            super.decode(bArr);
        } catch (Exception e) {
            this.bDx.wrap(bArr);
            this.bDx.setServerEncoding(this.bDw);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.bDy = this.bDx.readMap(hashMap, 0, false);
        }
    }
}
