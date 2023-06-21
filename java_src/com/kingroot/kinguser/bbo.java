package com.kingroot.kinguser;

import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class bbo {
    private static volatile bbo bfj;
    private boolean bfk = false;
    private ExecutorService bfl = Executors.newSingleThreadExecutor(new ThreadFactoryC3836wj("addLogThreadPool"));

    /* renamed from: Wv */
    public static bbo m7795Wv() {
        if (bfj == null) {
            synchronized (bbp.class) {
                if (bfj == null) {
                    bfj = new bbo();
                }
            }
        }
        return bfj;
    }

    public List<RootMgrLogInfo> getLogs() {
        return bbq.m7788WA().getLogs();
    }

    public void addLog(final RootMgrLogInfo rootMgrLogInfo) {
        this.bfl.execute(new Runnable() { // from class: com.kingroot.kinguser.bbo.1
            @Override // java.lang.Runnable
            public void run() {
                bbq.m7788WA().addLog(rootMgrLogInfo);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.kingroot.kinguser.bbo$2] */
    public void clearTimeOutLogs() {
        new Thread() { // from class: com.kingroot.kinguser.bbo.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                bbq.m7788WA().clearTimeOutLogs();
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.kingroot.kinguser.bbo$3] */
    public int clearAllLogs() {
        new Thread() { // from class: com.kingroot.kinguser.bbo.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                bbq.m7788WA().clearAllLogs();
            }
        }.start();
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.kingroot.kinguser.bbo$4] */
    public void addLogsChangeListener(final ILogsChangeListener iLogsChangeListener) {
        new Thread() { // from class: com.kingroot.kinguser.bbo.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                bbq.m7788WA().addLogsChangeListener(iLogsChangeListener);
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.kingroot.kinguser.bbo$5] */
    public void removeLogsChangeListener(final ILogsChangeListener iLogsChangeListener) {
        new Thread() { // from class: com.kingroot.kinguser.bbo.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                bbq.m7788WA().removeLogsChangeListener(iLogsChangeListener);
            }
        }.start();
    }

    public int getTodayRequestAppCount() {
        return bbq.m7788WA().getTodayRequestAppCount();
    }

    public List<String> getTodayRequestAllowAppList() {
        return bbq.m7788WA().getTodayRequestAllowAppList();
    }
}
