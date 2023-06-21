package com.kingroot.kinguser;

import android.content.Context;
import android.util.SparseArray;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.activitys.SuRequestActivity;
import com.kingroot.kinguser.awd;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguser.net.commoncloudlist.RiskControlInfo;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class bbf {
    public static final String beO = AbstractC3976zt.get("s1");
    public static final String beP = AbstractC3976zt.get("s2");
    public static final String beQ = AbstractC3976zt.get("s3");
    public static final String beR = AbstractC3976zt.get("s4");
    private static volatile bbf beS;
    private boolean beU = false;
    private long beV = 0;
    private final Object beW = new Object();
    SparseArray<SuRequestCmdModel> beX = new SparseArray<>();
    private final LinkedList<Integer> beY = new LinkedList<>();
    Context mContext = KUApplication.m13453ge();
    private C2068a beT = new C2068a();

    /* renamed from: c */
    private void m7828c(SuRequestCmdModel suRequestCmdModel) {
        if (akh.m11295Au()) {
            bbd.m7856a(suRequestCmdModel, false, beQ);
            return;
        }
        synchronized (this.beY) {
            SuRequestCmdModel suRequestCmdModel2 = this.beX.get(suRequestCmdModel.aRm);
            if (suRequestCmdModel2 != null) {
                while (suRequestCmdModel2.aRt != null) {
                    suRequestCmdModel2 = suRequestCmdModel2.aRt;
                }
                suRequestCmdModel2.aRt = suRequestCmdModel;
            } else {
                this.beX.put(suRequestCmdModel.aRm, suRequestCmdModel);
                this.beY.add(Integer.valueOf(suRequestCmdModel.aRm));
            }
        }
    }

    /* renamed from: hL */
    public SuRequestCmdModel m7822hL(int i) {
        SuRequestCmdModel suRequestCmdModel;
        synchronized (this.beY) {
            Iterator<Integer> it = this.beY.iterator();
            while (true) {
                if (!it.hasNext()) {
                    suRequestCmdModel = null;
                    break;
                } else if (it.next().intValue() == i) {
                    it.remove();
                    suRequestCmdModel = this.beX.get(i);
                    if (suRequestCmdModel != null) {
                        this.beX.delete(i);
                    }
                }
            }
        }
        return suRequestCmdModel;
    }

    /* renamed from: Wl */
    public static bbf m7836Wl() {
        if (beS == null) {
            synchronized (bbf.class) {
                if (beS == null) {
                    beS = new bbf();
                }
            }
        }
        return beS;
    }

    private bbf() {
    }

    /* renamed from: d */
    public void m7827d(SuRequestCmdModel suRequestCmdModel) {
        synchronized (this.beW) {
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bbf.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    SuRequestCmdModel suRequestCmdModel2 = (SuRequestCmdModel) list.get(0);
                    if (suRequestCmdModel2 != null) {
                        try {
                            Context ge = KUApplication.m13453ge();
                            String m7116a = bgh.m7116a(ge, suRequestCmdModel2.aRm, false);
                            String m7113m = bgh.m7113m(ge, suRequestCmdModel2.aRm);
                            if (suRequestCmdModel2.aRm == 2000) {
                                try {
                                    m7116a = C3953zi.m1311pr().getString(R.string.root_authorization_console_name);
                                } catch (Exception e) {
                                    m7116a = "ADB Program";
                                }
                                m7113m = "com.android.kinguser.console";
                            } else if (suRequestCmdModel2.aRm < 10000) {
                                try {
                                    m7116a = C3953zi.m1311pr().getString(R.string.root_authorization_system_name);
                                } catch (Exception e2) {
                                    m7116a = "System Program";
                                }
                            }
                            if (m7113m == null || m7113m.length() == 0) {
                                m7113m = C3952zh.m1312pq().getNameForUid(suRequestCmdModel2.aRm);
                            }
                            if (m7116a == null || m7116a.length() == 0) {
                                m7116a = m7113m;
                            }
                            suRequestCmdModel2.mAppName = m7116a;
                            suRequestCmdModel2.adZ = m7113m;
                        } catch (Throwable th) {
                        }
                        if (suRequestCmdModel2.aRr == 0) {
                            bbf.this.m7826e(suRequestCmdModel2);
                        } else if (suRequestCmdModel2.aRr == 1) {
                            bbf.this.m7825f(suRequestCmdModel2);
                        }
                    }
                    return null;
                }
            }, suRequestCmdModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0179  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m7826e(SuRequestCmdModel suRequestCmdModel) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        aks m11143BP = aks.m11143BP();
        if (suRequestCmdModel.adZ.equals(this.mContext.getApplicationInfo().packageName)) {
            bbd.m7856a(suRequestCmdModel, false, beO);
            C3823wb.m1591U(true);
            return;
        }
        int m8886jn = auw.m8886jn(suRequestCmdModel.adZ);
        int ruleType = bbt.m7780WG().getRuleType(suRequestCmdModel.adZ);
        HashSet hashSet = new HashSet(arv.m9499Nz().getUndeniedRiskApps());
        hashSet.addAll(awb.m8706Sy().m8708Se());
        if (hashSet.contains(suRequestCmdModel.adZ)) {
            if (m8886jn == 0) {
                m8886jn = 1;
            } else if (auw.m8887U(1, m8886jn) > 0) {
                m8886jn = 1;
            }
            HashSet hashSet2 = new HashSet();
            hashSet2.add(suRequestCmdModel.adZ);
            arv.m9499Nz().markDeniedRiskApps(new ArrayList(hashSet2));
            awb.m8706Sy().m8703d(hashSet2);
        }
        if (avp.m8801RQ().m8800RR() == 1 && m7838L(suRequestCmdModel.adZ, suRequestCmdModel.aRm)) {
            bbd.m7856a(suRequestCmdModel, false, beO);
            return;
        }
        int m8892jl = auv.m8898QV().m8892jl(suRequestCmdModel.adZ);
        if (m8886jn == 4) {
            bbd.m7856a(suRequestCmdModel, false, "S_DENY");
        } else if (m8892jl == 1) {
            bbd.m7856a(suRequestCmdModel, false, "S_DENY");
        } else if (m8886jn == 6) {
            bbd.m7856a(suRequestCmdModel, false, beO);
        } else if (m7839K(suRequestCmdModel.adZ, suRequestCmdModel.aRm)) {
            bbd.m7856a(suRequestCmdModel, false, beO);
        } else if (!m11143BP.m11142BQ()) {
            bbd.m7856a(suRequestCmdModel, false, beQ);
        } else {
            if (ruleType != -1) {
                switch (ruleType) {
                    case 0:
                        m7831a(suRequestCmdModel, false, false, null);
                        z = true;
                        break;
                    case 1:
                        if (m8886jn == 3) {
                            m7824g(suRequestCmdModel);
                        } else {
                            m7831a(suRequestCmdModel, true, false, null);
                        }
                        z = true;
                        break;
                    case 2:
                        m7828c(suRequestCmdModel);
                        bbt.m7780WG().triggerSuRequestPrompt();
                        z = true;
                        break;
                }
                if (!z && m8886jn != 0) {
                    switch (m8886jn) {
                        case 1:
                            if (m11143BP.m11136BW()) {
                                m7831a(suRequestCmdModel, false, true, null);
                                bbt.m7780WG().addDenyRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                                z2 = true;
                                break;
                            }
                            break;
                        case 2:
                            if (m11143BP.m11136BW()) {
                                m7823h(suRequestCmdModel);
                                bbt.m7780WG().addAllowRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                                z2 = true;
                                break;
                            }
                            break;
                        case 3:
                            m7824g(suRequestCmdModel);
                            bbt.m7780WG().addAllowRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                            z2 = true;
                            break;
                    }
                    if (!z2 && m7821ko(suRequestCmdModel.adZ)) {
                        m7823h(suRequestCmdModel);
                        bbt.m7780WG().addAllowRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                        z2 = true;
                    }
                    if (!z2 || !aig.m11653xC()) {
                        z3 = z2;
                    } else if (m8892jl == 99) {
                        m7831a(suRequestCmdModel, true, true, null);
                        bbt.m7780WG().addAllowRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                    } else {
                        m7831a(suRequestCmdModel, false, true, null);
                        bbt.m7780WG().addDenyRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                    }
                    if (!z3) {
                        m7828c(suRequestCmdModel);
                        bbt.m7780WG().triggerSuRequestPrompt();
                    }
                    m7833a(m11143BP);
                    m7837We();
                }
                z2 = z;
                if (!z2) {
                    m7823h(suRequestCmdModel);
                    bbt.m7780WG().addAllowRule(suRequestCmdModel.mAppName, suRequestCmdModel.adZ, 0L);
                    z2 = true;
                }
                if (!z2) {
                }
                z3 = z2;
                if (!z3) {
                }
                m7833a(m11143BP);
                m7837We();
            }
            z = false;
            if (!z) {
                switch (m8886jn) {
                }
                if (!z2) {
                }
                if (!z2) {
                }
                z3 = z2;
                if (!z3) {
                }
                m7833a(m11143BP);
                m7837We();
            }
            z2 = z;
            if (!z2) {
            }
            if (!z2) {
            }
            z3 = z2;
            if (!z3) {
            }
            m7833a(m11143BP);
            m7837We();
        }
    }

    public synchronized void setSuRequestPromptLive(boolean z) {
        this.beV = System.currentTimeMillis();
        this.beU = z;
    }

    /* renamed from: Wm */
    public synchronized void m7835Wm() {
        SuRequestCmdModel suRequestCmdModel;
        if (this.beU && adk.m12539b(this.beV, System.currentTimeMillis(), aks.m11143BP().m11141BR() * 1000)) {
            this.beU = false;
        }
        if (!this.beU) {
            synchronized (this.beY) {
                Iterator<Integer> it = this.beY.iterator();
                HashMap hashMap = new HashMap();
                for (RiskControlInfo riskControlInfo : awc.m8697SB().m8688hn(1)) {
                    hashMap.put(riskControlInfo.packageName, riskControlInfo);
                }
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    int intValue = it.next().intValue();
                    SuRequestCmdModel suRequestCmdModel2 = this.beX.get(intValue);
                    if (suRequestCmdModel2 == null) {
                        it.remove();
                    } else {
                        while (true) {
                            SuRequestCmdModel suRequestCmdModel3 = suRequestCmdModel2;
                            if (!adk.m12539b(suRequestCmdModel3.mCreateTime, System.currentTimeMillis(), 25000L)) {
                                suRequestCmdModel3.aRs = bbd.m7854km(suRequestCmdModel3.aRp);
                                if (suRequestCmdModel3.aRs != null) {
                                    suRequestCmdModel = suRequestCmdModel3;
                                    break;
                                }
                            }
                            suRequestCmdModel2 = suRequestCmdModel3.aRt;
                            if (suRequestCmdModel2 == null) {
                                suRequestCmdModel = suRequestCmdModel2;
                                break;
                            }
                        }
                        if (suRequestCmdModel == null) {
                            it.remove();
                            this.beX.remove(intValue);
                        } else {
                            suRequestCmdModel.riskType = arv.m9499Nz().getRiskType(suRequestCmdModel.adZ);
                            if (!avu.m8746hj(suRequestCmdModel.riskType)) {
                                RiskControlInfo riskControlInfo2 = (RiskControlInfo) hashMap.get(suRequestCmdModel.adZ);
                                if (riskControlInfo2 != null) {
                                    suRequestCmdModel.riskType = 6;
                                    if ("zh_CN".equalsIgnoreCase(C3946zb.m1333pi())) {
                                        suRequestCmdModel.aRu = riskControlInfo2.riskDescription;
                                    } else {
                                        suRequestCmdModel.aRu = C3953zi.m1311pr().getString(R.string.risk_app_type_others_risk);
                                    }
                                }
                            } else {
                                suRequestCmdModel.aRu = avu.m8747hi(suRequestCmdModel.riskType);
                            }
                            awd.C1709a m8683jG = awd.m8685SG().m8683jG(suRequestCmdModel.adZ);
                            if (m8683jG != null) {
                                suRequestCmdModel.aRv = m8683jG.aRv;
                                suRequestCmdModel.aRw = m8683jG.aRw;
                                suRequestCmdModel.aRx = m8683jG.aRx;
                            }
                            SuRequestActivity.m12583a(KUApplication.m13453ge(), suRequestCmdModel);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public synchronized void m7825f(SuRequestCmdModel suRequestCmdModel) {
        if (!aks.m11143BP().m11142BQ()) {
            bbd.m7856a(suRequestCmdModel, false, beQ);
        } else {
            int m8886jn = auw.m8886jn(suRequestCmdModel.adZ);
            if (m8886jn == 4) {
                bbd.m7856a(suRequestCmdModel, false, "S_DENY");
            } else if (auv.m8898QV().m8892jl(suRequestCmdModel.adZ) == 1) {
                bbd.m7856a(suRequestCmdModel, false, "S_DENY");
            } else if (m8886jn == 3) {
                bbd.m7856a(suRequestCmdModel, false, beR);
            } else if (bbt.m7780WG().inDenyRuleList(suRequestCmdModel.adZ)) {
                bbd.m7856a(suRequestCmdModel, false, beQ);
            } else if (m8886jn == 1) {
                bbd.m7856a(suRequestCmdModel, false, beQ);
            } else {
                bbd.m7856a(suRequestCmdModel, false, beP);
            }
        }
    }

    /* renamed from: Wn */
    public static void m7834Wn() {
        File[] listFiles = new File(KUApplication.m13453ge().getFilesDir().getAbsolutePath()).listFiles();
        if (listFiles != null) {
            try {
                for (File file : listFiles) {
                    String name = file.getName();
                    if (name.length() == 16 && name.startsWith("user") && name.endsWith(".log")) {
                        file.delete();
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: K */
    public static boolean m7839K(String str, int i) {
        boolean z = false;
        switch (z) {
            case true:
                if (str.equals("com.qq.AppService")) {
                    return true;
                }
                break;
            case true:
                if (str.equals("pj.ishuaji")) {
                    return true;
                }
                break;
            case true:
                if (str.equals("cn.opda.a.phonoalbumshoushou")) {
                    return true;
                }
                break;
            case true:
                if (m7838L(str, i) || str.equals("com.shuame.sprite") || str.equals("com.android.ss") || str.equals("com.shuame.romupdate") || str.equals("com.shuame.mobile") || str.equals("com.shuame.mobile.tv") || str.equals("com.shuame.rootgenius") || str.equals("com.shuame.rootgenius.tv")) {
                    return true;
                }
                break;
            case true:
                if (m7838L(str, i) || str.equals("")) {
                    return true;
                }
                break;
            case true:
                if (m7838L(str, i) || str.equals("") || str.equals("") || str.equals("")) {
                    return true;
                }
                break;
            case true:
                if (m7838L(str, i)) {
                    return true;
                }
                break;
            case true:
                if (str.equals("com.xxAssistant")) {
                    return true;
                }
                break;
        }
        return false;
    }

    /* renamed from: ko */
    public static boolean m7821ko(String str) {
        boolean z = false;
        switch (z) {
            case true:
            default:
                return false;
            case true:
                return str.equals("com.apkol.root") || str.equals("com.apkol.tool") || str.equals("com.apkol.powermaster") || str.equals("cn.netdroid.shengdiandashi") || str.equals("com.wangzhuo.onekeyrom") || str.equals("com.jike.root");
        }
    }

    /* renamed from: L */
    private static boolean m7838L(String str, int i) {
        if (i == 2000) {
            aks m11143BP = aks.m11143BP();
            if (m11143BP.m11098Ci()) {
                bbt.m7780WG().addAllowRule(C3953zi.m1311pr().getString(R.string.root_authorization_console_name), str, 0L);
                m11143BP.m10836bj(false);
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: g */
    private void m7824g(SuRequestCmdModel suRequestCmdModel) {
        String str = suRequestCmdModel.adZ;
        String str2 = suRequestCmdModel.mAppName;
        bbd.m7856a(suRequestCmdModel, false, beR);
        String string = C3953zi.m1311pr().getString(R.string.version_update_auto_allow_prompt);
        bbt.m7780WG().rootMgrToast(string + " " + str2 + " " + C3953zi.m1311pr().getString(R.string.root_authorization_suffix_toast_permission), suRequestCmdModel.adZ);
        bbo.m7795Wv().addLog(new RootMgrLogInfo(0L, System.currentTimeMillis(), str, str2, 100, 2));
    }

    /* renamed from: h */
    private void m7823h(SuRequestCmdModel suRequestCmdModel) {
        String str = suRequestCmdModel.adZ;
        String str2 = suRequestCmdModel.mAppName;
        bbd.m7856a(suRequestCmdModel, false, beO);
        if (!m7830ab(suRequestCmdModel.aRm, 0)) {
            String string = C3953zi.m1311pr().getString(R.string.version_update_auto_allow_prompt);
            bbt.m7780WG().rootMgrToast(string + " " + str2 + " " + C3953zi.m1311pr().getString(R.string.root_authorization_suffix_toast_permission), suRequestCmdModel.adZ);
        }
        bbo.m7795Wv().addLog(new RootMgrLogInfo(0L, System.currentTimeMillis(), str, str2, 100, 2));
    }

    /* renamed from: a */
    private void m7831a(SuRequestCmdModel suRequestCmdModel, boolean z, boolean z2, String str) {
        String str2 = suRequestCmdModel.adZ;
        String str3 = suRequestCmdModel.mAppName;
        String str4 = beP;
        if (!z) {
            str4 = beQ;
        }
        bbd.m7856a(suRequestCmdModel, false, str4);
        if (!z2) {
            if (!m7830ab(suRequestCmdModel.aRm, z ? 0 : 1)) {
                if (str != null) {
                    bbt.m7780WG().rootMgrToast(str, suRequestCmdModel.adZ);
                } else {
                    String string = C3953zi.m1311pr().getString(R.string.version_update_auto_allow_prompt);
                    String string2 = C3953zi.m1311pr().getString(R.string.version_update_auto_deny_prompt);
                    String string3 = C3953zi.m1311pr().getString(R.string.root_authorization_suffix_toast_permission);
                    String str5 = string + " " + str3 + " " + string3;
                    String str6 = string2 + " " + str3 + " " + string3;
                    bbt m7780WG = bbt.m7780WG();
                    if (!z) {
                        str5 = str6;
                    }
                    m7780WG.rootMgrToast(str5, suRequestCmdModel.adZ);
                }
            }
            bbo.m7795Wv().addLog(new RootMgrLogInfo(0L, System.currentTimeMillis(), str2, str3, 100, z ? 2 : 3));
        }
    }

    /* renamed from: ab */
    private boolean m7830ab(int i, int i2) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.beT.mTime;
        if (this.beT.mUid == i && this.beT.bfa == i2 && j > 0 && j <= 4000) {
            this.beT.mCount++;
            this.beT.mTime = currentTimeMillis;
        } else {
            this.beT.mUid = i;
            this.beT.bfa = i2;
            this.beT.mCount = 1;
            this.beT.mTime = currentTimeMillis;
        }
        return this.beT.mCount > 2;
    }

    /* renamed from: We */
    private void m7837We() {
        aih.m11645xI().m11644xJ();
    }

    /* renamed from: a */
    private void m7833a(aks aksVar) {
        avm.m8816RK().m8811RP();
        if (aksVar.m11136BW()) {
            avv.m8742Sj().mo8731uv();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bbf$a */
    /* loaded from: classes.dex */
    public class C2068a {
        int bfa;
        int mCount;
        long mTime;
        int mUid;

        C2068a() {
        }
    }
}
