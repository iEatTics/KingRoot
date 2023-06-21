package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bbp {
    private static volatile bbp bfp;
    private static final Object bfq = new Object();
    private boolean bfr;
    private aky bfs;
    private List<RootMgrLogInfo> bft;
    private int bfu;
    private RemoteCallbackList<ILogsChangeListener> bfv;
    private boolean bfk = false;
    private final Object mBroadcastLock = new Object();
    private bed bfw = new bed(bem.MEDIUM, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.bbp.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (bbp.this.m7792Wy()) {
                bbp.this.m7791Wz();
            }
        }
    });
    private int bfx = -1;
    private long bfy = -1;
    private final Object bfz = new Object();
    private final Object bfA = new Object();
    private final Object bfB = new Object();

    /* renamed from: Ww */
    public static bbp m7794Ww() {
        if (bfp == null) {
            synchronized (bbp.class) {
                if (bfp == null) {
                    bfp = new bbp();
                }
            }
        }
        return bfp;
    }

    private bbp() {
        aks m11143BP = aks.m11143BP();
        this.bfu = m11143BP.m11137BV();
        this.bfr = m11143BP.m11139BT();
        this.bfs = new aky();
        synchronized (bfq) {
            this.bft = this.bfs.getLogs();
        }
        this.bfv = new RemoteCallbackList<>();
    }

    public List<RootMgrLogInfo> getLogs() {
        ArrayList arrayList = new ArrayList();
        synchronized (bfq) {
            for (RootMgrLogInfo rootMgrLogInfo : this.bft) {
                if (rootMgrLogInfo != null) {
                    arrayList.add(rootMgrLogInfo);
                    this.bfk = true;
                }
            }
        }
        return arrayList;
    }

    public void addLog(RootMgrLogInfo rootMgrLogInfo) {
        if (this.bfr) {
            synchronized (bfq) {
                try {
                    long m10673a = this.bfs.m10673a(rootMgrLogInfo);
                    if (m10673a >= 0) {
                        rootMgrLogInfo.m3044bX(m10673a);
                    }
                    this.bft.add(rootMgrLogInfo);
                    synchronized (this.bfz) {
                        if (this.bfx == -1) {
                            this.bfx = 1;
                        } else {
                            this.bfx++;
                        }
                    }
                    m7793Wx();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                m7791Wz();
            }
        }
    }

    /* renamed from: Wx */
    private void m7793Wx() {
        synchronized (bfq) {
            for (int size = this.bft.size() - 1; size >= this.bfu; size--) {
                this.bfs.m10672b(this.bft.get(size));
                this.bft.remove(size);
            }
        }
    }

    public void clearTimeOutLogs() {
        synchronized (bfq) {
            if (this.bfr && this.bft.size() > 0) {
                beg.m7461Zj().m7450c(this.bfw);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Wy */
    public boolean m7792Wy() {
        long j;
        boolean z;
        boolean z2;
        Date date = new Date();
        long time = new Date(date.getYear(), date.getMonth(), date.getDate()).getTime();
        int m11138BU = aks.m11143BP().m11138BU();
        if (m11138BU == 1) {
            j = time - 604800000;
        } else if (m11138BU == 0) {
            j = time - 86400000;
        } else {
            j = time - 2592000000L;
        }
        long currentTimeMillis = BuglyBroadcastRecevier.UPLOADLIMITED + System.currentTimeMillis();
        synchronized (bfq) {
            z = false;
            int size = this.bft.size() - 1;
            while (size >= 0) {
                RootMgrLogInfo rootMgrLogInfo = this.bft.get(size);
                if (rootMgrLogInfo.mTime > currentTimeMillis || rootMgrLogInfo.mTime < j) {
                    this.bfs.m10672b(rootMgrLogInfo);
                    this.bft.remove(size);
                    z2 = true;
                } else {
                    z2 = z;
                }
                size--;
                z = z2;
            }
        }
        return z;
    }

    public int clearAllLogs() {
        int m10674GI;
        synchronized (bfq) {
            m10674GI = this.bfs.m10674GI();
            this.bft.clear();
        }
        this.bfk = false;
        m7791Wz();
        return m10674GI;
    }

    public void setLogLimit(int i) {
        synchronized (bfq) {
            this.bfu = i;
            if (this.bfu < this.bft.size()) {
                m7793Wx();
                m7791Wz();
            }
        }
    }

    public void setLogAble(boolean z) {
        this.bfr = z;
        m7791Wz();
    }

    public void addLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
        this.bfv.register(iLogsChangeListener);
    }

    public void removeLogsChangeListener(ILogsChangeListener iLogsChangeListener) {
        this.bfv.unregister(iLogsChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Wz */
    public void m7791Wz() {
        synchronized (this.mBroadcastLock) {
            int beginBroadcast = this.bfv.beginBroadcast();
            while (beginBroadcast > 0) {
                int i = beginBroadcast - 1;
                try {
                    this.bfv.getBroadcastItem(i).onLogsChangeListener();
                    beginBroadcast = i;
                } catch (RemoteException e) {
                    beginBroadcast = i;
                }
            }
            this.bfv.finishBroadcast();
        }
    }

    public int getTodayRequestAppCount() {
        int i;
        synchronized (this.bfA) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            long timeInMillis = calendar.getTimeInMillis();
            if (this.bfy != -1 && timeInMillis != this.bfy) {
                this.bfx = -1;
            }
            this.bfy = timeInMillis;
            if (this.bfx == -1) {
                this.bfx = 0;
                Iterator<RootMgrLogInfo> it = bbo.m7795Wv().getLogs().iterator();
                while (it.hasNext()) {
                    if (it.next().mTime >= timeInMillis) {
                        synchronized (this.bfz) {
                            this.bfx++;
                        }
                    }
                }
            }
            i = this.bfx;
        }
        return i;
    }

    public List<String> getTodayRequestAllowAppList() {
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        synchronized (this.bfB) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            long timeInMillis = calendar.getTimeInMillis();
            for (RootMgrLogInfo rootMgrLogInfo : bbo.m7795Wv().getLogs()) {
                if (rootMgrLogInfo.mTime >= timeInMillis && rootMgrLogInfo.mState == 2) {
                    hashSet.add(rootMgrLogInfo.adZ);
                }
            }
        }
        arrayList.addAll(hashSet);
        return arrayList;
    }

    public boolean hasExistLogs() {
        return this.bfk;
    }
}
