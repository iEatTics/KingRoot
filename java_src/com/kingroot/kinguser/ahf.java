package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.kingroot.kinguser.advance.manager.IPermChangedListener;
import com.kingroot.kinguser.advance.model.AdvancePermModel;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.advance.model.SilentInstallPermInfo;
import com.kingroot.kinguser.ahf;
import com.kingroot.kinguser.bjb;
import com.kingroot.kinguser.model.AppRuleEntity;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import com.kingroot.kinguser.root.mgr.IAppRulesChangeListener;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ahf {
    private static cce<ahf> sInstance = new cce<ahf>() { // from class: com.kingroot.kinguser.ahf.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wS */
        public ahf create() {
            return new ahf();
        }
    };
    private Map<String, List<AdvancePermModel>> apc;
    private Map<Integer, List<AdvancePermModel>> apd;
    private RemoteCallbackList<IPermChangedListener> ape;
    private bjb apf;
    public Map<String, AutoStartAppItemInfo> apg;
    private IAppRulesChangeListener aph;
    private IPermChangedListener api;
    private ILogsChangeListener apj;
    private final Object mBroadcastLock;

    private ahf() {
        this.apc = new HashMap();
        this.apd = new HashMap();
        this.ape = new RemoteCallbackList<>();
        this.mBroadcastLock = new Object();
        this.apf = bjb.adD();
        this.apg = new HashMap();
        this.aph = new IAppRulesChangeListener.Stub() { // from class: com.kingroot.kinguser.advance.manager.AdvancePermService$6
            @Override // com.kingroot.kinguser.root.mgr.IAppRulesChangeListener
            public void onAppRulesChangeListener() {
                ahf.this.m11779wQ();
                ahf.this.m11777wp();
            }
        };
        this.api = new IPermChangedListener.Stub() { // from class: com.kingroot.kinguser.advance.manager.AdvancePermService$7
            @Override // com.kingroot.kinguser.advance.manager.IPermChangedListener
            public void onChanged() {
                ahf.this.m11780wP();
                ahf.this.m11777wp();
            }
        };
        this.apj = new ILogsChangeListener.Stub() { // from class: com.kingroot.kinguser.advance.manager.AdvancePermService$8
            @Override // com.kingroot.kinguser.root.log.ILogsChangeListener
            public void onLogsChangeListener() {
                ahf.this.m11780wP();
                ahf.this.m11777wp();
            }
        };
        init();
        m11781wO();
    }

    /* renamed from: wN */
    public static ahf m11782wN() {
        return sInstance.get();
    }

    public void init() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.ahf.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ahf.this.reset();
                ahf.this.m11779wQ();
                ahf.this.m11780wP();
                ahf.this.m11778wR();
                ahf.this.m11777wp();
            }
        }));
    }

    /* renamed from: wO */
    private void m11781wO() {
        bbt.m7780WG().addAppRulesChangeListener(this.aph);
        agy.m11867wk().m11877a(this.api);
        agy.m11867wk().m11875a(this.apj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wP */
    public void m11780wP() {
        Map<String, List<SilentInstallLogInfo>> m11872ai = agy.m11867wk().m11872ai(2592000000L);
        if (!C3942yy.m1349e(m11872ai)) {
            m11790dl(2);
            for (String str : m11872ai.keySet()) {
                if (!TextUtils.isEmpty(str)) {
                    AdvancePermModel advancePermModel = new AdvancePermModel();
                    advancePermModel.type = 2;
                    advancePermModel.packageName = str;
                    SilentInstallPermInfo m11869fG = agy.m11867wk().m11869fG(str);
                    advancePermModel.apu = m11869fG == null ? 2 : m11869fG.mRule;
                    m11794c(advancePermModel);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wQ */
    public void m11779wQ() {
        HashMap<String, AppRuleEntity> allAppRuleList = bbt.m7780WG().getAllAppRuleList();
        if (!C3942yy.m1349e(allAppRuleList)) {
            m11790dl(1);
            for (String str : allAppRuleList.keySet()) {
                AdvancePermModel advancePermModel = new AdvancePermModel();
                advancePermModel.type = 1;
                advancePermModel.packageName = str;
                advancePermModel.apt = allAppRuleList.get(str).mRule;
                m11794c(advancePermModel);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wR */
    public void m11778wR() {
        this.apf.m6795a(new bjb.InterfaceC2371b() { // from class: com.kingroot.kinguser.ahf.3
            @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
            /* renamed from: a */
            public void mo6777a(int i, Object obj, int i2, int i3) {
            }

            @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
            /* renamed from: b */
            public void mo6764b(int i, Object obj, int i2, int i3) {
                ArrayList arrayList = (ArrayList) obj;
                if (!C3942yy.m1352c(arrayList)) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        AutoStartAppItemInfo autoStartAppItemInfo = (AutoStartAppItemInfo) it.next();
                        ahf.this.apg.put(autoStartAppItemInfo.getPackageName(), autoStartAppItemInfo);
                    }
                    if (!C3942yy.m1349e(ahf.this.apg)) {
                        ahf.this.m11790dl(3);
                        for (AutoStartAppItemInfo autoStartAppItemInfo2 : ahf.this.apg.values()) {
                            AdvancePermModel advancePermModel = new AdvancePermModel();
                            advancePermModel.type = 3;
                            advancePermModel.packageName = autoStartAppItemInfo2.getPackageName();
                            advancePermModel.apv = autoStartAppItemInfo2.adB();
                            ahf.this.m11794c(advancePermModel);
                        }
                        ahf.this.m11777wp();
                    }
                }
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dl */
    public void m11790dl(int i) {
        List<AdvancePermModel> list = this.apd.get(Integer.valueOf(i));
        if (!C3942yy.m1352c(list)) {
            list.clear();
            if (!C3942yy.m1349e(this.apc)) {
                for (List<AdvancePermModel> list2 : this.apc.values()) {
                    if (!C3942yy.m1352c(list2)) {
                        Iterator<AdvancePermModel> it = list2.iterator();
                        while (it.hasNext()) {
                            if (it.next().type == i) {
                                it.remove();
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        this.apc.clear();
        this.apd.clear();
    }

    /* renamed from: a */
    private void m11800a(AdvancePermModel advancePermModel) {
        String str = advancePermModel.packageName;
        List<AdvancePermModel> list = this.apc.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.apc.put(str, list);
        }
        list.add(advancePermModel);
    }

    /* renamed from: b */
    private void m11797b(AdvancePermModel advancePermModel) {
        List<AdvancePermModel> list = this.apd.get(Integer.valueOf(advancePermModel.type));
        if (list == null) {
            list = new ArrayList<>();
            this.apd.put(Integer.valueOf(advancePermModel.type), list);
        }
        list.add(advancePermModel);
    }

    /* renamed from: c */
    public synchronized void m11794c(AdvancePermModel advancePermModel) {
        if (advancePermModel != null) {
            if (!TextUtils.isEmpty(advancePermModel.packageName)) {
                m11797b(advancePermModel);
                m11800a(advancePermModel);
            }
        }
    }

    /* renamed from: q */
    public synchronized AdvancePermModel m11786q(String str, int i) {
        AdvancePermModel advancePermModel;
        if (!TextUtils.isEmpty(str)) {
            Iterator<AdvancePermModel> it = this.apc.get(str).iterator();
            while (true) {
                if (!it.hasNext()) {
                    advancePermModel = null;
                    break;
                }
                advancePermModel = it.next();
                if (i == advancePermModel.type) {
                    break;
                }
            }
        } else {
            advancePermModel = null;
        }
        return advancePermModel;
    }

    /* renamed from: fN */
    public synchronized List<AdvancePermModel> m11788fN(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        List<AdvancePermModel> list = this.apc.get(str);
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    /* renamed from: wI */
    public synchronized Map<Integer, List<AdvancePermModel>> m11785wI() {
        HashMap hashMap;
        hashMap = new HashMap();
        hashMap.putAll(this.apd);
        return hashMap;
    }

    /* renamed from: wJ */
    public synchronized Map<String, List<AdvancePermModel>> m11784wJ() {
        HashMap hashMap;
        hashMap = new HashMap();
        hashMap.putAll(this.apc);
        return hashMap;
    }

    /* renamed from: wK */
    public synchronized int m11783wK() {
        return C3942yy.m1349e(this.apc) ? 0 : this.apc.values().size();
    }

    /* renamed from: c */
    public void m11795c(IPermChangedListener iPermChangedListener) {
        this.ape.register(iPermChangedListener);
    }

    /* renamed from: d */
    public void m11792d(IPermChangedListener iPermChangedListener) {
        this.ape.unregister(iPermChangedListener);
    }

    /* renamed from: x */
    public void m11776x(String str, boolean z) {
        AutoStartAppItemInfo autoStartAppItemInfo;
        if (!TextUtils.isEmpty(str) && (autoStartAppItemInfo = this.apg.get(str)) != null) {
            this.apf.m6791a(autoStartAppItemInfo, z);
            this.apf.m6789b(new bjb.InterfaceC2371b() { // from class: com.kingroot.kinguser.ahf.4
                @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
                /* renamed from: a */
                public void mo6777a(int i, Object obj, int i2, int i3) {
                }

                @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
                /* renamed from: b */
                public void mo6764b(int i, Object obj, int i2, int i3) {
                    ahf.this.m11778wR();
                }
            });
        }
    }

    /* renamed from: h */
    public void m11787h(Map<String, Boolean> map) {
        if (!C3942yy.m1349e(map)) {
            for (String str : map.keySet()) {
                AutoStartAppItemInfo autoStartAppItemInfo = this.apg.get(str);
                if (autoStartAppItemInfo != null) {
                    this.apf.m6791a(autoStartAppItemInfo, map.get(str).booleanValue());
                }
            }
            this.apf.m6789b(new bjb.InterfaceC2371b() { // from class: com.kingroot.kinguser.ahf.5
                @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
                /* renamed from: a */
                public void mo6777a(int i, Object obj, int i2, int i3) {
                }

                @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
                /* renamed from: b */
                public void mo6764b(int i, Object obj, int i2, int i3) {
                    ahf.this.m11778wR();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wp */
    public void m11777wp() {
        synchronized (this.mBroadcastLock) {
            int beginBroadcast = this.ape.beginBroadcast();
            while (beginBroadcast > 0) {
                int i = beginBroadcast - 1;
                try {
                    this.ape.getBroadcastItem(i).onChanged();
                    beginBroadcast = i;
                } catch (RemoteException e) {
                    beginBroadcast = i;
                }
            }
            this.ape.finishBroadcast();
        }
    }
}
