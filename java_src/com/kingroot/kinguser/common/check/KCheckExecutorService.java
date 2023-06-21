package com.kingroot.kinguser.common.check;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.ajc;
import com.kingroot.kinguser.common.check.ICheckExecuteService;
import java.util.List;
/* loaded from: classes.dex */
public class KCheckExecutorService extends C3657tp {
    private static volatile CheckExecutorStub atJ = null;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
        atJ = new CheckExecutorStub();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return atJ;
    }

    /* renamed from: zk */
    public static ICheckExecuteService m4259zk() {
        if (atJ == null) {
            atJ = new CheckExecutorStub();
        }
        return atJ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CheckExecutorStub extends ICheckExecuteService.Stub {
        private CheckExecutorStub() {
        }

        @Override // com.kingroot.kinguser.common.check.ICheckExecuteService
        public void checkAsync(boolean z, boolean z2, ISuCheckListener iSuCheckListener) {
            ajc.m11481yX().checkAsync(z, z2, iSuCheckListener);
        }

        @Override // com.kingroot.kinguser.common.check.ICheckExecuteService
        public void delayCheckAgain() {
            ajc.m11481yX().delayCheckAgain();
        }

        @Override // com.kingroot.kinguser.common.check.ICheckExecuteService
        public boolean checkSync(boolean z, boolean z2, ISuCheckListener iSuCheckListener, List list) {
            return ajc.m11481yX().checkSync(z, z2, iSuCheckListener, list);
        }
    }
}
