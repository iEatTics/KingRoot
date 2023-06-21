package com.kingroot.common.utils.system.root.handler.qqsecurityservice;

import android.os.IInterface;
/* loaded from: classes.dex */
public interface IRootService extends IInterface {
    public static final String INTERFACE = "com.tencent.tmsecurelite.IRootService";
    public static final int T_checkVersion = 2;
    public static final int T_sharedRootRunCmd = 1;
    public static final int VERSION = 1;

    boolean checkVersion(int i);

    void shareRootRunCmd(String str);
}
