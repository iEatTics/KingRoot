package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class asm extends avj {
    private static volatile asm aMZ;
    private C2585br aNa;
    private C2585br aNb;
    private Object mLock;

    private asm() {
        super(40313);
        this.mLock = new Object();
    }

    /* renamed from: Od */
    public static asm m9427Od() {
        if (aMZ == null) {
            synchronized (avs.class) {
                if (aMZ == null) {
                    aMZ = new asm();
                }
            }
        }
        return aMZ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.mLock) {
            this.aNa = m8833Rw();
            beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.asm.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    asm.this.m9422cI(true);
                }
            }));
        }
    }

    @NonNull
    /* renamed from: Oe */
    public List<String> m9426Oe() {
        int i;
        C2585br m9422cI = m9422cI(false);
        ArrayList arrayList = new ArrayList();
        if (m9422cI == null || m9422cI.f2063kU == null || m9422cI.f2063kU.size() <= 0) {
            return Collections.emptyList();
        }
        Iterator<C2565bq> it = m9422cI.f2063kU.iterator();
        while (it.hasNext()) {
            C2565bq next = it.next();
            String str = next.f2002kM;
            try {
                i = Integer.valueOf(next.f2003kN).intValue();
            } catch (Exception e) {
                i = -1;
            }
            if (i == 0 && !TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: Of */
    public void m9425Of() {
        m9422cI(true);
    }

    /* renamed from: Og */
    private C2585br m9424Og() {
        C2585br c2585br;
        synchronized (this.mLock) {
            if (this.aNa == null) {
                this.aNa = m8833Rw();
            }
            c2585br = this.aNa;
        }
        return c2585br;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cI */
    public C2585br m9422cI(boolean z) {
        if (this.aNb != null && !z) {
            return this.aNb;
        }
        C3952zh m1312pq = C3952zh.m1312pq();
        System.currentTimeMillis();
        List<PackageInfo> installedPackages = m1312pq.getInstalledPackages(0);
        this.aNb = new C2585br();
        C2585br m9424Og = m9424Og();
        if (m9424Og != null && m9424Og.f2063kU != null && m9424Og.f2063kU.size() > 0) {
            if (installedPackages == null || installedPackages.isEmpty()) {
                return this.aNb;
            }
            if (this.aNb.f2063kU == null) {
                this.aNb.f2063kU = new ArrayList<>();
            }
            this.aNb.f2063kU.clear();
            for (PackageInfo packageInfo : installedPackages) {
                Iterator<C2565bq> it = m9424Og.f2063kU.iterator();
                while (it.hasNext()) {
                    C2565bq next = it.next();
                    if (packageInfo.packageName.equals(next.f2002kM)) {
                        this.aNb.f2063kU.add(next);
                    }
                }
            }
        }
        return this.aNb;
    }
}
