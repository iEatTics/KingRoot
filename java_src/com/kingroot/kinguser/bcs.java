package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.kingroot.kinguser.examination.service.CloudCheckLiteInfo;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class bcs extends bcq {
    private static final cce<bcs> sInstance = new cce<bcs>() { // from class: com.kingroot.kinguser.bcs.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Ye */
        public bcs create() {
            return new bcs();
        }
    };
    private arv biF;

    private bcs() {
        this.biF = arv.m9499Nz();
    }

    /* renamed from: Yc */
    public static bcs m7594Yc() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: dE */
    protected Map<String, bdh> mo7592dE(boolean z) {
        HashMap hashMap = new HashMap();
        for (RiskControlInfo riskControlInfo : awc.m8697SB().m8687v(8, z)) {
            bdh bdhVar = new bdh();
            bdhVar.name = riskControlInfo.packageName;
            bdhVar.level = riskControlInfo.aUI;
            bdhVar.desc = riskControlInfo.riskDescription;
            hashMap.put(riskControlInfo.packageName, bdhVar);
        }
        for (CloudCheckLiteInfo cloudCheckLiteInfo : arv.m9499Nz().m9500NC()) {
            bdh bdhVar2 = new bdh();
            bdhVar2.name = cloudCheckLiteInfo.m3887Nw();
            bdhVar2.level = cloudCheckLiteInfo.m3886Nx();
            bdhVar2.desc = cloudCheckLiteInfo.m3885Ny();
            hashMap.put(cloudCheckLiteInfo.m3887Nw(), bdhVar2);
        }
        for (String str : m7590k(hashMap.keySet())) {
            hashMap.remove(str);
        }
        Set<String> m7588l = m7588l(hashMap.keySet());
        if (m7588l.size() > 0 && !m7593Yd()) {
            for (String str2 : m7588l) {
                hashMap.remove(str2);
            }
        }
        return hashMap;
    }

    /* renamed from: Yd */
    private boolean m7593Yd() {
        abc m12845qK = abc.m12845qK();
        return m12845qK.isRootPermition(true) && aio.m11606d(m12845qK);
    }

    /* renamed from: k */
    public Set<String> m7590k(Set<String> set) {
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (!C3952zh.m1312pq().m1314du(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    /* renamed from: l */
    public Set<String> m7588l(Set<String> set) {
        HashSet hashSet = new HashSet();
        for (String str : set) {
            try {
                if (afp.m12035a(C3952zh.m1312pq().getPackageInfo(str, 0))) {
                    hashSet.add(str);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return hashSet;
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: kE */
    public void mo7589kE(String str) {
        super.mo7589kE(str);
        this.biF.markTreatedRiskApps(Arrays.asList(str));
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: i */
    protected boolean mo7591i(List<String> list, int i) {
        boolean z;
        if (C3942yy.m1352c(list)) {
            return true;
        }
        boolean z2 = true;
        for (String str : list) {
            if (aff.m12087fe(str)) {
                aff.m12090fb(str);
            } else {
                ApplicationInfo applicationInfo = null;
                try {
                    applicationInfo = C3952zh.m1312pq().getApplicationInfo(str, 0);
                } catch (PackageManager.NameNotFoundException e) {
                } catch (Exception e2) {
                }
                if (applicationInfo != null) {
                    aff.m12096V(applicationInfo.packageName, applicationInfo.sourceDir);
                }
            }
            if (aff.m12089fc(str)) {
                z = z2;
            } else {
                z = (aff.m12092eZ(str) == 0) & z2;
            }
            z2 = z;
        }
        return z2;
    }

    @Override // com.kingroot.kinguser.bcq
    /* renamed from: XO */
    protected final String mo7595XO() {
        return "riskapp";
    }
}
