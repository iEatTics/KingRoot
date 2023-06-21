package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
/* loaded from: classes.dex */
public class atg extends aou {
    private static final cce<atg> sInstance = new cce<atg>() { // from class: com.kingroot.kinguser.atg.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: OY */
        public atg create() {
            return new atg();
        }
    };

    /* renamed from: OX */
    public static atg m9289OX() {
        return sInstance.get();
    }

    private atg() {
    }

    @Override // com.kingroot.kinguser.aou
    /* renamed from: IK */
    public Class<? extends aov> mo7990IK() {
        return C1518a.class;
    }

    /* renamed from: com.kingroot.kinguser.atg$a */
    /* loaded from: classes.dex */
    public static class C1518a extends aov {
        @Override // com.kingroot.kinguser.aov
        /* renamed from: IN */
        protected AppDownloadClient mo7983IN() {
            return ath.m9287OZ();
        }

        @Override // com.kingroot.kinguser.aov, com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            super.mo1957a(i, argsPack, ipcResult);
            switch (i) {
                case 101:
                    ath.m9287OZ().m9285a((AppDownloadRequest) argsPack.next(), ((Integer) argsPack.next()).intValue(), IAppDownloadListener.Stub.asInterface((IBinder) argsPack.next()), ((Boolean) argsPack.next()).booleanValue(), IAppInstallListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                default:
                    return;
            }
        }
    }
}
