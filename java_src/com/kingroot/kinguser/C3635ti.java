package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.common.framework.broadcast.IBroadCastService;
import com.kingroot.common.framework.broadcast.IBroadCastServiceCallback;
import com.kingroot.kinguser.C3635ti;
/* renamed from: com.kingroot.kinguser.ti */
/* loaded from: classes.dex */
public class C3635ti extends C3657tp {

    /* renamed from: Hg */
    private static IBinder f3563Hg;

    /* renamed from: Hf */
    private IBinder f3564Hf;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
        this.f3564Hf = new IBroadCastService.Stub() { // from class: com.kingroot.common.framework.broadcast.KBroadCastService$1
            @Override // com.kingroot.common.framework.broadcast.IBroadCastService
            public void registCallBack(IBinder iBinder) {
                IBinder unused = C3635ti.f3563Hg = iBinder;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return this.f3564Hf;
    }

    /* renamed from: jE */
    public static IBroadCastServiceCallback m2174jE() {
        if (f3563Hg == null || !f3563Hg.isBinderAlive()) {
            return null;
        }
        return IBroadCastServiceCallback.Stub.asInterface(f3563Hg);
    }
}
