package com.kingroot.kinguser;

import android.text.TextUtils;
import com.king.uranus.C0417l;
import com.king.uranus.C0418m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.kingroot.kinguser.ly */
/* loaded from: classes.dex */
final class C3295ly {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ly$a */
    /* loaded from: classes.dex */
    public static final class C3296a {

        /* renamed from: aZ */
        final String f3043aZ;
        final int maxSdkVersion;
        final int minSdkVersion;

        /* renamed from: vA */
        final String f3044vA;

        /* renamed from: vz */
        final String f3045vz;

        private C3296a(String str, String str2, String str3, int i, int i2) {
            this.f3045vz = str;
            this.f3044vA = str2;
            this.f3043aZ = str3;
            this.minSdkVersion = i;
            this.maxSdkVersion = i2;
        }

        /* renamed from: a */
        static C3296a m3114a(C0417l c0417l) {
            if (TextUtils.isEmpty(c0417l.f373aN) && TextUtils.isEmpty(c0417l.f374aO) && TextUtils.isEmpty(c0417l.f375aP)) {
                return null;
            }
            try {
                return new C3296a(c0417l.f373aN, c0417l.f374aO, c0417l.f375aP, Integer.parseInt(c0417l.f376aQ), Integer.parseInt(c0417l.f377aR));
            } catch (NumberFormatException e) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: eo */
    public static List<C3296a> m3116eo() {
        return m3115ep();
    }

    /* renamed from: ep */
    private static List<C3296a> m3115ep() {
        C0418m m3393T = C3219jm.m3387cB().m3393T(40276);
        if (m3393T == null || m3393T.f382aV == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(m3393T.f382aV.size());
        Iterator<C0417l> it = m3393T.f382aV.iterator();
        while (it.hasNext()) {
            C3296a m3114a = C3296a.m3114a(it.next());
            if (m3114a != null) {
                arrayList.add(m3114a);
            }
        }
        return arrayList;
    }
}
