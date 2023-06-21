package com.kingroot.kinguser;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.ml */
/* loaded from: classes.dex */
class C3312ml {

    /* renamed from: vP */
    protected HashMap<String, HashMap<String, byte[]>> f3128vP = new HashMap<>();

    /* renamed from: vQ */
    protected HashMap<String, Object> f3129vQ = new HashMap<>();

    /* renamed from: vR */
    private HashMap<String, Object> f3130vR = new HashMap<>();

    /* renamed from: vS */
    protected String f3131vS = "GBK";

    /* renamed from: vT */
    C3322mq f3132vT = new C3322mq();

    /* renamed from: bu */
    public void mo3067bu(String str) {
        this.f3131vS = str;
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
        C3324mr c3324mr = new C3324mr();
        c3324mr.m2984by(this.f3131vS);
        c3324mr.m2999a(t, 0);
        byte[] m2980a = C3325ms.m2980a(c3324mr.m2982eJ());
        HashMap<String, byte[]> hashMap = new HashMap<>(1);
        ArrayList<String> arrayList = new ArrayList<>(1);
        m3070a(arrayList, t);
        hashMap.put(C3311mk.m3071f(arrayList), m2980a);
        this.f3130vR.remove(str);
        this.f3128vP.put(str, hashMap);
    }

    /* renamed from: a */
    private void m3070a(ArrayList<String> arrayList, Object obj) {
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals(MethodReflectParams.BYTE)) {
                throw new IllegalArgumentException("only byte[] is supported");
            }
            if (Array.getLength(obj) > 0) {
                arrayList.add("java.util.List");
                m3070a(arrayList, Array.get(obj, 0));
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
                    m3070a(arrayList, list.get(0));
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
                    m3070a(arrayList, obj2);
                    return;
                }
                arrayList.add("?");
                arrayList.add("?");
            } else {
                arrayList.add(obj.getClass().getName());
            }
        }
    }

    /* renamed from: eD */
    public byte[] mo3062eD() {
        C3324mr c3324mr = new C3324mr(0);
        c3324mr.m2984by(this.f3131vS);
        c3324mr.m2997a((Map) this.f3128vP, 0);
        return C3325ms.m2980a(c3324mr.m2982eJ());
    }

    /* renamed from: s */
    public void mo3058s(byte[] bArr) {
        this.f3132vT.m3005u(bArr);
        this.f3132vT.m3010by(this.f3131vS);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f3128vP = this.f3132vT.m3027a((Map) hashMap, 0, false);
    }
}
