package com.kingroot.kinguser.advance.install.aidl;
import com.kingroot.kinguser.advance.install.aidl.SilentInstallRequest;
import com.kingroot.kinguser.advance.install.aidl.CheckResult;
import com.kingroot.kinguser.advance.install.aidl.ICheckCallback;

interface ISilentInstallManager {
    oneway void check(in SilentInstallRequest req);
}
