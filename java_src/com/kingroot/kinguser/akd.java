package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.master.app.KUApplication;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class akd {
    private HashSet<String> ahY;

    /* renamed from: Aj */
    protected abstract String mo11301Aj();

    public akd() {
        init();
    }

    @NonNull
    /* renamed from: Ak */
    public Set<String> m11312Ak() {
        init();
        return this.ahY != null ? this.ahY : Collections.emptySet();
    }

    private void init() {
        String[] split = C3566rv.m2313i(KUApplication.m13453ge(), "user_whitelist").getString(mo11301Aj(), "").split(":");
        int length = split == null ? 0 : split.length;
        HashSet<String> hashSet = new HashSet<>(length);
        for (int i = 0; i < length; i++) {
            if (split[i].length() != 0) {
                hashSet.add(split[i]);
            }
        }
        this.ahY = hashSet;
    }

    /* renamed from: aI */
    public void m11311aI(Context context) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.ahY.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(":");
        }
        C3566rv.m2313i(context, "user_whitelist").edit().putString(mo11301Aj(), sb.toString()).commit();
    }

    /* renamed from: fg */
    public void m11310fg(String str) {
        this.ahY.add(str);
        m11311aI(KApplication.m13453ge());
        aks.m11143BP().m10865bO(true);
    }

    /* renamed from: gF */
    public void m11309gF(String str) {
        this.ahY.remove(str);
        m11311aI(KApplication.m13453ge());
        aks.m11143BP().m10865bO(true);
    }

    public boolean contains(String str) {
        return this.ahY.contains(str);
    }
}
