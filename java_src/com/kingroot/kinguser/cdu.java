package com.kingroot.kinguser;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import sm.C4416w;
/* loaded from: classes.dex */
public class cdu extends cdt {

    /* renamed from: e */
    protected HashMap<String, byte[]> f2292e = null;

    /* renamed from: g */
    private HashMap<String, Object> f2293g = new HashMap<>();
    ccr bXF = new ccr();

    @Override // com.kingroot.kinguser.cdt
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo4802a(String str) {
        super.mo4802a(str);
    }

    /* renamed from: b */
    public void mo4799b() {
        this.f2292e = new HashMap<>();
    }

    @Override // com.kingroot.kinguser.cdt
    /* renamed from: a */
    public <T> void mo4801a(String str, T t) {
        if (this.f2292e != null) {
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
            this.f2292e.put(str, cct.m4895a(ccsVar.m4921a()));
            return;
        }
        super.mo4801a(str, (String) t);
    }

    /* renamed from: b */
    public <T> T m4806b(String str, T t) {
        byte[] bArr;
        if (this.f2292e != null) {
            if (this.f2292e.containsKey(str)) {
                if (this.f2293g.containsKey(str)) {
                    return (T) this.f2293g.get(str);
                }
                try {
                    T t2 = (T) m4807a(this.f2292e.get(str), t);
                    if (t2 != null) {
                        m4805d(str, t2);
                        return t2;
                    }
                    return t2;
                } catch (Exception e) {
                    throw new C4416w(e);
                }
            }
            return null;
        } else if (this.f2289a.containsKey(str)) {
            if (this.f2293g.containsKey(str)) {
                return (T) this.f2293g.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.f2289a.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.bXF.m4935a(bArr);
                this.bXF.m4941a(this.f2290c);
                T t3 = (T) this.bXF.m4942a((ccr) t, 0, true);
                m4805d(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new C4416w(e2);
            }
        } else {
            return null;
        }
    }

    /* renamed from: a */
    private Object m4807a(byte[] bArr, Object obj) {
        this.bXF.m4935a(bArr);
        this.bXF.m4941a(this.f2290c);
        return this.bXF.m4942a((ccr) obj, 0, true);
    }

    /* renamed from: d */
    private void m4805d(String str, Object obj) {
        this.f2293g.put(str, obj);
    }

    @Override // com.kingroot.kinguser.cdt
    /* renamed from: a */
    public byte[] mo4804a() {
        if (this.f2292e != null) {
            ccs ccsVar = new ccs(0);
            ccsVar.m4913a(this.f2290c);
            ccsVar.m4910a((Map) this.f2292e, 0);
            return cct.m4895a(ccsVar.m4921a());
        }
        return super.mo4804a();
    }

    @Override // com.kingroot.kinguser.cdt
    /* renamed from: a */
    public void mo4800a(byte[] bArr) {
        try {
            super.mo4800a(bArr);
        } catch (Exception e) {
            this.bXF.m4935a(bArr);
            this.bXF.m4941a(this.f2290c);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.f2292e = this.bXF.m4940a((Map) hashMap, 0, false);
        }
    }
}
