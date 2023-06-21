package com.kingroot.kinguser;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bmx {
    private HashMap<String, Object> bCA;
    protected String bCB;
    private bnc bCC;
    protected HashMap<String, HashMap<String, byte[]>> bCz = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public bmx() {
        new HashMap();
        this.bCA = new HashMap<>();
        this.bCB = "GBK";
        this.bCC = new bnc();
    }

    /* renamed from: mr */
    public void mo6294mr(String str) {
        this.bCB = str;
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
        bnd bndVar = new bnd();
        bndVar.m6243mu(this.bCB);
        bndVar.m6252a(t, 0);
        byte[] m6242a = bne.m6242a(bndVar.agg());
        HashMap<String, byte[]> hashMap = new HashMap<>(1);
        ArrayList<String> arrayList = new ArrayList<>(1);
        m6297a(arrayList, t);
        hashMap.put(bmu.m6305z(arrayList), m6242a);
        this.bCA.remove(str);
        this.bCz.put(str, hashMap);
    }

    /* renamed from: a */
    private void m6297a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                throw new IllegalArgumentException("only byte[] is supported");
            }
            if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                m6297a(arrayList, Array.get(obj, 0));
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
                    m6297a(arrayList, list.get(0));
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
                    m6297a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        }
    }

    public byte[] agc() {
        bnd bndVar = new bnd(0);
        bndVar.m6243mu(this.bCB);
        bndVar.m6250a((Map) this.bCz, 0);
        return bne.m6242a(bndVar.agg());
    }

    /* renamed from: s */
    public void mo6290s(byte[] bArr) {
        this.bCC.m6261u(bArr);
        this.bCC.m6262mu(this.bCB);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.bCz = this.bCC.m6269a((Map) hashMap, 0, false);
    }
}
