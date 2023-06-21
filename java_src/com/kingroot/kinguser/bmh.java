package com.kingroot.kinguser;

import cloudsdk.ILoadResult;
import cloudsdk.IModule;
/* loaded from: classes.dex */
public final class bmh extends bmc implements ILoadResult {
    private IModule bBE;

    public bmh(int i, int i2, String str, IModule iModule) {
        super(i, i2, str, null);
        this.bBE = iModule;
    }

    @Override // cloudsdk.ILoadResult
    public final IModule getModule() {
        return this.bBE;
    }
}
