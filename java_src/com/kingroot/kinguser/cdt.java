package com.kingroot.kinguser;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
class cdt {

    /* renamed from: a */
    protected HashMap<String, HashMap<String, byte[]>> f2289a = new HashMap<>();
    protected HashMap<String, Object> bEP = new HashMap<>();

    /* renamed from: e */
    private HashMap<String, Object> f2291e = new HashMap<>();

    /* renamed from: c */
    protected String f2290c = "GBK";
    ccr bXE = new ccr();

    /* renamed from: a */
    public void mo4802a(String str) {
        this.f2290c = str;
    }

    /* renamed from: a */
    public <T> void mo4801a(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        ccs ccsVar = new ccs();
        ccsVar.m4913a(this.f2290c);
        ccsVar.m4914a(t, 0);
        byte[] m4895a = cct.m4895a(ccsVar.m4921a());
        HashMap<String, byte[]> hashMap = new HashMap<>(1);
        ArrayList<String> arrayList = new ArrayList<>(1);
        m4808a(arrayList, t);
        hashMap.put(cds.m4810a(arrayList), m4895a);
        this.f2291e.remove(str);
        this.f2289a.put(str, hashMap);
    }

    /* renamed from: a */
    private void m4808a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                throw new IllegalArgumentException("only byte[] is supported");
            }
            if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                m4808a(arrayList, Array.get(obj, 0));
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
                    m4808a(arrayList, list.get(0));
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
                    m4808a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        }
    }

    /* renamed from: a */
    public byte[] mo4804a() {
        ccs ccsVar = new ccs(0);
        ccsVar.m4913a(this.f2290c);
        ccsVar.m4910a((Map) this.f2289a, 0);
        return cct.m4895a(ccsVar.m4921a());
    }

    /* renamed from: a */
    public void mo4800a(byte[] bArr) {
        this.bXE.m4935a(bArr);
        this.bXE.m4941a(this.f2290c);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f2289a = this.bXE.m4940a((Map) hashMap, 0, false);
    }
}
