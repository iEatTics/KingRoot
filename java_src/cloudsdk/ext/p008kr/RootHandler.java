package cloudsdk.ext.p008kr;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cloudsdk.IActionResult;
import cloudsdk.ext.p008kr.ProgressHandler;
import cloudsdk.shell.IRootShell;
import cloudsdk.shell.VTCmdResult;
/* renamed from: cloudsdk.ext.kr.RootHandler */
/* loaded from: classes.dex */
public class RootHandler extends Handler implements RootConst {

    /* renamed from: D */
    private ProgressHandler f120D;

    /* renamed from: E */
    private UiHandler f121E;

    /* renamed from: F */
    private int f122F;

    /* renamed from: G */
    private KrRootCallback f123G;

    /* renamed from: H */
    private Handler.Callback f124H;
    private Context mContext;

    /* renamed from: s */
    private RootExtInfo f125s;

    /* renamed from: t */
    private RootExtInfo f126t;

    /* renamed from: a */
    static /* synthetic */ void m13720a(RootHandler rootHandler, ProgressHandler.EnumC0275a enumC0275a, int i) {
        rootHandler.f120D.resetData(false);
        rootHandler.f120D.setIntervalMode(enumC0275a);
        rootHandler.f120D.notifyProgressUpdate();
        if (i == 2) {
            IActionResult execute = RootSdk.getInstance().m13712c().execute(8, null);
            if (execute.success() ? execute.getReply().getBoolean(RootConst.KEY_CLIENT_ROOT_SUC, false) : false) {
                rootHandler.f123G.verifyClientRootSuc(0);
                rootHandler.f120D.setRootState(0);
                rootHandler.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f113w);
                RootDao.getInstance(rootHandler.mContext).setCurrStatus(0, -1);
                return;
            }
        }
        int m13723a = rootHandler.m13723a(i, false);
        if (i == 2 && m13723a <= 0 && rootHandler.f125s == null && rootHandler.f126t == null) {
            m13723a = rootHandler.m13723a(1, false);
        }
        if (m13723a > 0) {
            rootHandler.m13724a();
            return;
        }
        rootHandler.f120D.dismiss();
        if (m13723a != -1) {
            Bundle bundle = new Bundle();
            if (rootHandler.f125s != null) {
                bundle.putBundle(RootConst.KEY_MOBILE_ROOT_INFO, rootHandler.f125s.getBundle());
            }
            if (rootHandler.f126t != null) {
                bundle.putBundle(RootConst.KEY_PC_ROOT_INFO, rootHandler.f126t.getBundle());
            }
            Message message = new Message();
            message.what = RootConst.UI_ROOT_FAIL;
            message.setData(bundle);
            rootHandler.f121E.sendMessage(message);
            RootDao.getInstance(rootHandler.mContext).setCurrStatus(0, -1);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m13716b(RootHandler rootHandler) {
        rootHandler.f120D.resetData(true);
        rootHandler.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f111u);
        rootHandler.f120D.notifyProgressUpdate();
        rootHandler.f120D.setRootStep(0);
        Bundle bundle = new Bundle();
        bundle.putString(RootConst.KEY_BACKUP_ROOT_PATHS, RootSdk.getInstance().getConfig().getKdPath());
        bundle.putInt(RootConst.KEY_ROOT_EXECUTE_EXPLOIT, 2);
        if (!RootSdk.getInstance().m13712c().execute(128, bundle, rootHandler.f124H).success()) {
            rootHandler.m13717b(rootHandler.m13723a(1, false));
            return;
        }
        rootHandler.f123G.verifyClientRootSuc(0);
        rootHandler.f120D.setRootState(0);
        rootHandler.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f113w);
        RootDao.getInstance(rootHandler.mContext).setCurrStatus(0, -1);
    }

    /* renamed from: d */
    static /* synthetic */ void m13714d(RootHandler rootHandler) {
        if (RootDao.getInstance(rootHandler.mContext).getPrevStatus() == 3) {
            rootHandler.f120D.resetData(true);
            rootHandler.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f111u);
            rootHandler.f120D.notifyProgressUpdate();
            rootHandler.f122F = 3;
            RootDao.getInstance(rootHandler.mContext).setCurrStatus(3);
            rootHandler.m13717b(rootHandler.m13723a(1, false));
            return;
        }
        rootHandler.f120D.resetData(true);
        rootHandler.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f112v);
        rootHandler.f120D.notifyProgressUpdate();
        rootHandler.f122F = 2;
        RootDao.getInstance(rootHandler.mContext).setCurrStatus(2);
        rootHandler.m13718b();
    }

    public RootHandler(Context context, Looper looper, Looper looper2, Looper looper3) {
        super(looper);
        this.f122F = -1;
        this.f124H = new Handler.Callback(this) { // from class: cloudsdk.ext.kr.RootHandler.6
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                IRootShell m13711d;
                Bundle data;
                VTCmdResult runRootCommand;
                if (message.what == 1 && (m13711d = RootSdk.getInstance().m13711d()) != null && m13711d.isRootPermition() && (data = message.getData()) != null) {
                    Bundle bundle = data.getBundle(RootConst.IN_PARAMS);
                    String string = bundle.getString(RootConst.KEY_VT_CMD_VALUE);
                    long j = bundle.getLong(RootConst.KEY_VT_TIMEOUT, 0L);
                    if (j == 0) {
                        runRootCommand = m13711d.runRootCommand(string);
                    } else {
                        runRootCommand = m13711d.runRootCommand(string, j);
                    }
                    Bundle bundle2 = data.getBundle(RootConst.OUT_PARAMS);
                    bundle2.putBoolean(RootConst.KEY_VT_SUCCESS, runRootCommand.success());
                    bundle2.putInt(RootConst.KEY_VT_EXIT_VALUE, runRootCommand.mExitValue.intValue());
                    bundle2.putString(RootConst.KEY_VT_STD_OUT, runRootCommand.mStdOut);
                    bundle2.putString(RootConst.KEY_VT_STD_ERR, runRootCommand.mStdErr);
                    bundle2.putString(RootConst.KEY_VT_CMD_FLAG, runRootCommand.mCmdFlag);
                    return runRootCommand.success();
                }
                return false;
            }
        };
        this.mContext = context;
        this.f121E = new UiHandler(context, looper3);
        this.f120D = new ProgressHandler(context, looper2, this.f121E);
    }

    public void setOnRootListener(OnRootListener onRootListener, KrRootCallback krRootCallback) {
        this.f121E.setOnRootListener(onRootListener);
        this.f123G = krRootCallback;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            switch (message.what) {
                case 1000:
                    int currStatus = RootDao.getInstance(this.mContext).getCurrStatus();
                    RootDao.getInstance(this.mContext).getSolutionIndex();
                    final int i = RootDao.getInstance(this.mContext).getToSettingNetwork() ? 1 : 2;
                    RootDao.getInstance(this.mContext).setToSettingNetwork(false);
                    switch (currStatus) {
                        case 0:
                        case 1:
                            this.f122F = 3;
                            RootDao.getInstance(this.mContext).setCurrStatus(1, -1);
                            m13723a(1, true);
                            break;
                        case 2:
                            m13719a(new Runnable() { // from class: cloudsdk.ext.kr.RootHandler.5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RootHandler.this.f122F = 1002;
                                    RootDao.getInstance(RootHandler.this.mContext).setCurrStatus(2);
                                    RootHandler.m13720a(RootHandler.this, ProgressHandler.EnumC0275a.f112v, i);
                                }
                            });
                            break;
                        case 3:
                            m13719a(new Runnable() { // from class: cloudsdk.ext.kr.RootHandler.4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    RootHandler.this.f122F = 3;
                                    RootDao.getInstance(RootHandler.this.mContext).setCurrStatus(3);
                                    RootHandler.m13720a(RootHandler.this, ProgressHandler.EnumC0275a.f111u, i);
                                }
                            });
                            break;
                        default:
                            this.f122F = 3;
                            RootDao.getInstance(this.mContext).setCurrStatus(1, -1);
                            m13723a(1, true);
                            break;
                    }
                case 1001:
                    m13719a(new Runnable() { // from class: cloudsdk.ext.kr.RootHandler.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            RootHandler.this.f122F = 3;
                            RootDao.getInstance(RootHandler.this.mContext).setCurrStatus(3);
                            RootHandler.m13716b(RootHandler.this);
                        }
                    });
                    break;
                case 1002:
                    m13719a(new Runnable() { // from class: cloudsdk.ext.kr.RootHandler.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            RootHandler.this.f122F = 2;
                            RootDao.getInstance(RootHandler.this.mContext).setCurrStatus(2);
                            RootHandler.this.m13718b();
                        }
                    });
                    break;
                case 1003:
                    m13719a(new Runnable() { // from class: cloudsdk.ext.kr.RootHandler.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            RootHandler.m13714d(RootHandler.this);
                        }
                    });
                    break;
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private int m13723a(int i, boolean z) {
        if (z) {
            this.f121E.sendEmptyMessage(RootConst.UI_CHECK_ROOT);
        }
        Bundle bundle = new Bundle();
        bundle.putInt(RootConst.KEY_ROOT_CHECK_CAN_ROOT, i);
        IActionResult execute = RootSdk.getInstance().m13712c().execute(2, bundle);
        if (execute.success()) {
            Bundle reply = execute.getReply();
            this.f125s = RootExtInfo.valueOf(reply.getBundle(RootConst.KEY_MOBILE_ROOT_INFO));
            this.f126t = RootExtInfo.valueOf(reply.getBundle(RootConst.KEY_PC_ROOT_INFO));
            int i2 = reply.getInt("solutionCount", 0);
            this.f120D.setRootInfo(this.f125s, this.f126t);
            long j = 0;
            if (this.f125s != null) {
                j = this.f125s.useTime * 1000;
            }
            this.f120D.setAvgTime(j);
            if (z) {
                Message message = new Message();
                message.what = RootConst.UI_CHECK_ROOT_FINISH;
                message.setData(reply);
                this.f121E.sendMessage(message);
            }
            return i2;
        }
        if (execute.getErrorCode() == 4004) {
            RootDao.getInstance(this.mContext).setToSettingNetwork(true);
            this.f121E.sendEmptyMessage(RootConst.UI_SETTING_NETWORK);
        } else {
            RootDao.getInstance(this.mContext).setToSettingNetwork(true);
            this.f121E.sendEmptyMessage(RootConst.UI_SETTING_NETWORK);
        }
        return -1;
    }

    /* renamed from: a */
    private void m13719a(Runnable runnable) {
        try {
            if (this.f123G != null) {
                this.f123G.lockMainLifeLock(true, 360000L);
            }
            WakeLockMgr.lock(this.mContext);
            runnable.run();
        } finally {
            WakeLockMgr.release();
            if (this.f123G != null) {
                this.f123G.lockMainLifeLock(false, 0L);
            }
        }
    }

    /* renamed from: a */
    private void m13724a() {
        Handler.Callback callback = new Handler.Callback() { // from class: cloudsdk.ext.kr.RootHandler.7
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                Bundle data = message.getData();
                int i = data.getInt(RootConst.KEY_PROGRESS_ROOT_STEP);
                int i2 = data.getInt(RootConst.KEY_PROGRESS_IDX);
                int i3 = data.getInt(RootConst.KEY_PROGRESS_COUNT);
                data.getString(RootConst.KEY_PROGRESS_SID);
                RootHandler.this.f120D.setRootStep(i);
                RootHandler.this.f120D.setSolutionCount(i3);
                RootHandler.this.f120D.setSolutionIdx(i2);
                return true;
            }
        };
        IActionResult execute = RootSdk.getInstance().m13712c().execute(4, (Bundle) null, callback);
        if (execute.success()) {
            int i = execute.getReply().getInt("solutionCount", 0);
            this.f120D.setSolutionCount(i);
            if (i > 0) {
                Bundle bundle = new Bundle();
                bundle.putInt(RootConst.KEY_ROOT_EXECUTE_EXPLOIT, 2);
                IActionResult execute2 = RootSdk.getInstance().m13712c().execute(8, bundle, callback);
                Bundle reply = execute2.getReply();
                int i2 = (reply == null || reply.size() == 0) ? -1 : reply.getInt(RootConst.KEY_ROOT, -1);
                if (execute2.success()) {
                    this.f123G.verifyClientRootSuc(i2);
                    this.f120D.setRootState(i2);
                    this.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f113w);
                } else if (i2 == 1) {
                    this.f123G.verifyClientRootSuc(i2);
                    this.f120D.setRootState(i2);
                    this.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f113w);
                } else {
                    this.f120D.dismiss();
                    Bundle bundle2 = new Bundle();
                    bundle2.putBundle(RootConst.KEY_MOBILE_ROOT_INFO, this.f125s.getBundle());
                    bundle2.putBundle(RootConst.KEY_PC_ROOT_INFO, this.f126t.getBundle());
                    Message message = new Message();
                    message.what = RootConst.UI_ROOT_FAIL;
                    message.setData(bundle2);
                    this.f121E.sendMessage(message);
                }
            } else {
                this.f120D.dismiss();
                Bundle bundle3 = new Bundle();
                if (this.f125s != null) {
                    bundle3.putBundle(RootConst.KEY_MOBILE_ROOT_INFO, this.f125s.getBundle());
                }
                if (this.f126t != null) {
                    bundle3.putBundle(RootConst.KEY_PC_ROOT_INFO, this.f126t.getBundle());
                }
                Message message2 = new Message();
                message2.what = RootConst.UI_ROOT_FAIL;
                message2.setData(bundle3);
                this.f121E.sendMessage(message2);
            }
            RootDao.getInstance(this.mContext).setCurrStatus(0, -1);
            return;
        }
        this.f120D.dismiss();
        if (execute.getErrorCode() == 4004) {
            RootDao.getInstance(this.mContext).setToSettingNetwork(true);
            this.f121E.sendEmptyMessage(RootConst.UI_SETTING_NETWORK);
            return;
        }
        Bundle bundle4 = new Bundle();
        bundle4.putBundle(RootConst.KEY_MOBILE_ROOT_INFO, this.f125s.getBundle());
        bundle4.putBundle(RootConst.KEY_PC_ROOT_INFO, this.f126t.getBundle());
        Message message3 = new Message();
        message3.what = RootConst.UI_ROOT_FAIL;
        message3.setData(bundle4);
        this.f121E.sendMessage(message3);
        RootDao.getInstance(this.mContext).setCurrStatus(0, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m13718b() {
        this.f120D.resetData(true);
        this.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f112v);
        this.f120D.notifyProgressUpdate();
        this.f120D.setRootStep(0);
        String kdPath = RootSdk.getInstance().getConfig().getKdPath();
        Bundle bundle = new Bundle();
        bundle.putInt(RootConst.KEY_ROOT_EXECUTE_EXPLOIT, 2);
        bundle.putString(RootConst.KEY_BACKUP_ROOT_PATHS, kdPath);
        if (RootSdk.getInstance().m13712c().execute(128, bundle, this.f124H).success()) {
            this.f123G.verifyClientRootSuc(0);
            this.f120D.setRootState(0);
            this.f120D.setIntervalMode(ProgressHandler.EnumC0275a.f113w);
            RootDao.getInstance(this.mContext).setCurrStatus(0, -1);
            return;
        }
        m13717b(m13723a(1, false));
    }

    /* renamed from: b */
    private void m13717b(int i) {
        if (i > 0) {
            m13724a();
            return;
        }
        this.f120D.dismiss();
        if (i != -1) {
            Bundle bundle = new Bundle();
            bundle.putBundle(RootConst.KEY_MOBILE_ROOT_INFO, this.f125s.getBundle());
            bundle.putBundle(RootConst.KEY_PC_ROOT_INFO, this.f126t.getBundle());
            Message message = new Message();
            message.what = RootConst.UI_ROOT_FAIL;
            message.setData(bundle);
            this.f121E.sendMessage(message);
        }
        RootDao.getInstance(this.mContext).setCurrStatus(0, -1);
    }

    public void setCurrStatusForKr(int i) {
        this.f122F = i;
    }

    public int getCurrStatusForKr() {
        return this.f122F;
    }

    public RootExtInfo getMobileRootInfo() {
        return this.f125s;
    }
}
