package com.kingroot.kinguser;

import com.kingx.cloudsdk.C4023br;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class bmy extends bmx {
    protected HashMap<String, byte[]> bCD = null;
    private HashMap<String, Object> bCA = new HashMap<>();
    private bnc bCC = new bnc();

    @Override // com.kingroot.kinguser.bmx
    /* renamed from: mr */
    public final /* bridge */ /* synthetic */ void mo6294mr(String str) {
        super.mo6294mr(str);
    }

    public void agd() {
        this.bCD = new HashMap<>();
    }

    @Override // com.kingroot.kinguser.bmx
    public <T> void put(String str, T t) {
        if (this.bCD != null) {
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
            this.bCD.put(str, bne.m6242a(bndVar.agg()));
            return;
        }
        super.put(str, t);
    }

    /* renamed from: e */
    public final <T> T m6296e(String str, T t) {
        byte[] bArr;
        if (this.bCD != null) {
            if (this.bCD.containsKey(str)) {
                if (this.bCA.containsKey(str)) {
                    return (T) this.bCA.get(str);
                }
                try {
                    this.bCC.m6261u(this.bCD.get(str));
                    this.bCC.m6262mu(this.bCB);
                    T t2 = (T) this.bCC.m6264d(t, 0, true);
                    if (t2 != null) {
                        m6295f(str, t2);
                        return t2;
                    }
                    return t2;
                } catch (Exception e) {
                    throw new C4023br(e);
                }
            }
            return null;
        } else if (this.bCz.containsKey(str)) {
            if (this.bCA.containsKey(str)) {
                return (T) this.bCA.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.bCz.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.bCC.m6261u(bArr);
                this.bCC.m6262mu(this.bCB);
                T t3 = (T) this.bCC.m6264d(t, 0, true);
                m6295f(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new C4023br(e2);
            }
        } else {
            return null;
        }
    }

    /* renamed from: f */
    private void m6295f(String str, Object obj) {
        this.bCA.put(str, obj);
    }

    @Override // com.kingroot.kinguser.bmx
    public byte[] agc() {
        if (this.bCD != null) {
            bnd bndVar = new bnd(0);
            bndVar.m6243mu(this.bCB);
            bndVar.m6250a((Map) this.bCD, 0);
            return bne.m6242a(bndVar.agg());
        }
        return super.agc();
    }

    @Override // com.kingroot.kinguser.bmx
    /* renamed from: s */
    public void mo6290s(byte[] bArr) {
        try {
            super.mo6290s(bArr);
        } catch (Exception e) {
            this.bCC.m6261u(bArr);
            this.bCC.m6262mu(this.bCB);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.bCD = this.bCC.m6269a((Map) hashMap, 0, false);
        }
    }
}
