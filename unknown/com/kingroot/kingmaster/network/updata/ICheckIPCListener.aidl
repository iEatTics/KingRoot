package com.kingroot.kingmaster.network.updata;
import  com.kingroot.kingmaster.network.updata.CheckResult;

interface ICheckIPCListener {

    oneway void onCheckStarted();

    oneway void onCheckEvent(int errCode);

    oneway void onCheckFinished(in CheckResult checkresult);
}

