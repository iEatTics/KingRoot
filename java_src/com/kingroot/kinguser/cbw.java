package com.kingroot.kinguser;

import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import java.util.List;
/* loaded from: classes.dex */
public interface cbw {

    /* renamed from: com.kingroot.kinguser.cbw$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2700a {
        /* renamed from: ad */
        void mo4994ad(boolean z);
    }

    /* renamed from: a */
    VTCmdResult mo4998a(VTCommand vTCommand);

    /* renamed from: a */
    void mo4997a(InterfaceC2700a interfaceC2700a);

    void closeShell();

    /* renamed from: e */
    List<VTCmdResult> mo4996e(List<String> list, boolean z);

    boolean isRootPermition(boolean z);

    boolean isRootPermitionInBackupSu();

    /* renamed from: q */
    List<VTCmdResult> mo4995q(List<VTCommand> list);

    List<VTCmdResult> runRootCommands(List<String> list);
}
