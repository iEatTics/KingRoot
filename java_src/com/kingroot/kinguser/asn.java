package com.kingroot.kinguser;

import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public class asn extends avj {
    private static final cce<asn> sInstance = new cce<asn>() { // from class: com.kingroot.kinguser.asn.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Ok */
        public asn create() {
            return new asn();
        }
    };
    private WeakReference<HashSet<String>> aNd;
    private final Object mLock;

    private asn() {
        super(40312);
        this.mLock = new Object();
        this.aNd = new WeakReference<>(null);
    }

    /* renamed from: Oh */
    public static asn m9421Oh() {
        return sInstance.get();
    }

    /* renamed from: Oi */
    public Set<String> m9420Oi() {
        HashSet hashSet = new HashSet();
        synchronized (this.mLock) {
            hashSet.addAll(m9419Oj());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
    }

    /* renamed from: Oj */
    private HashSet<String> m9419Oj() {
        synchronized (this.mLock) {
            if (this.aNd.get() == null) {
                HashSet<String> hashSet = new HashSet<>();
                C2585br Rw = m8833Rw();
                if (Rw == null || Rw.f2063kU == null) {
                    return hashSet;
                }
                HashSet hashSet2 = new HashSet();
                Iterator<C2565bq> it = Rw.f2063kU.iterator();
                while (it.hasNext()) {
                    C2565bq next = it.next();
                    if (next != null && next.f2002kM != null && !"".equals(next.f2002kM) && !TextUtils.isEmpty(next.f2002kM)) {
                        hashSet2.add(next.f2002kM);
                    }
                }
                hashSet.addAll(hashSet2);
                this.aNd = new WeakReference<>(hashSet);
            }
            return this.aNd.get();
        }
    }
}
