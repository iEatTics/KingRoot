package com.tencent.feedback.proguard;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.tencent.feedback.proguard.c */
/* loaded from: classes.dex */
public class C4121c extends C4119a {

    /* renamed from: d */
    protected HashMap<String, byte[]> f4716d = null;

    /* renamed from: e */
    private HashMap<String, Object> f4717e = new HashMap<>();

    /* renamed from: f */
    private C4126h f4718f = new C4126h();

    @Override // com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo721a(String str) {
        super.mo721a(str);
    }

    /* renamed from: e */
    public void mo713e() {
        this.f4716d = new HashMap<>();
    }

    @Override // com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public <T> void mo717a(String str, T t) {
        if (this.f4716d != null) {
            if (str == null) {
                throw new IllegalArgumentException("put key can not is null");
            }
            if (t == null) {
                throw new IllegalArgumentException("put value can not is null");
            }
            if (t instanceof Set) {
                throw new IllegalArgumentException("can not support Set");
            }
            C4127i c4127i = new C4127i();
            c4127i.m677a(this.f4713b);
            c4127i.m678a(t, 0);
            this.f4716d.put(str, C4129k.m662a(c4127i.m684a()));
            return;
        }
        super.mo717a(str, (String) t);
    }

    /* renamed from: b */
    public final <T> T m720b(String str, T t) {
        byte[] bArr;
        if (this.f4716d != null) {
            if (this.f4716d.containsKey(str)) {
                if (this.f4717e.containsKey(str)) {
                    return (T) this.f4717e.get(str);
                }
                try {
                    this.f4718f.m695a(this.f4716d.get(str));
                    this.f4718f.m699a(this.f4713b);
                    T t2 = (T) this.f4718f.m700a((C4126h) t, 0, true);
                    if (t2 != null) {
                        this.f4717e.put(str, t2);
                        return t2;
                    }
                    return t2;
                } catch (Exception e) {
                    throw new C4120b(e);
                }
            }
            return null;
        } else if (this.f4712a.containsKey(str)) {
            if (this.f4717e.containsKey(str)) {
                return (T) this.f4717e.get(str);
            }
            byte[] bArr2 = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.f4712a.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            } else {
                bArr = bArr2;
            }
            try {
                this.f4718f.m695a(bArr);
                this.f4718f.m699a(this.f4713b);
                T t3 = (T) this.f4718f.m700a((C4126h) t, 0, true);
                this.f4717e.put(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new C4120b(e2);
            }
        } else {
            return null;
        }
    }

    @Override // com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public byte[] mo719a() {
        if (this.f4716d != null) {
            C4127i c4127i = new C4127i(0);
            c4127i.m677a(this.f4713b);
            c4127i.m674a((Map) this.f4716d, 0);
            return C4129k.m662a(c4127i.m684a());
        }
        return super.mo719a();
    }

    @Override // com.tencent.feedback.proguard.C4119a
    /* renamed from: a */
    public void mo716a(byte[] bArr) {
        try {
            super.mo716a(bArr);
        } catch (Exception e) {
            this.f4718f.m695a(bArr);
            this.f4718f.m699a(this.f4713b);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.f4716d = this.f4718f.m698a((Map) hashMap, 0, false);
        }
    }
}
