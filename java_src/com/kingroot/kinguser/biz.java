package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class biz extends bje {
    private List<PackageInfo> bvk;
    private Iterator<PackageInfo> bvl;
    private List<AutoStartAppItemInfo> bvm;
    private Set<String> bvn;
    private List<String> bvo;
    private HashMap<String, RiskControlInfo> bvp;
    private arv bvq;
    final Comparator<String> aWl = new Comparator<String>() { // from class: com.kingroot.kinguser.biz.1
        private Collator ahV = Collator.getInstance(Locale.getDefault());

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.length() != str2.length() ? str.length() - str2.length() : this.ahV.compare(str, str2);
        }
    };
    private bjh bvr = new bjh(KApplication.m13453ge());

    /* renamed from: h */
    protected AutoStartAppItemInfo m6806h(PackageInfo packageInfo) {
        AutoStartAppItemInfo m6732k = this.bvr.m6732k(packageInfo);
        if (m6732k != null) {
            m6732k.populate();
            if (m6732k.adz() == 0) {
                return null;
            }
            Collections.sort(m6732k.ady(), this.aWl);
            return m6732k;
        }
        return m6732k;
    }

    @Override // com.kingroot.kinguser.bje
    public boolean adr() {
        super.adr();
        PackageManager packageManager = getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            this.bvk = m6749bY(packageManager.getInstalledPackages(64));
            this.bvl = this.bvk.iterator();
            this.bvn = new HashSet();
            boolean z = aks.m11143BP().m10986Eq() != 0;
            this.bvq = arv.m9499Nz();
            this.bvo = this.bvq.getAllRiskApps();
            if (z) {
                this.bvn.addAll(this.bvo);
            }
            List<RiskControlInfo> m8688hn = awc.m8697SB().m8688hn(2);
            this.bvp = new HashMap<>();
            for (RiskControlInfo riskControlInfo : m8688hn) {
                this.bvn.add(riskControlInfo.packageName);
                this.bvp.put(riskControlInfo.packageName, riskControlInfo);
            }
            biy.m6810by(KApplication.m13453ge());
            this.bvm = new ArrayList();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.kingroot.kinguser.bje
    public boolean hasNext() {
        return this.bvl != null && this.bvl.hasNext();
    }

    @Override // com.kingroot.kinguser.bje
    public AutoStartAppItemInfo ads() {
        PackageInfo next = this.bvl.next();
        AutoStartAppItemInfo m6806h = m6806h(next);
        if (m6806h != null) {
            m6806h.m13027aC(m6744lX(m6806h.getPackageName()) == 2);
            m6806h.m13028aB(m6808a(next));
            if (this.bvn.contains(m6806h.getPackageName())) {
                m6806h.m13026aD(this.bvn.contains(m6806h.getPackageName()));
                m6807a(m6806h, this.bvo, this.bvp, this.bvq);
            }
            this.bvm.add(m6806h);
        }
        return m6806h;
    }

    @Override // com.kingroot.kinguser.bje
    public int adt() {
        if (this.bvk != null) {
            return this.bvk.size();
        }
        return 0;
    }

    @Override // com.kingroot.kinguser.bje
    public List<AutoStartAppItemInfo> adu() {
        return this.bvm;
    }

    /* renamed from: a */
    private void m6807a(@NonNull AutoStartAppItemInfo autoStartAppItemInfo, @NonNull List<String> list, @NonNull Map<String, RiskControlInfo> map, @NonNull arv arvVar) {
        String packageName = autoStartAppItemInfo.getPackageName();
        if (!TextUtils.isEmpty(packageName)) {
            if (list.contains(packageName)) {
                String m8747hi = avu.m8747hi(arvVar.getRiskType(packageName));
                if (!TextUtils.isEmpty(m8747hi)) {
                    autoStartAppItemInfo.setDescription(C3953zi.m1311pr().getString(R.string.auto_start_suggest_ban, m8747hi));
                    return;
                }
            }
            RiskControlInfo riskControlInfo = map.get(packageName);
            if (riskControlInfo != null) {
                boolean isEmpty = TextUtils.isEmpty(riskControlInfo.aUH);
                if (!isEmpty) {
                    String m13016dH = aab.m13016dH(aaz.m12872dZ(packageName));
                    if (!TextUtils.isEmpty(m13016dH) && m13016dH.equalsIgnoreCase(riskControlInfo.aUH)) {
                        isEmpty = true;
                    }
                }
                if (isEmpty) {
                    autoStartAppItemInfo.setDescription(C3953zi.m1311pr().getString(R.string.auto_start_suggest_ban, riskControlInfo.riskDescription));
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.bje
    public void adv() {
        new bjg("autostart_snapshot.conf").m6736t(this.bvm);
    }

    /* renamed from: a */
    protected static boolean m6808a(PackageInfo packageInfo) {
        return packageInfo.applicationInfo != null && (packageInfo.applicationInfo.flags & 1) == 1;
    }
}
