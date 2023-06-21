package com.kingroot.kinguser.root.mgr;

import android.content.pm.ApplicationInfo;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.C3697uj;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.HandlerC3839wk;
import com.kingroot.kinguser.aig;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.akx;
import com.kingroot.kinguser.arv;
import com.kingroot.kinguser.auv;
import com.kingroot.kinguser.auw;
import com.kingroot.kinguser.avm;
import com.kingroot.kinguser.avn;
import com.kingroot.kinguser.awb;
import com.kingroot.kinguser.awd;
import com.kingroot.kinguser.bbd;
import com.kingroot.kinguser.bbf;
import com.kingroot.kinguser.bbt;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgh;
import com.kingroot.kinguser.bhc;
import com.kingroot.kinguser.cce;
import com.kingroot.kinguser.model.AppInfo;
import com.kingroot.kinguser.model.AppRuleEntity;
import com.kingroot.kinguser.model.RootMgrAppModel;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguser.root.mgr.IRootManager;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class RootManagerService extends IRootManager.Stub {
    private static final cce<RootManagerService> sInstance = new cce<RootManagerService>() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: WJ */
        public RootManagerService create() {
            return new RootManagerService();
        }
    };
    private final Object APP_RULES_RW_LOCK;
    private akx mAppRuleDb;
    private HashMap<String, AppRuleEntity> mAppRules;
    private RemoteCallbackList<IAppRulesChangeListener> mAppRulesChangeListeners;
    private final Object mBroadcastLock;
    private bed mCheckAppThreadHandler;
    private bed mPrepareRootMgrList;
    private bed mPrepareRootMgrSuggestion;
    private final Object sPrepareRootMgrListLock;

    public static RootManagerService getInstance() {
        return sInstance.get();
    }

    private RootManagerService() {
        this.mAppRuleDb = null;
        this.APP_RULES_RW_LOCK = new Object();
        this.mAppRules = new HashMap<>();
        this.mBroadcastLock = new Object();
        this.mAppRulesChangeListeners = new RemoteCallbackList<>();
        this.mCheckAppThreadHandler = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                RootManagerService.this.checkApp();
            }
        });
        this.sPrepareRootMgrListLock = new Object();
        this.mPrepareRootMgrList = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.4.1
                    @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                    public Object execute(List<Object> list) {
                        HashSet hashSet = new HashSet();
                        hashSet.clear();
                        for (ApplicationInfo applicationInfo : C3952zh.m1312pq().getInstalledApplications(0)) {
                            if (!TextUtils.isEmpty(applicationInfo.packageName)) {
                                hashSet.add(applicationInfo.packageName);
                            }
                        }
                        HashSet hashSet2 = new HashSet();
                        hashSet2.clear();
                        hashSet2.addAll(avm.m8816RK().m8815RL().keySet());
                        if (hashSet.retainAll(hashSet2)) {
                            Iterator it = hashSet.iterator();
                            while (it.hasNext()) {
                                String str = (String) it.next();
                                String m7115jf = bgh.m7115jf(str);
                                if (TextUtils.isEmpty(m7115jf)) {
                                    m7115jf = str;
                                }
                                try {
                                    RootManagerService.this.processPkgWithUid(str, m7115jf, -1);
                                } catch (RemoteException e) {
                                }
                            }
                        }
                        try {
                            RootManagerService.this.processPkgWithUid("com.android.kinguser.console", C3953zi.m1311pr().getString(R.string.root_authorization_console_name), 2000);
                            return null;
                        } catch (RemoteException e2) {
                            return null;
                        }
                    }
                }, new Object[0]);
            }
        });
        this.mPrepareRootMgrSuggestion = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.6.1
                    @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                    public Object execute(List<Object> list) {
                        ArrayList arrayList = new ArrayList();
                        for (RootMgrAppModel rootMgrAppModel : bbt.m7780WG().getAllAppsInfo()) {
                            if (rootMgrAppModel != null && rootMgrAppModel.aQQ != null && !TextUtils.isEmpty(rootMgrAppModel.aQQ.getPackageName())) {
                                arrayList.add(rootMgrAppModel.aQQ.getPackageName());
                            }
                        }
                        awd.m8681o(arrayList);
                        return null;
                    }
                }, new Object[0]);
            }
        });
        this.mAppRuleDb = new akx();
        synchronized (this.APP_RULES_RW_LOCK) {
            this.mAppRules.clear();
            this.mAppRules.putAll(this.mAppRuleDb.m10682GF());
        }
    }

    public static IRootManager getInterface() {
        return asInterface(getInstance());
    }

    private void updateIfRuleExpired(boolean z) {
        long ach = bhc.ach();
        ArrayList arrayList = new ArrayList();
        synchronized (this.APP_RULES_RW_LOCK) {
            for (AppRuleEntity appRuleEntity : this.mAppRules.values()) {
                if (appRuleEntity.aQN != 0 && appRuleEntity.mTime + appRuleEntity.aQN < ach) {
                    arrayList.add(appRuleEntity.mPackageName);
                }
            }
        }
        if (arrayList.size() > 0) {
            updateRules(arrayList, 2, 0L, z);
        }
    }

    private void updateIfSpecifiedRuleExpired(AppRuleEntity appRuleEntity) {
        if (appRuleEntity.aQN != 0) {
            long ach = bhc.ach();
            if (appRuleEntity.mTime + appRuleEntity.aQN < ach) {
                try {
                    updateRule(appRuleEntity.mPackageName, 2, 0L);
                } catch (RemoteException e) {
                }
                appRuleEntity.mRule = 2;
                appRuleEntity.mTime = ach;
                appRuleEntity.aQN = 0L;
            }
        }
    }

    private void reloadAppRules(boolean z) {
        synchronized (this.APP_RULES_RW_LOCK) {
            this.mAppRules = this.mAppRuleDb.m10682GF();
        }
        if (z) {
            notifyAppRulesChangeListener();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkApp() {
        boolean z;
        List<ApplicationInfo> installedApplications = C3952zh.m1312pq().getInstalledApplications(0);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, AppRuleEntity> entry : this.mAppRuleDb.m10682GF().entrySet()) {
            AppRuleEntity value = entry.getValue();
            if (installedApplications != null) {
                for (ApplicationInfo applicationInfo : installedApplications) {
                    if (applicationInfo.packageName.equals(value.mPackageName)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z && !value.mPackageName.equals("com.android.kinguser.console")) {
                arrayList.add(value.mPackageName);
            }
        }
        if (arrayList.size() > 0) {
            deleteRules(arrayList);
        }
    }

    public synchronized void swapRule(String str) {
        AppRuleEntity appRuleEntity;
        HandlerC3839wk.m1556dq(str);
        synchronized (this.APP_RULES_RW_LOCK) {
            appRuleEntity = this.mAppRules.get(str);
        }
        if (appRuleEntity != null) {
            if (appRuleEntity.mRule == 1) {
                appRuleEntity.mRule = 0;
                bbf.m7834Wn();
            } else if (appRuleEntity.mRule == 0) {
                appRuleEntity.mRule = 1;
            }
            appRuleEntity.mTime = bhc.ach();
            this.mAppRuleDb.m10678c(str, appRuleEntity.mRule, appRuleEntity.mTime, appRuleEntity.aQN);
            reloadAppRules(true);
        }
    }

    public synchronized void updateRules(List<String> list, int i, long j, boolean z) {
        if (list != null) {
            if (list.size() > 0) {
                boolean z2 = false;
                long ach = bhc.ach();
                for (String str : list) {
                    HandlerC3839wk.m1556dq(str);
                    this.mAppRuleDb.m10678c(str, i, ach, j);
                    z2 = true;
                }
                if (z2) {
                    reloadAppRules(z);
                }
            }
        }
    }

    public synchronized void deleteRules(List<String> list) {
        boolean z = false;
        synchronized (this) {
            if (list != null) {
                if (list.size() > 0) {
                    int i = 0;
                    while (i < list.size()) {
                        String str = list.get(i);
                        HandlerC3839wk.m1557dp(str);
                        removeAppRules(str);
                        this.mAppRuleDb.m10676hs(str);
                        i++;
                        z = true;
                    }
                    if (z) {
                        reloadAppRules(true);
                    }
                }
            }
        }
    }

    private synchronized void removeAppRules(String str) {
        synchronized (this.APP_RULES_RW_LOCK) {
            Iterator<Map.Entry<String, AppRuleEntity>> it = this.mAppRules.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().getKey().equals(str)) {
                    it.remove();
                    break;
                }
            }
        }
    }

    private void addAppsModelSortInTime(List<RootMgrAppModel> list, int i, AppInfo appInfo) {
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= list.size()) {
                break;
            } else if (list.get(i2).aQQ.getTime() > appInfo.getTime()) {
                i2++;
            } else {
                RootMgrAppModel rootMgrAppModel = new RootMgrAppModel();
                rootMgrAppModel.aQQ = appInfo;
                rootMgrAppModel.aQS = i;
                list.add(i2, rootMgrAppModel);
                z = true;
                break;
            }
        }
        if (!z) {
            RootMgrAppModel rootMgrAppModel2 = new RootMgrAppModel();
            rootMgrAppModel2.aQQ = appInfo;
            rootMgrAppModel2.aQS = i;
            list.add(rootMgrAppModel2);
        }
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void updateRule(String str, int i, long j) {
        AppRuleEntity appRuleEntity;
        HandlerC3839wk.m1556dq(str);
        synchronized (this.APP_RULES_RW_LOCK) {
            appRuleEntity = this.mAppRules.get(str);
        }
        if (appRuleEntity != null) {
            if (appRuleEntity.mRule != 0 && i == 0) {
                bbf.m7834Wn();
            }
            appRuleEntity.mRule = i;
            appRuleEntity.mTime = bhc.ach();
            appRuleEntity.aQN = j;
            this.mAppRuleDb.m10678c(str, appRuleEntity.mRule, appRuleEntity.mTime, appRuleEntity.aQN);
            reloadAppRules(true);
        }
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void addAllowRule(String str, String str2, long j) {
        addRule(bhc.ach(), str, str2, 1, j);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void addAskRule(String str, String str2, long j) {
        addRule(bhc.ach(), str, str2, 2, j);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void addDenyRule(String str, String str2, long j) {
        addRule(bhc.ach(), str, str2, 0, j);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void addAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener) {
        this.mAppRulesChangeListeners.register(iAppRulesChangeListener);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void removeAppRulesChangeListener(IAppRulesChangeListener iAppRulesChangeListener) {
        this.mAppRulesChangeListeners.unregister(iAppRulesChangeListener);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void startPrepareRootMgrList() {
        beg.m7461Zj().m7450c(this.mPrepareRootMgrList);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void checkAppRules() {
        beg.m7461Zj().m7450c(this.mCheckAppThreadHandler);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public int getRuleType(String str) {
        AppRuleEntity appRuleEntity;
        synchronized (this.APP_RULES_RW_LOCK) {
            appRuleEntity = this.mAppRules.get(str);
        }
        if (appRuleEntity == null) {
            return -1;
        }
        updateIfSpecifiedRuleExpired(appRuleEntity);
        return appRuleEntity.mRule;
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public boolean inDenyRuleList(String str) {
        AppRuleEntity appRuleEntity;
        synchronized (this.APP_RULES_RW_LOCK) {
            appRuleEntity = this.mAppRules.get(str);
        }
        if (appRuleEntity != null && appRuleEntity.mRule == 0) {
            return true;
        }
        return false;
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public List<RootMgrAppModel> getAllAppsInfo() {
        Set<Map.Entry<String, AppRuleEntity>> entrySet;
        updateIfRuleExpired(false);
        HashMap<String, avn> m8815RL = avm.m8816RK().m8815RL();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        synchronized (this.APP_RULES_RW_LOCK) {
            entrySet = this.mAppRules.entrySet();
        }
        for (Map.Entry<String, AppRuleEntity> entry : entrySet) {
            AppRuleEntity value = entry.getValue();
            AppInfo appInfo = new AppInfo();
            appInfo.setAppName(value.mAppName);
            appInfo.m3053ft(value.mPackageName);
            appInfo.setTime(value.mTime);
            avn avnVar = m8815RL.get(value.mPackageName);
            if (avnVar != null) {
                appInfo.m3054bj(avnVar.aTQ);
                appInfo.m3052ji(avnVar.aTR);
            }
            if (value.mRule == 1) {
                if (value.aQN == 0) {
                    addAppsModelSortInTime(arrayList, 0, appInfo);
                } else {
                    addAppsModelSortInTime(arrayList3, 2, appInfo);
                }
            } else if (value.mRule == 0) {
                if (value.aQN == 0) {
                    addAppsModelSortInTime(arrayList2, 1, appInfo);
                } else {
                    addAppsModelSortInTime(arrayList3, 2, appInfo);
                }
            } else {
                addAppsModelSortInTime(arrayList3, 2, appInfo);
            }
        }
        arrayList4.addAll(arrayList3);
        arrayList4.addAll(arrayList);
        arrayList4.addAll(arrayList2);
        return arrayList4;
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void startPrepareRootMgrListWhenInstall(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        beg.m7461Zj().m7456a(new bed(bem.MEDIUM, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.3
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (mo7445nF.get(0) instanceof String) {
                    String str2 = (String) mo7445nF.get(0);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(str2);
                    if (avm.m8816RK().m8807bx(arrayList2)) {
                        awd.m8682jH(str2);
                    }
                    if (!new HashSet(avm.m8816RK().m8815RL().keySet()).add(str2)) {
                        synchronized (RootManagerService.this.sPrepareRootMgrListLock) {
                            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.3.1
                                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                                public Object execute(List<Object> list) {
                                    if (list.get(0) instanceof String) {
                                        String str3 = (String) list.get(0);
                                        String m7115jf = bgh.m7115jf(str3);
                                        if (TextUtils.isEmpty(m7115jf)) {
                                            m7115jf = str3;
                                        }
                                        try {
                                            RootManagerService.this.processPkgWithUid(str3, m7115jf, -1);
                                            return null;
                                        } catch (RemoteException e) {
                                            return null;
                                        }
                                    }
                                    return null;
                                }
                            }, str2);
                        }
                    }
                }
            }
        }), arrayList);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void addRule(long j, String str, String str2, int i, long j2) {
        HandlerC3839wk.m1556dq(str2);
        this.mAppRuleDb.m10679a(j, str, str2, i, j2);
        reloadAppRules(true);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void deleteRule(String str) {
        removeAppRules(str);
        this.mAppRuleDb.m10676hs(str);
        reloadAppRules(true);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public HashMap<String, AppRuleEntity> getAllAppRuleList() {
        return this.mAppRuleDb.m10682GF();
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public HashMap<String, AppRuleEntity> getAllowAppRuleList() {
        return this.mAppRuleDb.m10681GG();
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public HashMap<String, AppRuleEntity> getDenyAppRuleList() {
        return this.mAppRuleDb.m10680GH();
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void rootMgrToast(String str, String str2) {
        if (HandlerC3839wk.m1557dp(str2) && !aig.m11653xC()) {
            HandlerC3839wk.m1558do(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPkgWithUid(@NonNull String str, String str2, int i) {
        aks m11143BP = aks.m11143BP();
        if (!str.equals(KUApplication.m13453ge().getApplicationInfo().packageName)) {
            int m8886jn = auw.m8886jn(str);
            int ruleType = getRuleType(str);
            HashSet hashSet = new HashSet(arv.m9499Nz().getUndeniedRiskApps());
            hashSet.addAll(awb.m8706Sy().m8708Se());
            if (hashSet.contains(str)) {
                if (m8886jn == 0) {
                    m8886jn = 1;
                } else if (auw.m8887U(1, m8886jn) > 0) {
                    m8886jn = 1;
                }
                HashSet hashSet2 = new HashSet();
                hashSet2.add(str);
                arv.m9499Nz().markDeniedRiskApps(new ArrayList(hashSet2));
                awb.m8706Sy().m8703d(hashSet2);
            }
            int m8892jl = auv.m8898QV().m8892jl(str);
            if (m8886jn != 4 && m8892jl != 1 && m8886jn != 6 && !bbf.m7839K(str, i) && ruleType == -1) {
                if (m8886jn != 0) {
                    switch (m8886jn) {
                        case 1:
                            if (m11143BP.m11136BW()) {
                                addDenyRule(str2, str, 0L);
                                return;
                            }
                            return;
                        case 2:
                            if (m11143BP.m11136BW()) {
                                addAllowRule(str2, str, 0L);
                                return;
                            }
                            return;
                        case 3:
                            addAllowRule(str2, str, 0L);
                            return;
                    }
                }
                if (bbf.m7821ko(str)) {
                    addAllowRule(str2, str, 0L);
                }
                if (aig.m11653xC()) {
                    if (m8892jl == 99) {
                        addAllowRule(str2, str, 0L);
                    } else {
                        addDenyRule(str2, str, 0L);
                    }
                }
                addAskRule(str2, str, 0L);
            }
        }
    }

    private void notifyAppRulesChangeListener() {
        synchronized (this.mBroadcastLock) {
            int beginBroadcast = this.mAppRulesChangeListeners.beginBroadcast();
            while (beginBroadcast > 0) {
                int i = beginBroadcast - 1;
                try {
                    this.mAppRulesChangeListeners.getBroadcastItem(i).onAppRulesChangeListener();
                    beginBroadcast = i;
                } catch (RemoteException e) {
                    beginBroadcast = i;
                }
            }
            this.mAppRulesChangeListeners.finishBroadcast();
        }
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void doActionForCallingUid(int i, int i2, boolean z) {
        String str;
        SuRequestCmdModel m7822hL = bbf.m7836Wl().m7822hL(i);
        if (m7822hL != null) {
            if (i2 == 0) {
                int m8886jn = auw.m8886jn(m7822hL.adZ);
                if (2 == m8886jn) {
                    str = bbf.beO;
                } else if (3 == m8886jn) {
                    str = bbf.beR;
                } else {
                    str = bbf.beP;
                }
            } else {
                str = bbf.beQ;
            }
            do {
                bbd.m7856a(m7822hL, z, str);
                m7822hL = m7822hL.aRt;
            } while (m7822hL != null);
        }
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void setSuRequestPromptLive(boolean z) {
        bbf.m7836Wl().setSuRequestPromptLive(z);
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void triggerSuRequestPrompt() {
        if (C3697uj.m2032kA()) {
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.root.mgr.RootManagerService.5
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    bbf.m7836Wl().m7835Wm();
                }
            }));
        } else {
            bbf.m7836Wl().m7835Wm();
        }
    }

    @Override // com.kingroot.kinguser.root.mgr.IRootManager
    public void startPrepareRootMgrSuggestion() {
        beg.m7461Zj().m7450c(this.mPrepareRootMgrSuggestion);
    }
}
