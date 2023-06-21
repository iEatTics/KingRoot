package com.kingroot.kinguser;

import com.king.uranus.daemon.CmdResult;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.kx */
/* loaded from: classes.dex */
public class C3263kx implements InterfaceC3148hd {
    private final String mCmdFlag;
    private final Integer mExitValue;
    private final String mStdErr;
    private final String mStdOut;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static List<InterfaceC3148hd> m3231o(List<CmdResult> list) {
        ArrayList arrayList = new ArrayList();
        for (CmdResult cmdResult : list) {
            arrayList.add(new C3263kx(cmdResult.mCmdFlag, cmdResult.mExitValue, cmdResult.mStdOut, cmdResult.mStdErr));
        }
        return arrayList;
    }

    private C3263kx(String str, Integer num, String str2, String str3) {
        this.mCmdFlag = str;
        this.mExitValue = num;
        this.mStdOut = str2;
        this.mStdErr = str3;
    }

    @Override // com.kingroot.kinguser.InterfaceC3148hd
    /* renamed from: aV */
    public String mo3233aV() {
        return this.mStdOut;
    }

    @Override // com.kingroot.kinguser.InterfaceC3148hd
    /* renamed from: aW */
    public int mo3232aW() {
        return this.mExitValue.intValue();
    }
}
