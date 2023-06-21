package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ayj implements ISharkUtil {
    @Override // com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil
    public void sendShark(int i, JceStruct jceStruct, JceStruct jceStruct2, final cci cciVar) {
        awn.m8629Ta().m8628a(i, jceStruct, jceStruct2, new cat() { // from class: com.kingroot.kinguser.ayj.1
            @Override // com.kingroot.kinguser.cat
            /* renamed from: a */
            public void mo2689a(int i2, int i3, int i4, int i5, JceStruct jceStruct3) {
                cciVar.mo457a(i2, i3, i4, i5, jceStruct3);
            }
        });
    }

    @Override // com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil
    public String getGuid() {
        try {
            return C3736ux.m1945kT().getSharkGuid();
        } catch (abn e) {
            return "";
        }
    }

    @Override // com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil
    public void getGuidAsyn(final ccg ccgVar) {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.ayj.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (ccgVar != null) {
                    ccgVar.m4963T(0, ayj.this.getGuid());
                }
            }
        }));
    }
}
