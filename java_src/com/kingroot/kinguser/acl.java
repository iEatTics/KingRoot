package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.common.utils.system.root.service.IKRootCallBack;
import com.kingroot.common.utils.system.root.service.IKRootService;
import com.kingroot.common.utils.system.root.service.KRootService;
import com.kingroot.kinguser.cbw;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class acl extends AbstractC3667tu<IKRootService> implements cbw {
    private static final cce<acl> sInstance = new cce<acl>() { // from class: com.kingroot.kinguser.acl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: rK */
        public acl create() {
            return new acl();
        }
    };
    private final Map<cbw.InterfaceC2700a, IKRootCallBack> aaw = Collections.synchronizedMap(new HashMap());

    /* renamed from: rI */
    public static acl m12726rI() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: a */
    public void mo4997a(final cbw.InterfaceC2700a interfaceC2700a) {
        try {
            IKRootCallBack.Stub stub = new IKRootCallBack.Stub() { // from class: com.kingroot.common.utils.system.root.service.KRootServiceProxy$2
                @Override // com.kingroot.common.utils.system.root.service.IKRootCallBack
                public void onAppyResult(boolean z) {
                    interfaceC2700a.mo4994ad(z);
                }
            };
            IKRootService jX = m2124jX();
            if (jX != null) {
                jX.registerCallBack(stub);
                this.aaw.put(interfaceC2700a, stub);
            }
        } catch (RemoteException e) {
        }
    }

    @Override // com.kingroot.kinguser.cbw
    public void closeShell() {
        try {
            IKRootService jX = m2124jX();
            if (jX != null) {
                jX.closeShell();
            }
        } catch (RemoteException e) {
        }
    }

    @Override // com.kingroot.kinguser.cbw
    public boolean isRootPermition(boolean z) {
        try {
            IKRootService jX = m2124jX();
            if (jX == null) {
                return false;
            }
            return jX.isRootPermition(z);
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.kingroot.kinguser.cbw
    public boolean isRootPermitionInBackupSu() {
        try {
            IKRootService jX = m2124jX();
            if (jX == null) {
                return false;
            }
            return jX.isRootPermitionInBackupSu();
        } catch (RemoteException e) {
            return false;
        }
    }

    @Override // com.kingroot.kinguser.cbw
    public List<VTCmdResult> runRootCommands(List<String> list) {
        try {
            IKRootService jX = m2124jX();
            if (jX == null) {
                return null;
            }
            return jX.runRootCommands(list);
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: a */
    public VTCmdResult mo4998a(VTCommand vTCommand) {
        try {
            IKRootService jX = m2124jX();
            if (jX == null) {
                return null;
            }
            return jX.runRootCommandCustomTimeLimited(vTCommand.mCmdFlag, vTCommand.mCmdValue, vTCommand.mTimeout);
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: e */
    public List<VTCmdResult> mo4996e(List<String> list, boolean z) {
        try {
            IKRootService jX = m2124jX();
            if (jX == null) {
                return null;
            }
            return jX.runRootCommandsTimeOut(list, z);
        } catch (RemoteException e) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: q */
    public List<VTCmdResult> mo4995q(List<VTCommand> list) {
        List<VTCmdResult> runRootVTCommands;
        try {
            IKRootService jX = m2124jX();
            if (jX == null) {
                runRootVTCommands = Collections.emptyList();
            } else {
                runRootVTCommands = jX.runRootVTCommands(list);
            }
            return runRootVTCommands;
        } catch (RemoteException e) {
            return Collections.emptyList();
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: rJ */
    public IKRootService mo2010jV() {
        return KRootService.m13123rG();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: g */
    public IKRootService mo2013d(IBinder iBinder) {
        return IKRootService.Stub.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(C3636tj.m2169ge(), KRootService.class);
    }
}
