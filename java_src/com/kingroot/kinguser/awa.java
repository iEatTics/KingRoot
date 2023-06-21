package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.security.entity.MaliciousFileInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class awa extends avj {
    private static cce<awa> sInstance = new cce<awa>() { // from class: com.kingroot.kinguser.awa.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Sx */
        public awa create() {
            return new awa();
        }
    };
    private C2585br aNa;
    private final Object mLock;

    private awa() {
        super(40366);
        this.mLock = new Object();
    }

    /* renamed from: Sw */
    public static awa m8712Sw() {
        return sInstance.get();
    }

    /* renamed from: dj */
    public List<MaliciousFileInfo> m8711dj(boolean z) {
        int i;
        int i2;
        C2585br m8710dk = m8710dk(z);
        ArrayList arrayList = new ArrayList();
        if (m8710dk != null && !C3942yy.m1352c(m8710dk.f2063kU)) {
            Iterator<C2565bq> it = m8710dk.f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                if (next != null && !TextUtils.isEmpty(next.f2002kM)) {
                    String str = next.f2002kM;
                    String str2 = next.f2003kN;
                    try {
                        i = Integer.parseInt(next.f2004kO);
                    } catch (NumberFormatException e) {
                        i = 4;
                    }
                    String str3 = next.f2005kP;
                    String str4 = next.f2006kQ;
                    try {
                        i2 = Integer.parseInt(next.f2007kR);
                    } catch (Throwable th) {
                        i2 = 1;
                    }
                    MaliciousFileInfo maliciousFileInfo = new MaliciousFileInfo(str, str3);
                    maliciousFileInfo.setType(i);
                    maliciousFileInfo.m2280kL(str2);
                    maliciousFileInfo.m2279kM(str4);
                    maliciousFileInfo.m2282ii(i2);
                    arrayList.add(maliciousFileInfo);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: dk */
    private C2585br m8710dk(boolean z) {
        C2585br c2585br;
        synchronized (this.mLock) {
            if (this.aNa == null || z) {
                this.aNa = m8833Rw();
            }
            c2585br = this.aNa;
        }
        return c2585br;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.mLock) {
            this.aNa = m8833Rw();
        }
    }
}
