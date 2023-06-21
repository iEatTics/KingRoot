package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.common.app.KApplication;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class afm {
    private static afm ahX;
    private HashSet<String> ahY;

    private afm(Context context) {
        init(context);
    }

    private void init(Context context) {
        String[] split = C3566rv.m2313i(context, "user_whitelist").getString("packages", "").split(":");
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
    public void m12053aI(Context context) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.ahY.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(":");
        }
        C3566rv.m2313i(context, "user_whitelist").edit().putString("packages", sb.toString()).commit();
    }

    /* renamed from: fg */
    public void m12051fg(String str) {
        this.ahY.add(str);
        m12053aI(KApplication.m13453ge());
        aks.m11143BP().m10865bO(true);
    }

    /* renamed from: aJ */
    public static synchronized afm m12052aJ(Context context) {
        afm afmVar;
        synchronized (afm.class) {
            if (ahX == null) {
                ahX = new afm(context);
            }
            afmVar = ahX;
        }
        return afmVar;
    }
}
