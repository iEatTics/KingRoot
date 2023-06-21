package com.tencent.qqpimsdk.qqloginaar.shark;

import com.kingroot.kinguser.ccg;
import com.kingroot.kinguser.cci;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public interface ISharkUtil {
    String getGuid();

    void getGuidAsyn(ccg ccgVar);

    void sendShark(int i, JceStruct jceStruct, JceStruct jceStruct2, cci cciVar);
}
