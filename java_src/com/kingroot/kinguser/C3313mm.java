package com.kingroot.kinguser;

import com.king.uranus.C0400cH;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.mm */
/* loaded from: classes.dex */
public class C3313mm extends C3312ml {

    /* renamed from: vU */
    protected HashMap<String, byte[]> f3135vU = null;

    /* renamed from: vR */
    private HashMap<String, Object> f3133vR = new HashMap<>();

    /* renamed from: vT */
    C3322mq f3134vT = new C3322mq();

    @Override // com.kingroot.kinguser.C3312ml
    /* renamed from: bu */
    public /* bridge */ /* synthetic */ void mo3067bu(String str) {
        super.mo3067bu(str);
    }

    /* renamed from: eE */
    public void mo3061eE() {
        this.f3135vU = new HashMap<>();
    }

    @Override // com.kingroot.kinguser.C3312ml
    public <T> void put(String str, T t) {
        if (this.f3135vU != null) {
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
            this.f3135vU.put(str, C3325ms.m2980a(c3324mr.m2982eJ()));
            return;
        }
        super.put(str, t);
    }

    /* renamed from: b */
    public <T> T m3068b(String str, T t) {
        byte[] bArr;
        if (this.f3135vU != null) {
            if (this.f3135vU.containsKey(str)) {
                if (this.f3133vR.containsKey(str)) {
                    return (T) this.f3133vR.get(str);
                }
                try {
                    T t2 = (T) m3069a(this.f3135vU.get(str), t);
                    if (t2 != null) {
                        m3066d(str, t2);
                        return t2;
                    }
                    return t2;
                } catch (Exception e) {
                    throw new C0400cH(e);
                }
            }
            return null;
        } else if (this.f3128vP.containsKey(str)) {
            if (this.f3133vR.containsKey(str)) {
                return (T) this.f3133vR.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.f3128vP.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.f3134vT.m3005u(bArr);
                this.f3134vT.m3010by(this.f3131vS);
                T t3 = (T) this.f3134vT.m3008d(t, 0, true);
                m3066d(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new C0400cH(e2);
            }
        } else {
            return null;
        }
    }

    /* renamed from: a */
    private Object m3069a(byte[] bArr, Object obj) {
        this.f3134vT.m3005u(bArr);
        this.f3134vT.m3010by(this.f3131vS);
        return this.f3134vT.m3008d(obj, 0, true);
    }

    /* renamed from: d */
    private void m3066d(String str, Object obj) {
        this.f3133vR.put(str, obj);
    }

    @Override // com.kingroot.kinguser.C3312ml
    /* renamed from: eD */
    public byte[] mo3062eD() {
        if (this.f3135vU != null) {
            C3324mr c3324mr = new C3324mr(0);
            c3324mr.m2984by(this.f3131vS);
            c3324mr.m2997a((Map) this.f3135vU, 0);
            return C3325ms.m2980a(c3324mr.m2982eJ());
        }
        return super.mo3062eD();
    }

    @Override // com.kingroot.kinguser.C3312ml
    /* renamed from: s */
    public void mo3058s(byte[] bArr) {
        try {
            super.mo3058s(bArr);
        } catch (Exception e) {
            this.f3134vT.m3005u(bArr);
            this.f3134vT.m3010by(this.f3131vS);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.f3135vU = this.f3134vT.m3027a((Map) hashMap, 0, false);
        }
    }
}
