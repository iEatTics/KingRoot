package com.kingroot.kinguser;

import com.kingroot.kinguser.aex;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
/* loaded from: classes.dex */
public class afb implements Comparator<aex.C0796a> {
    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(aex.C0796a c0796a, aex.C0796a c0796a2) {
        if (c0796a == null || c0796a.afP == null || c0796a2 == null || c0796a2.afP == null) {
            return 0;
        }
        return Collator.getInstance(Locale.getDefault()).compare(c0796a.afP.appName, c0796a2.afP.appName);
    }
}
