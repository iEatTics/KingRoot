package com.kingroot.kinguser;

import com.kingroot.kingmaster.network.updata.CheckResult;
/* loaded from: classes.dex */
public interface aed {
    void onCheckEvent(int i);

    void onCheckFinished(CheckResult checkResult);

    void onCheckStarted();
}
