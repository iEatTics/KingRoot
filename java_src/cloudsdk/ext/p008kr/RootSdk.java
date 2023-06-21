package cloudsdk.ext.p008kr;

import android.content.Context;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import cloudsdk.CloudSdk;
import cloudsdk.IActionResult;
import cloudsdk.ILoadResult;
import cloudsdk.IModule;
import cloudsdk.shell.IRootShell;
import java.util.ArrayList;
/* renamed from: cloudsdk.ext.kr.RootSdk */
/* loaded from: classes.dex */
public final class RootSdk implements RootConst {

    /* renamed from: P */
    private static RootSdk f143P;

    /* renamed from: Q */
    private RootInitConfig f144Q;

    /* renamed from: R */
    private IModule f145R;

    /* renamed from: S */
    private IRootShell f146S;

    /* renamed from: T */
    private HandlerThread f147T;

    /* renamed from: U */
    private RootHandler f148U;

    /* renamed from: V */
    private HandlerThread f149V;

    /* renamed from: W */
    private long f150W = 0;
    private Context mContext;

    private RootSdk() {
    }

    public static RootSdk getInstance() {
        if (f143P == null) {
            synchronized (RootSdk.class) {
                if (f143P == null) {
                    f143P = new RootSdk();
                }
            }
        }
        return f143P;
    }

    public final synchronized boolean loadRootEngine() {
        boolean z = true;
        synchronized (this) {
            if (this.f145R == null) {
                ILoadResult loadModule = CloudSdk.getInstance().loadModule(RootConst.MODULE_ROOT);
                if (loadModule.success()) {
                    IModule module = loadModule.getModule();
                    Bundle bundle = new Bundle();
                    bundle.putBoolean(RootConst.KEY_LOG_SWITCH_ON, this.f144Q.isLogSwitchOn());
                    bundle.putBoolean(RootConst.KEY_USE_TEST_SERVER, this.f144Q.isUseTestServer());
                    bundle.putInt(RootConst.KEY_KU_BUILD_NO, this.f144Q.getKinguserBuildNo());
                    bundle.putString(RootConst.KEY_CLIENT_CHANNEL, this.f144Q.getChannel());
                    bundle.putBoolean(RootConst.KEY_KR_WCA, this.f144Q.willKinguserSdkCleanApp());
                    bundle.putString(RootConst.KEY_KR_CLP, this.f144Q.getKinguserSdkCleanListPath());
                    if (module.execute(1, bundle).success()) {
                        this.f145R = module;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final synchronized IModule m13712c() {
        if (this.f145R == null) {
            loadRootEngine();
        }
        return this.f145R;
    }

    public final boolean initialize(Context context, RootInitConfig rootInitConfig, IRootShell iRootShell) {
        this.mContext = context.getApplicationContext();
        rootInitConfig.setWorkingDir(context.getDir("cloudsdk", 0).getAbsolutePath());
        this.f144Q = rootInitConfig;
        this.f146S = iRootShell;
        CloudSdk.getInstance().initialize(context, rootInitConfig);
        return true;
    }

    public final boolean hasUnFinishRootProcess() {
        int currStatus = RootDao.getInstance(this.mContext).getCurrStatus();
        return currStatus == 3 || currStatus == 2;
    }

    public final void dispatchRoot(int i, OnRootListener onRootListener, KrRootCallback krRootCallback) {
        if (this.f147T == null) {
            this.f147T = new HandlerThread("root-core");
            this.f147T.start();
            if (this.f149V == null) {
                this.f149V = new HandlerThread("root-progress");
                this.f149V.start();
            }
            this.f148U = new RootHandler(this.mContext, this.f147T.getLooper(), this.f149V.getLooper(), Looper.getMainLooper());
        }
        this.f148U.setOnRootListener(onRootListener, krRootCallback);
        switch (i) {
            case 0:
                this.f148U.sendEmptyMessage(1000);
                return;
            case 1:
                this.f148U.setCurrStatusForKr(3);
                this.f148U.sendEmptyMessage(1001);
                return;
            case 2:
                this.f148U.setCurrStatusForKr(2);
                this.f148U.sendEmptyMessage(1002);
                return;
            case 3:
                this.f148U.sendEmptyMessage(1003);
                return;
            default:
                throw new IllegalArgumentException("Not support clickWhich: " + i);
        }
    }

    public final int getCurrStatus() {
        if (this.f148U == null) {
            return -1;
        }
        return this.f148U.getCurrStatusForKr();
    }

    public final long getSubmitUserCount() {
        RootExtInfo mobileRootInfo;
        if (0 > 0 || this.f148U == null || (mobileRootInfo = this.f148U.getMobileRootInfo()) == null) {
            return 0L;
        }
        return mobileRootInfo.subitUsers;
    }

    public final int cleanRoot(ArrayList<String> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(RootConst.KEY_CLEAN_ROOT_CMD_LIST, arrayList);
        IModule m13712c = m13712c();
        if (m13712c == null) {
            return -1;
        }
        return m13712c.execute(4096, bundle).getErrorCode();
    }

    public final RootInitConfig getConfig() {
        return this.f144Q;
    }

    public final RootInfo checkCanRoot() {
        Bundle bundle = new Bundle();
        bundle.putInt(RootConst.KEY_ROOT_CHECK_CAN_ROOT, 1);
        IActionResult execute = m13712c().execute(2, bundle);
        RootInfo rootInfo = new RootInfo(execute.getResultCode(), execute.getErrorCode(), execute.getErrorMessage(), null);
        if (execute.success()) {
            Bundle reply = execute.getReply();
            rootInfo.setMobileRootInfo(RootExtInfo.valueOf(reply.getBundle(RootConst.KEY_MOBILE_ROOT_INFO)));
            rootInfo.setPcRootInfo(RootExtInfo.valueOf(reply.getBundle(RootConst.KEY_PC_ROOT_INFO)));
            rootInfo.setSolutionCount(reply.getInt("solutionCount", 0));
        }
        return rootInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final IRootShell m13711d() {
        return this.f146S;
    }
}
