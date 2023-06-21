package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.kingroot.kinguser.advance.manager.IPermChangedListener;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.advance.model.SilentInstallPermInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class agz {
    private static cce<agz> sInstance = new cce<agz>() { // from class: com.kingroot.kinguser.agz.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wr */
        public agz create() {
            return new agz();
        }
    };
    private RemoteCallbackList<IPermChangedListener> anp;
    private RemoteCallbackList<ILogsChangeListener> anq;
    private final Object anr;
    private final Object ans;

    /* renamed from: ah */
    public List<SilentInstallLogInfo> m11860ah(long j) {
        List<SilentInstallLogInfo> m11844ws = aha.m11844ws();
        ArrayList arrayList = new ArrayList();
        if (C3942yy.m1352c(m11844ws)) {
            return arrayList;
        }
        for (SilentInstallLogInfo silentInstallLogInfo : m11844ws) {
            if (j <= 0 || !adk.m12539b(silentInstallLogInfo.mTime, System.currentTimeMillis(), j)) {
                arrayList.add(silentInstallLogInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: fH */
    public List<SilentInstallLogInfo> m11853fH(String str) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (SilentInstallLogInfo silentInstallLogInfo : aha.getAllLogs()) {
            if (str.equals(silentInstallLogInfo.apJ)) {
                arrayList.add(silentInstallLogInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: wl */
    public void m11852wl() {
        aha.m11843wt();
        m11848wq();
    }

    /* renamed from: d */
    public void m11856d(String str, int i, long j) {
        ahb.m11841b(str, i, System.currentTimeMillis(), j);
        m11849wp();
    }

    /* renamed from: a */
    public void m11861a(List<String> list, int i, long j) {
        for (String str : list) {
            m11856d(str, i, j);
        }
    }

    /* renamed from: ai */
    public Map<String, List<SilentInstallLogInfo>> m11859ai(long j) {
        HashMap hashMap = new HashMap();
        for (SilentInstallLogInfo silentInstallLogInfo : aha.m11844ws()) {
            if (j == 0 || !acu.m12573b(silentInstallLogInfo.mTime, System.currentTimeMillis(), j)) {
                String str = silentInstallLogInfo.anE;
                List list = (List) hashMap.get(str);
                if (C3942yy.m1352c(list)) {
                    list = new ArrayList();
                    hashMap.put(str, list);
                }
                list.add(silentInstallLogInfo);
            }
        }
        return hashMap;
    }

    private agz() {
        this.anp = new RemoteCallbackList<>();
        this.anq = new RemoteCallbackList<>();
        this.anr = new Object();
        this.ans = new Object();
    }

    /* renamed from: wn */
    public static agz m11851wn() {
        return sInstance.get();
    }

    /* renamed from: fG */
    public SilentInstallPermInfo m11854fG(String str) {
        HashMap<String, SilentInstallPermInfo> m11837wu = ahb.m11837wu();
        if (C3942yy.m1349e(m11837wu)) {
            return null;
        }
        SilentInstallPermInfo silentInstallPermInfo = m11837wu.get(str);
        if (silentInstallPermInfo != null && silentInstallPermInfo.mDuration > 0 && adk.m12539b(silentInstallPermInfo.apN, System.currentTimeMillis(), silentInstallPermInfo.mDuration)) {
            ahb.m11839fI(silentInstallPermInfo.mPackageName);
            return null;
        }
        return silentInstallPermInfo;
    }

    /* renamed from: dj */
    public Map<String, SilentInstallPermInfo> m11855dj(int i) {
        HashMap<String, SilentInstallPermInfo> m11840dk = ahb.m11840dk(i);
        Iterator<SilentInstallPermInfo> it = m11840dk.values().iterator();
        final ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            SilentInstallPermInfo next = it.next();
            if (next != null && next.mDuration > 0 && adk.m12539b(next.apN, System.currentTimeMillis(), next.mDuration)) {
                arrayList.add(next.mPackageName);
                it.remove();
            }
        }
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.agz.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                for (String str : arrayList) {
                    ahb.m11839fI(str);
                }
            }
        }));
        return m11840dk;
    }

    /* renamed from: wo */
    public Map<String, SilentInstallPermInfo> m11850wo() {
        return ahb.m11837wu();
    }

    /* renamed from: a */
    public void m11863a(SilentInstallLogInfo silentInstallLogInfo) {
        if (silentInstallLogInfo != null) {
            aha.m11846b(silentInstallLogInfo);
            m11848wq();
        }
    }

    /* renamed from: a */
    public void m11864a(IPermChangedListener iPermChangedListener) {
        this.anp.register(iPermChangedListener);
    }

    /* renamed from: b */
    public void m11858b(IPermChangedListener iPermChangedListener) {
        this.anp.unregister(iPermChangedListener);
    }

    /* renamed from: a */
    public void m11862a(ILogsChangeListener iLogsChangeListener) {
        this.anq.register(iLogsChangeListener);
    }

    /* renamed from: b */
    public void m11857b(ILogsChangeListener iLogsChangeListener) {
        this.anq.unregister(iLogsChangeListener);
    }

    /* renamed from: wp */
    private void m11849wp() {
        synchronized (this.anr) {
            int beginBroadcast = this.anp.beginBroadcast();
            while (beginBroadcast > 0) {
                int i = beginBroadcast - 1;
                try {
                    this.anp.getBroadcastItem(i).onChanged();
                    beginBroadcast = i;
                } catch (RemoteException e) {
                    beginBroadcast = i;
                }
            }
            this.anp.finishBroadcast();
        }
    }

    /* renamed from: wq */
    private void m11848wq() {
        synchronized (this.ans) {
            int beginBroadcast = this.anq.beginBroadcast();
            while (beginBroadcast > 0) {
                int i = beginBroadcast - 1;
                try {
                    this.anq.getBroadcastItem(i).onLogsChangeListener();
                    beginBroadcast = i;
                } catch (RemoteException e) {
                    beginBroadcast = i;
                }
            }
            this.anq.finishBroadcast();
        }
    }
}
