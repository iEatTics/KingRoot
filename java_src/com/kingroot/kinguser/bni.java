package com.kingroot.kinguser;

import com.p019qq.jce.wup.BasicClassTypeUtil;
import com.p019qq.jce.wup.ObjectCreateException;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class bni {
    protected HashMap<String, HashMap<String, byte[]>> bDt = new HashMap<>();
    protected HashMap<String, Object> bDu = new HashMap<>();
    private HashMap<String, Object> bDv = new HashMap<>();
    protected String bDw = "GBK";
    JceInputStream bDx = new JceInputStream();

    public String getEncodeName() {
        return this.bDw;
    }

    public void setEncodeName(String str) {
        this.bDw = str;
    }

    public void clearCacheData() {
        this.bDv.clear();
    }

    public Set<String> getKeySet() {
        return Collections.unmodifiableSet(this.bDt.keySet());
    }

    public boolean isEmpty() {
        return this.bDt.isEmpty();
    }

    public int size() {
        return this.bDt.size();
    }

    public boolean containsKey(String str) {
        return this.bDt.containsKey(str);
    }

    public <T> void put(String str, T t) {
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
        byte[] jceBufArray = JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
        HashMap<String, byte[]> hashMap = new HashMap<>(1);
        ArrayList<String> arrayList = new ArrayList<>(1);
        m6237b(arrayList, t);
        hashMap.put(BasicClassTypeUtil.transTypeList(arrayList), jceBufArray);
        this.bDv.remove(str);
        this.bDt.put(str, hashMap);
    }

    public <T> T getJceStruct(String str) {
        String str2;
        byte[] bArr;
        if (this.bDt.containsKey(str)) {
            if (this.bDv.containsKey(str)) {
                return (T) this.bDv.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.bDt.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                byte[] value = next.getValue();
                str2 = next.getKey();
                bArr = value;
            } else {
                str2 = null;
                bArr = bArr2;
            }
            try {
                Object m6235mF = m6235mF(str2);
                this.bDx.wrap(bArr);
                this.bDx.setServerEncoding(this.bDw);
                T t = (T) this.bDx.directRead((JceStruct) m6235mF, 0, true);
                m6236g(str, t);
                return t;
            } catch (Exception e) {
                e.printStackTrace();
                throw new ObjectCreateException(e);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T get(String str) {
        byte[] bArr;
        String str2 = null;
        if (this.bDt.containsKey(str)) {
            if (this.bDv.containsKey(str)) {
                return (T) this.bDv.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.bDt.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                str2 = next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                Object m6235mF = m6235mF(str2);
                this.bDx.wrap(bArr);
                this.bDx.setServerEncoding(this.bDw);
                T t = (T) this.bDx.read((JceInputStream) m6235mF, 0, true);
                m6236g(str, t);
                return t;
            } catch (Exception e) {
                e.printStackTrace();
                throw new ObjectCreateException(e);
            }
        }
        return null;
    }

    /* renamed from: mF */
    private Object m6235mF(String str) {
        if (this.bDu.containsKey(str)) {
            return this.bDu.get(str);
        }
        Object createClassByUni = BasicClassTypeUtil.createClassByUni(str);
        this.bDu.put(str, createClassByUni);
        return createClassByUni;
    }

    /* renamed from: g */
    private void m6236g(String str, Object obj) {
        this.bDv.put(str, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T get(String str, Object obj) {
        byte[] bArr;
        String str2;
        if (this.bDt.containsKey(str)) {
            if (this.bDv.containsKey(str)) {
                return (T) this.bDv.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.bDt.get(str).entrySet().iterator();
            if (!it.hasNext()) {
                bArr = bArr2;
                str2 = "";
            } else {
                Map.Entry<String, byte[]> next = it.next();
                str2 = next.getKey();
                bArr = next.getValue();
            }
            try {
                Object m6235mF = m6235mF(str2);
                this.bDx.wrap(bArr);
                this.bDx.setServerEncoding(this.bDw);
                T t = (T) this.bDx.read((JceInputStream) m6235mF, 0, true);
                m6236g(str, t);
                return t;
            } catch (Exception e) {
                e.printStackTrace();
                m6236g(str, obj);
                return obj;
            }
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T remove(String str) {
        byte[] bArr;
        String str2;
        if (!this.bDt.containsKey(str)) {
            return null;
        }
        byte[] bArr2 = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.bDt.remove(str).entrySet().iterator();
        if (!it.hasNext()) {
            bArr = bArr2;
            str2 = "";
        } else {
            Map.Entry<String, byte[]> next = it.next();
            str2 = next.getKey();
            bArr = next.getValue();
        }
        try {
            Object createClassByUni = BasicClassTypeUtil.createClassByUni(str2);
            this.bDx.wrap(bArr);
            this.bDx.setServerEncoding(this.bDw);
            return (T) this.bDx.read((JceInputStream) createClassByUni, 0, true);
        } catch (Exception e) {
            e.printStackTrace();
            throw new ObjectCreateException(e);
        }
    }

    /* renamed from: b */
    private void m6237b(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                throw new IllegalArgumentException("only byte[] is supported");
            }
            if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                m6237b(arrayList, Array.get(obj, 0));
                return;
            }
            arrayList.add("Array");
            arrayList.add("?");
        } else if (obj instanceof Array) {
            throw new IllegalArgumentException("can not support Array, please use List");
        } else {
            if (obj instanceof List) {
                arrayList.add("java.util.List");
                List list = (List) obj;
                if (list.size() > 0) {
                    m6237b(arrayList, list.get(0));
                } else {
                    arrayList.add("?");
                }
            } else if (obj instanceof Map) {
                arrayList.add("java.util.Map");
                Map map = (Map) obj;
                if (map.size() > 0) {
                    Object next = map.keySet().iterator().next();
                    Object obj2 = map.get(next);
                    arrayList.add(next.getClass().getName());
                    m6237b(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        }
    }

    public byte[] encode() {
        JceOutputStream jceOutputStream = new JceOutputStream(0);
        jceOutputStream.setServerEncoding(this.bDw);
        jceOutputStream.write((Map) this.bDt, 0);
        return JceUtil.getJceBufArray(jceOutputStream.getByteBuffer());
    }

    public void decode(byte[] bArr) {
        this.bDx.wrap(bArr);
        this.bDx.setServerEncoding(this.bDw);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.bDt = this.bDx.readMap(hashMap, 0, false);
    }
}
