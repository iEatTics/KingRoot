package com.kingroot.kinguser.advance.install.aidl;
import com.kingroot.kinguser.advance.install.aidl.CheckResult;

interface ICheckCallback {
   oneway void callback(in CheckResult result);
}
