package com.kingroot.kinguser;

import cloudsdk.shell.IRootShell;
import cloudsdk.shell.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
/* loaded from: classes.dex */
public class bbw implements IRootShell {
    private static final cce<bbw> sInstance = new cce<bbw>() { // from class: com.kingroot.kinguser.bbw.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: WV */
        public bbw create() {
            return new bbw();
        }
    };

    /* renamed from: WU */
    public static bbw m7757WU() {
        return sInstance.get();
    }

    private bbw() {
    }

    @Override // cloudsdk.shell.IRootShell
    public boolean isRootPermition() {
        return abc.m12845qK().isRootPermition();
    }

    @Override // cloudsdk.shell.IRootShell
    public void closeShell() {
    }

    @Override // cloudsdk.shell.IRootShell
    public VTCmdResult runRootCommand(String str) {
        com.kingroot.common.utils.system.VTCmdResult m12846el = abc.m12845qK().m12846el(str);
        return new VTCmdResult(m12846el.mCmdFlag, m12846el.mExitValue, m12846el.mStdOut, m12846el.mStdErr);
    }

    @Override // cloudsdk.shell.IRootShell
    public VTCmdResult runRootCommand(String str, long j) {
        com.kingroot.common.utils.system.VTCmdResult mo4998a = abc.m12845qK().mo4998a(new VTCommand(str, str, j));
        return new VTCmdResult(mo4998a.mCmdFlag, mo4998a.mExitValue, mo4998a.mStdOut, mo4998a.mStdErr);
    }
}
