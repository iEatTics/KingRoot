package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import com.kingroot.kinguser.root.log.IRootMgrLogEngine;
import com.kingroot.kinguser.root.log.RootMgrLogService;
import com.kingroot.master.app.KUApplication;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bbq extends AbstractC3667tu<IRootMgrLogEngine> {
    private static volatile bbq bfD;

    bbq() {
    }

    /* renamed from: WA */
    public static bbq m7788WA() {
        if (bfD == null) {
            synchronized (bbq.class) {
                if (bfD == null) {
                    bfD = new bbq();
                }
            }
        }
        return bfD;
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: WB */
    public IRootMgrLogEngine mo2010jV() {
        return RootMgrLogService.m2429WC();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: n */
    public IRootMgrLogEngine mo2013d(IBinder iBinder) {
        return IRootMgrLogEngine.Stub.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KUApplication.m13453ge(), RootMgrLogService.class);
    }

    public List<RootMgrLogInfo> getLogs() {
        List<RootMgrLogInfo> logs;
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX == null) {
                logs = Collections.emptyList();
            } else {
                logs = jX.getLogs();
            }
            return logs;
        } catch (RemoteException e) {
            return Collections.emptyList();
        }
    }

    public void addLog(RootMgrLogInfo rootMgrLogInfo) {
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX != null) {
                jX.addLog(rootMgrLogInfo);
            }
        } catch (RemoteException e) {
        }
    }

    public void clearTimeOutLogs() {
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX != null) {
                jX.clearTimeOutLogs();
            }
        } catch (RemoteException e) {
        }
    }

    public int clearAllLogs() {
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX == null) {
                return 0;
            }
            return jX.clearAllLogs();
        } catch (RemoteException e) {
            return 0;
        }
    }

    public void addLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX != null) {
                jX.addLogsChangeListener(iLogsChangeListener);
            }
        } catch (RemoteException e) {
        }
    }

    public void removeLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX != null) {
                jX.removeLogsChangeListener(iLogsChangeListener);
            }
        } catch (RemoteException e) {
        }
    }

    public int getTodayRequestAppCount() {
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX == null) {
                return -1;
            }
            return jX.getTodayRequestAppCount();
        } catch (RemoteException e) {
            return -1;
        }
    }

    public List<String> getTodayRequestAllowAppList() {
        List<String> todayRequestAllowAppList;
        try {
            IRootMgrLogEngine jX = m2124jX();
            if (jX == null) {
                todayRequestAllowAppList = Collections.emptyList();
            } else {
                todayRequestAllowAppList = jX.getTodayRequestAllowAppList();
            }
            return todayRequestAllowAppList;
        } catch (RemoteException e) {
            return Collections.emptyList();
        }
    }
}
