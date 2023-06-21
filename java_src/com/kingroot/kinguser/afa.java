package com.kingroot.kinguser;

import com.kingroot.kinguser.aex;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
/* loaded from: classes.dex */
public class afa implements Comparator<aex.C0796a> {
    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(aex.C0796a c0796a, aex.C0796a c0796a2) {
        if (c0796a == null || c0796a2 == null) {
            return 0;
        }
        if (c0796a.afQ != c0796a2.afQ) {
            return c0796a.afQ ? -1 : 1;
        } else if (c0796a.afP.classify != c0796a2.afP.classify) {
            return c0796a2.afP.classify - c0796a.afP.classify;
        } else {
            return Collator.getInstance(Locale.getDefault()).compare(c0796a.afP.appName, c0796a2.afP.appName);
        }
    }
}
