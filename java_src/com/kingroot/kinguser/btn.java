package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil;
/* loaded from: classes.dex */
public class btn implements ISharkUtil {
    private static btn bNi;
    private ISharkUtil bNj = null;

    private btn() {
    }

    public static btn ahZ() {
        if (bNi == null) {
            synchronized (btn.class) {
                if (bNi == null) {
                    bNi = new btn();
                }
            }
        }
        return bNi;
    }

    /* renamed from: a */
    public void m5534a(ISharkUtil iSharkUtil) {
        this.bNj = iSharkUtil;
    }

    @Override // com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil
    public String getGuid() {
        return this.bNj == null ? "" : this.bNj.getGuid();
    }

    @Override // com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil
    public void getGuidAsyn(ccg ccgVar) {
        if (this.bNj == null) {
            return;
        }
        this.bNj.getGuidAsyn(ccgVar);
    }

    @Override // com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil
    public void sendShark(int i, JceStruct jceStruct, JceStruct jceStruct2, cci cciVar) {
        if (this.bNj == null) {
            return;
        }
        this.bNj.sendShark(i, jceStruct, jceStruct2, cciVar);
    }
}
