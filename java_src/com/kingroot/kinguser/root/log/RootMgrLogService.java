package com.kingroot.kinguser.root.log;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.bbp;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.IRootMgrLogEngine;
import java.util.List;
/* loaded from: classes.dex */
public class RootMgrLogService extends C3657tp {
    private static Stub bfE = new Stub();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
        bfE = new Stub();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        synchronized (Stub.class) {
            if (bfE == null) {
                synchronized (Stub.class) {
                    bfE = new Stub();
                }
            }
        }
        return bfE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: jR */
    public void mo2131jR() {
        super.mo2131jR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: WC */
    public static IRootMgrLogEngine m2429WC() {
        synchronized (Stub.class) {
            if (bfE == null) {
                synchronized (Stub.class) {
                    bfE = new Stub();
                }
            }
        }
        return bfE;
    }

    /* loaded from: classes.dex */
    static class Stub extends IRootMgrLogEngine.Stub {
        private Stub() {
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public void setLogLimit(int i) {
            bbp.m7794Ww().setLogLimit(i);
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public void setLogAble(boolean z) {
            bbp.m7794Ww().setLogAble(z);
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public void removeLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
            bbp.m7794Ww().removeLogsChangeListener(iLogsChangeListener);
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public int getTodayRequestAppCount() {
            return bbp.m7794Ww().getTodayRequestAppCount();
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public List<String> getTodayRequestAllowAppList() {
            return bbp.m7794Ww().getTodayRequestAllowAppList();
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public List<RootMgrLogInfo> getLogs() {
            return bbp.m7794Ww().getLogs();
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public void clearTimeOutLogs() {
            bbp.m7794Ww().clearTimeOutLogs();
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public int clearAllLogs() {
            return bbp.m7794Ww().clearAllLogs();
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public void addLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
            bbp.m7794Ww().addLogsChangeListener(iLogsChangeListener);
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public void addLog(RootMgrLogInfo rootMgrLogInfo) {
            bbp.m7794Ww().addLog(rootMgrLogInfo);
        }

        @Override // com.kingroot.kinguser.root.log.IRootMgrLogEngine
        public boolean hasExistLogs() {
            return bbp.m7794Ww().hasExistLogs();
        }
    }
}
