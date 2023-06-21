package com.kingroot.common.utils.system.root.service;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.common.utils.system.root.service.IKRootService;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.acm;
import com.kingroot.kinguser.cbw;
import com.kingroot.kinguser.cce;
import java.util.List;
/* loaded from: classes.dex */
public class KRootService extends C3657tp {
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return KRootServiceImpl.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
    }

    /* renamed from: rG */
    public static KRootServiceImpl m13123rG() {
        return KRootServiceImpl.getInstance();
    }

    /* loaded from: classes.dex */
    public static class KRootServiceImpl extends IKRootService.Stub {
        private static final cce<KRootServiceImpl> sInstance = new cce<KRootServiceImpl>() { // from class: com.kingroot.common.utils.system.root.service.KRootService.KRootServiceImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: rH */
            public KRootServiceImpl create() {
                return new KRootServiceImpl();
            }
        };
        private final String TAG;
        private final Object mBroadcastLock;
        private final RemoteCallbackList<IKRootCallBack> mRootCallBackList;
        private cbw.InterfaceC2700a mRootResultCallBack;

        public static KRootServiceImpl getInstance() {
            return sInstance.get();
        }

        private KRootServiceImpl() {
            this.TAG = "common_RootService_KRootServiceImpl";
            this.mBroadcastLock = new Object();
            this.mRootCallBackList = new RemoteCallbackList<>();
            this.mRootResultCallBack = new cbw.InterfaceC2700a() { // from class: com.kingroot.common.utils.system.root.service.KRootService.KRootServiceImpl.1
                @Override // com.kingroot.kinguser.cbw.InterfaceC2700a
                /* renamed from: ad */
                public void mo4994ad(boolean z) {
                    synchronized (KRootServiceImpl.this.mBroadcastLock) {
                        int beginBroadcast = KRootServiceImpl.this.mRootCallBackList.beginBroadcast();
                        while (beginBroadcast > 0) {
                            int i = beginBroadcast - 1;
                            try {
                                ((IKRootCallBack) KRootServiceImpl.this.mRootCallBackList.getBroadcastItem(i)).onAppyResult(z);
                                beginBroadcast = i;
                            } catch (RemoteException e) {
                                beginBroadcast = i;
                            }
                        }
                        KRootServiceImpl.this.mRootCallBackList.finishBroadcast();
                    }
                }
            };
            acm.m12714rL().mo4997a(this.mRootResultCallBack);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public void registerRootHolder(String str) {
            acm.m12714rL().registerRootHolder(str);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public void registerCallBack(IKRootCallBack iKRootCallBack) {
            if (iKRootCallBack != null) {
                this.mRootCallBackList.register(iKRootCallBack);
            }
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public void unregisterCallBack(IKRootCallBack iKRootCallBack) {
            if (iKRootCallBack != null) {
                this.mRootCallBackList.unregister(iKRootCallBack);
            }
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public void closeShell() {
            acm.m12714rL().closeShell();
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public boolean isRootPermition(boolean z) {
            return acm.m12714rL().isRootPermition(z);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public boolean isRootPermitionInBackupSu() {
            return acm.m12714rL().isRootPermitionInBackupSu();
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public List<VTCmdResult> runRootCommands(List<String> list) {
            return acm.m12714rL().runRootCommands(list);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public List<VTCmdResult> runRootCommandsTimeOut(List<String> list, boolean z) {
            return acm.m12714rL().mo4996e(list, z);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public VTCmdResult runRootCommand(String str, String str2, boolean z) {
            return acm.m12714rL().runRootCommand(str, str2, z);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public List<VTCmdResult> runRootVTCommands(List<VTCommand> list) {
            return acm.m12714rL().mo4995q(list);
        }

        @Override // com.kingroot.common.utils.system.root.service.IKRootService
        public VTCmdResult runRootCommandCustomTimeLimited(String str, String str2, long j) {
            return acm.m12714rL().mo4998a(new VTCommand(str, str2, j));
        }
    }
}
