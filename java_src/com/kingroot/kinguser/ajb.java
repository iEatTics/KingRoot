package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.common.check.CommonFileCheckUnit;
import com.kingroot.kinguser.common.check.ICheckExecuteService;
import com.kingroot.kinguser.common.check.ISuCheckListener;
import com.kingroot.kinguser.common.check.KCheckExecutorService;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ajb extends AbstractC3667tu<ICheckExecuteService> implements aje {
    private static cce<ajb> sInstance = new cce<ajb>() { // from class: com.kingroot.kinguser.ajb.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: yW */
        public ajb create() {
            return new ajb();
        }
    };
    private final Object asX = new Object();

    /* renamed from: yT */
    public static ajb m11487yT() {
        return sInstance.get();
    }

    public void checkAsync(boolean z, boolean z2, ISuCheckListener iSuCheckListener) {
        ICheckExecuteService jX = m2124jX();
        if (jX != null) {
            try {
                jX.checkAsync(z, z2, iSuCheckListener);
            } catch (RemoteException e) {
            }
        }
    }

    public void delayCheckAgain() {
        ICheckExecuteService jX = m2124jX();
        if (jX != null) {
            try {
                jX.delayCheckAgain();
            } catch (RemoteException e) {
            }
        }
    }

    public boolean checkSync(boolean z, boolean z2, ISuCheckListener iSuCheckListener, List<ajf> list) {
        synchronized (this.asX) {
            ICheckExecuteService jX = m2124jX();
            if (jX == null) {
                return false;
            }
            try {
                return jX.checkSync(z, z2, iSuCheckListener, list);
            } catch (RemoteException e) {
                return false;
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KApplication.m13453ge(), KCheckExecutorService.class);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: yU */
    public ICheckExecuteService mo2010jV() {
        return KCheckExecutorService.m4259zk();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: k */
    public ICheckExecuteService mo2013d(IBinder iBinder) {
        return ICheckExecuteService.Stub.asInterface(iBinder);
    }

    /* renamed from: yV */
    public static List<ajf> m11485yV() {
        ArrayList arrayList = new ArrayList();
        String m11467zl = ajj.m11467zl();
        if (m11467zl != null) {
            if (!abf.m12838qP()) {
                arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, 3565, -1, -1, 2, true, false, "u:object_r:system_file:s0", m11467zl, abu.f1378ZV)));
            }
            arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, 3565, -1, -1, 2, true, false, "u:object_r:system_file:s0", m11467zl, abu.f1379ZW)));
        }
        return arrayList;
    }
}
